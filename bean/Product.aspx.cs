using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace bean
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Prod_ID = Request.QueryString["Prod_ID"];
            string filename = Prod_ID + ".jpg";
            Prod_Image.ImageUrl = "../images" + filename;
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            decimal postagePackagingCost = 3.95m;
            decimal productPrice = 10.00m;
            string colorselected = DropDownList2.SelectedValue;
            int quantityOfProduct = int.Parse(DropDownList1.SelectedValue);
            decimal subTotal = (quantityOfProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;

            var config = ConfigManager.Instance.GetProperties();
            var accesstoken = new OAuthTokenCredential(config).GetAccessToken();
                var apiContext = new APIContext(accesstoken);

            var Prod_Item = new Item();
            Prod_Item.name = "Prod_ID";
            Prod_Item.currency = "BND";
            Prod_Item.price = productPrice.ToString();
            Prod_Item.sku = "PRO1";
            Prod_Item.quantity = quantityOfProduct.ToString();

            var detailsoftransaction = new Details();
            detailsoftransaction.tax = "0";
            detailsoftransaction.shipping = postagePackagingCost.ToString();
            detailsoftransaction.subtotal = subTotal.ToString("0.09");

            var amountoftransaction = new Amount();
            amountoftransaction.currency = "BND";
            amountoftransaction.total = total.ToString("0.00");
            amountoftransaction.details = detailsoftransaction;

            var transaction = new Transaction();
            transaction.description = "Product 1 description";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = amountoftransaction;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { Prod_Item }
            };
            var buyer = new Payer();
            buyer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "Cancel.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                buyer = buyer,
                transactions = new List<Transaction> { transaction},
                redirect_urls = redirectUrls
            });

        Session["paymentId"] = payment.id;
            foreach(var link in payment.links)
            {
            if(link.rel.ToLower().Trim().Equals("approval_url"))
        {
            Response.Redirect(link.href);
        }
                }
           
        