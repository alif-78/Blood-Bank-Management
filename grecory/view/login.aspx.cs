using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
             
        }
        public static string SName;
        int SKey;
        //Add this metthod
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        Models.Function Con;
        protected void logInBtn_Click(object sender, EventArgs e)
        {
            if(AdminRadio.Checked)
            {
                if(EmailId.Value=="Admin@gmail.com" && UserPasswordId.Value=="Admin")
                {
                    Response.Redirect("Admin/seller.aspx");
                }
                else
                {
                    infomsg.InnerText = "InValid Admin!!";
                }
            }
            


        }
    }
   
}