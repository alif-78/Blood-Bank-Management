using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grecory.view.admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            ShowBlood();


        }
        //Add this metthod
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowBlood()
        {
            string Query = "select  *from BloodInfoTb";
            BloodGV.DataSource = Con.getData(Query);
            BloodGV.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (bType.Value == "" ||bQuantity.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string bTbtype = bType.Value;
                    string bTbQuantity = bQuantity.Value;
 

                    string Query = "insert into BloodInfoTb values ('{0}','{1}')";
                    Query = string.Format(Query, bTbtype, bTbQuantity);
                    Con.SetData(Query);
                    ShowBlood();
                    ErrMsg.InnerText = "Blood Added!";

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
                if (bType.Value == "" )
                {
                    ErrMsg.InnerText = "Missing Data";
                    
                }
                else
                {
                    string pTbname =bType.Value;


                    string Query = "delete from BloodInfoTb  where BloodId={0}";
                    Query = string.Format(Query, BloodGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowBlood();
                    ErrMsg.InnerText = "Patient Deleted";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void BloodGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            bType.Value = BloodGV.SelectedRow.Cells[2].Text;
            bQuantity.Value = BloodGV.SelectedRow.Cells[3].Text;
    
            if (bType.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt16(BloodGV.SelectedRow.Cells[1].Text);
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (bType.Value == "" || bQuantity.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";

                }
                else
                {
                    string bTbtype = bType.Value;
                    string bTbQuantity =bQuantity.Value;
              

                    string Query = "update BloodInfoTb set  BloodType='{0}',BloodQuantity='{1}' where BloodId={2}";
                    Query = string.Format(Query, bTbtype, bTbQuantity,BloodGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowBlood();
                    ErrMsg.InnerText = "Blood Updated!";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
    }
}