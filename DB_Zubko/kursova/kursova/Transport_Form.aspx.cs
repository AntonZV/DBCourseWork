using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace kursova
{
    public partial class Transport_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                TransportDBDataContext db = new TransportDBDataContext();
                Transport tabl = new Transport();
                tabl.TransportType = TextBox1.Text;
                tabl.Model = TextBox2.Text;
                var culture = (CultureInfo)CultureInfo.CurrentCulture.Clone();
                culture.NumberFormat.NumberDecimalSeparator = ",";
                float speed;
                float.TryParse(TextBox3.Text, out speed);
                //tabl.Speed = float.Parse(TextBox3.Text,culture);
                tabl.Capacity = int.Parse(TextBox4.Text);
                tabl.RouteID = int.Parse(TextBox5.Text);
                db.Transport.InsertOnSubmit(tabl);
                db.SubmitChanges();
                Response.Redirect("/Transport_Form.aspx");
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