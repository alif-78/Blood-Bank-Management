using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view
{
    public partial class ABnegative : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            ShowPatients();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowPatients()
        {
            string Query = "select  *from BloodInfoTb where BloodType='AB-ve'";
            string Query1 = "select  *from DonorTb where DonorBloodGroup='AB-ve'";
            ABnegativeInformation.DataSource = Con.getData(Query);
            ABnegativeInformation.DataBind();
            GridView7.DataSource = Con.getData(Query1);
            GridView7.DataBind();
        }
    }
}