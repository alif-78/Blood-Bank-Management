using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            ShowDonor();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowDonor()
        {
            string Query = "select  *from DonorTb";
            DonorGV.DataSource = Con.getData(Query);
            DonorGV.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (dName.Value == "" || dBloodgroup.Value == "" || dPhone.Value == "" || dAge.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string dTbname = dName.Value;
                    string dTbBloodgroup = dBloodgroup.Value;
                    string dTbphone = dPhone.Value;
                    string dTbAge = dAge.Value;
                    string dTbDate = dDate.Value;
                    

                    string Query = "insert into DonorTb values ('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, dTbname, dTbBloodgroup, dTbphone, dTbAge, dTbDate);
                    Con.SetData(Query);
                    ShowDonor();
                    ErrMsg.InnerText = "Donor Added!";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
        int Key = 0;
        protected void DonorGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            dName.Value = DonorGV.SelectedRow.Cells[2].Text;
            dBloodgroup.Value = DonorGV.SelectedRow.Cells[3].Text;
            dPhone.Value = DonorGV.SelectedRow.Cells[4].Text;
            dAge.Value = DonorGV.SelectedRow.Cells[5].Text;
            dDate.Value = DonorGV.SelectedRow.Cells[6].Text;
            if (dName.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt16(DonorGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (dName.Value == "" || dBloodgroup.Value == "" || dPhone.Value == "" || dAge.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string pTbname = dName.Value;


                    string Query = "delete from DonorTb  where DonorId={0}";
                    Query = string.Format(Query, DonorGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDonor();
                    ErrMsg.InnerText = "Donor Deleted";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (dName.Value == "" || dBloodgroup.Value == "" || dPhone.Value == "" || dAge.Value == "" || dDate.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string dTbname = dName.Value;
                    string dTbBloodgroup = dBloodgroup.Value;
                    string dTbphone = dPhone.Value;
                    string dTbAge = dAge.Value;
                    string dTbDate = dDate.Value;

                    string Query = "update DonorTb set  DonorName='{0}',DonorBloodGroup='{1}',DonorPhone='{2}',DonorAge='{3}',DonateDate='{4}' where DonorId={5}";
                    Query = string.Format(Query, dTbname, dTbBloodgroup, dTbphone, dTbAge, dTbDate,DonorGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDonor();
                    ErrMsg.InnerText = "Donor Updated!";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
    }
}