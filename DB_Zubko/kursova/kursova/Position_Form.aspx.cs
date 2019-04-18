using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kursova
{
    public partial class Position_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                PositionDBDataContext db = new PositionDBDataContext();
                Position tabl = new Position();
                tabl.PositionType = TextBox1.Text;
                tabl.Salary = int.Parse(TextBox2.Text);
                string time1 = TextBox3.Text;
                TimeSpan shift;
                TimeSpan.TryParse(time1, out shift);
                tabl.WorkShift = shift;
                db.Position.InsertOnSubmit(tabl);
                db.SubmitChanges();
                Response.Redirect("/Position_Form.aspx");
            }
            catch (Exception ex)
            {
                const string message =
                "ПОМИЛКА! Невірний формат даних, або не всі поля заповнені!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                /*
                var result = MessageBox.Show(message, caption,
                                             MessageBoxButtons.YesNo,
                                             MessageBoxIcon.Question);*/
            }
        }
    }
}