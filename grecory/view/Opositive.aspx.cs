﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view
{
    public partial class WebForm1 : System.Web.UI.Page
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
            string Query = "select  *from BloodInfoTb where BloodType='O+ve'";
            string Query1 = "select  *from DonorTb where DonorBloodGroup='O+ve'";
            PatientInformation.DataSource = Con.getData(Query);
            PatientInformation.DataBind();
            GridView1.DataSource = Con.getData(Query1);
            GridView1.DataBind();
        }
    }
}