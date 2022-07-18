﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view
{
    
    public partial class Bpositive : System.Web.UI.Page
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
            string Query = "select  *from BloodInfoTb where BloodType='B+ve'";
            string Query1 = "select  *from DonorTb where DonorBloodGroup='B+ve'";
            BpositiveInformation.DataSource = Con.getData(Query);
            BpositiveInformation.DataBind();
            GridView3.DataSource = Con.getData(Query1);
            GridView3.DataBind();
        }
    }
}