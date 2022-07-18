using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view
{
    
    public partial class WebForm2 : System.Web.UI.Page
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
            string Query = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='O-ve'";
            string Query1 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='A-ve'";
            string Query2 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='B-ve' ";
            string Query3 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='AB-ve'";
            string Query4 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='A+ve'";
            string Query5 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='B+ve' ";
            string Query6 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='O+ve'";
            string Query7 = "select SUM(BloodQuantity) from BloodInfoTb where BloodType='AB+ve'";
   
            Otb.InnerText = Con.getData(Query).Rows[0][0].ToString();
            Otb.DataBind();
            H1.InnerText = Con.getData(Query4).Rows[0][0].ToString();
            H1.DataBind();
            H2.InnerText = Con.getData(Query5).Rows[0][0].ToString();
            H2.DataBind();
            H3.InnerText = Con.getData(Query6).Rows[0][0].ToString();
            H3.DataBind();
            H4.InnerText = Con.getData(Query7).Rows[0][0].ToString();
            H4.DataBind();
            H5.InnerText = Con.getData(Query1).Rows[0][0].ToString();
            H5.DataBind();
            H6.InnerText = Con.getData(Query2).Rows[0][0].ToString();
            H6.DataBind();
            H7.InnerText = Con.getData(Query3).Rows[0][0].ToString();
            H7.DataBind();



        }


    }
}