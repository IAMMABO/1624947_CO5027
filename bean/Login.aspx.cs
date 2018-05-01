using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin;
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

        protected void btnReg_Click(object sender, EventArgs e)
        {
            var identityDBContext = new IdentityDbContext("IdentityConnectionString");
            var rolestore = new RoleStore<IdentityRole>(identityDBContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);
            var userStore = new UserStore<IdentityUser>(identityDBContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole identityRole = new IdentityRole("Admin");
            rolemanager.Create(identityRole);

            var user = new IdentityUser()
            {
                UserName = txtname2.Text,
                PasswordHash= txtpass2.Text,
                Email = txtemail.Text
            };
            IdentityResult result = manager.Create(user, txtpass2.Text);
            if (result.Succeeded)
            {
                //todo: log them in
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                RegisterLiteral.Text = "Registration Successful";
            }
            else
            {
                RegisterLiteral.Text = "An error has occured" + result.Errors.FirstOrDefault();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            var IdentityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(IdentityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtname.Text, txtpass.Text);

            if(user != null)
            {
                userlogin(userManager, user);
                LoginLiteral.Text = "Login Successful!";

            }
            else
            {
                LoginLiteral.Text = "Invalid username or password!";
            }
        }

        private void userlogin(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var managerauthentication = HttpContext.Current.GetOwinContext().Authentication;
            var useridentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            managerauthentication.SignIn(new AuthenticationProperties() { }, useridentity);

            if (Request.QueryString["../Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Login.aspx"]);
            }
            else
            {
                String userroles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userroles.Equals("Admin"))
                {
                    if (userroles.Equals("Admin"))
                    {
                        Response.Redirect("../Admin/index.aspx");
                    }

                }

            }
        }

        protected void btnReset2_Click(object sender, EventArgs e)
        {
            txtname2.Text = " ";
            txtpass2.Text = " ";
            txtemail.Text = " ";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtname.Text = " ";
            txtpass.Text = " ";
        }
    }
}
