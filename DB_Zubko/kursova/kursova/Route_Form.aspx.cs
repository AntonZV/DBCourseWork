using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace kursova
{
    public partial class Route_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                RouteDBDataContext db = new RouteDBDataContext();
                Route tabl = new Route();
                tabl.StartPoint = TextBox1.Text;
                tabl.EndPoint = TextBox2.Text;
                string time1 = TextBox3.Text;
                string time2 = TextBox4.Text;
                string time3 = TextBox5.Text;
                TimeSpan first_race, last_race, interval;
                TimeSpan.TryParse(time1, out first_race);
                TimeSpan.TryParse(time2, out last_race);
                TimeSpan.TryParse(time3, out interval);
                tabl.FirstRace = first_race;
                tabl.LastRace = last_race;
                tabl.Interval = interval;
                db.Route.InsertOnSubmit(tabl);
                db.SubmitChanges();
                Response.Redirect("/Route_Form.aspx");
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