using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view.admin
{
    public partial class seller : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            ShowPatients();

        }
        //Add this metthod
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void ShowPatients()
        {
            string Query = "select  *from PatientTb";
            Patientinfo.DataSource = Con.getData(Query);
            Patientinfo.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(pName.Value=="" || pword.Value=="" || pEmail.Value=="" || pBloodgroup.Value=="" || pPhone.Value=="" || pAge.Value=="" || pRDate.Value=="" )
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string pTbname = pName.Value;
                    string pTbword = pword.Value;
                    string pTbEmail = pEmail.Value;
                    string pTbBloodGroup = pBloodgroup.Value;
                    string pTbphone = pPhone.Value;
                    string pTbAge = pAge.Value;
                    string pTbRdate = pRDate.Value;

                    string Query = "insert into PatientTb values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                    Query = string.Format(Query, pTbname, pTbEmail, pTbword, pTbBloodGroup, pTbphone, pTbAge, pTbRdate);
                    Con.SetData(Query);
                    ShowPatients();
                    ErrMsg.InnerText = "Patient Added!";

                }

            }
            catch(Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        int Key = 0;
        protected void Patientinfo_SelectedIndexChanged1(object sender, EventArgs e)
        {
            pName.Value = Patientinfo.SelectedRow.Cells[2].Text;
            pEmail.Value = Patientinfo.SelectedRow.Cells[3].Text;
            pword.Value = Patientinfo.SelectedRow.Cells[4].Text;
            pBloodgroup.Value = Patientinfo.SelectedRow.Cells[5].Text;
            pPhone.Value = Patientinfo.SelectedRow.Cells[6].Text;
            pAge.Value = Patientinfo.SelectedRow.Cells[7].Text;
            pRDate.Value = Patientinfo.SelectedRow.Cells[8].Text;
            if(pName.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt16(Patientinfo.SelectedRow.Cells[1].Text);
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (pName.Value == "" || pword.Value == "" || pEmail.Value == "" || pBloodgroup.Value == "" || pPhone.Value == "" || pAge.Value == "" || pRDate.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string pTbname = pName.Value;
                    string pTbword = pword.Value;
                    string pTbEmail = pEmail.Value;
                    string pTbBloodGroup = pBloodgroup.Value;
                    string pTbphone = pPhone.Value;
                    string pTbAge = pAge.Value;
                    string pTbRdate = pRDate.Value;

                    string Query = "update PatientTb set  PatientName='{0}',PatientEmail='{1}',PatientPassword='{2}',PatientBloodGroup='{3}',PatientPhone='{4}',PatientAge='{5}',ReceiveDate='{6}' where PatientId={7}";
                    Query = string.Format(Query, pTbname, pTbEmail, pTbword, pTbBloodGroup, pTbphone, pTbAge, pTbRdate, Patientinfo.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowPatients();
                    ErrMsg.InnerText = "Patient Updated!";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (pName.Value == "" || pword.Value == "" || pEmail.Value == "" || pBloodgroup.Value == "" || pPhone.Value == "" || pAge.Value == "" || pRDate.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string pTbname = pName.Value;
                    

                    string Query = "delete from PatientTb  where PatientId={0}";
                    Query = string.Format(Query, Patientinfo.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowPatients();
                    ErrMsg.InnerText = "Patient Deleted";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
    }
}