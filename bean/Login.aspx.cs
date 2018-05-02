using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace bean
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            var identityDBContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDBContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser()
            {
                UserName = TxtRegUser.Text,
            };
            var rolestore = new RoleStore<IdentityRole>(identityDBContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);


            IdentityRole adminRole = new IdentityRole("Admin");
            rolemanager.Create(adminRole);


            IdentityResult result = manager.Create(user, TxtRegPassword.Text);
            if (result.Succeeded)
            {
                //todo: log them in
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                LitRegMsg.Text = "Registration Successful";
            }
            else
            {
                LitRegMsg.Text = "An error has occured" + result.Errors.FirstOrDefault();
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtRegUser.Text = " ";
            TxtRegPassword.Text = " ";
            TxtRegConfirmPass.Text = " ";
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var IdentityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(IdentityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(TxtLoginUser.Text, TxtLoginPass.Text);

            if (user != null)
            {
                Userlogin(userManager, user);
                LitLoginMsg.Text = "Login Successful!";

            }
            else
            {
                LitLoginMsg.Text = "Invalid username or password!";
            }
        }
        private void Userlogin(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var managerauthentication = HttpContext.Current.GetOwinContext().Authentication;
            var useridentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            managerauthentication.SignIn(new AuthenticationProperties() { }, useridentity);

            if (Request.QueryString["~/Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Login.aspx"]);
            }
            else
            {
                String userroles = usermanager.GetRoles(user.Id).FirstOrDefault();
               
                    if (userroles.Equals("Admin"))
                    {
                        Response.Redirect("~/Admin/index.aspx");
                    }

                }

            }

        protected void BtnReset2_Click(object sender, EventArgs e)
        {
            TxtLoginUser.Text = " ";
            TxtLoginPass.Text = " ";
        }

       
    }
}