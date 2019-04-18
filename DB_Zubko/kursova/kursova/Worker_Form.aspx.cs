using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kursova
{
    public partial class Worker_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                WorkerDBDataContext db = new WorkerDBDataContext();
                Worker tabl = new Worker();
                tabl.FirstName = TextBox1.Text;
                tabl.SecondName = TextBox2.Text;
                string time1 = TextBox3.Text;
                DateTime day;
                DateTime.TryParse(time1, out day);
                tabl.DateBirth = day;
                tabl.PositionID = int.Parse(TextBox4.Text);
                tabl.TransportID = int.Parse(TextBox5.Text);
                db.Worker.InsertOnSubmit(tabl);
                db.SubmitChanges();
                Response.Redirect("/Worker_Form.aspx");
            }
            catch (Exception ex)
            {
                const string message =
                "ПОМИЛКА! Невірний формат даних, або не всі поля заповнені!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('"+message+"');", true);
                /*
                var result = MessageBox.Show(message, caption,
                                             MessageBoxButtons.YesNo,
                                             MessageBoxIcon.Question);*/
            }
            
        }
    }
}