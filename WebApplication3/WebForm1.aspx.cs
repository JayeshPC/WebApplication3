using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=tcp:testsqldbdemo.database.windows.net,1433;User ID=testsqluser;Password=Sqluser123;Initial Catalog=testdbdemo;MultipleActiveResultSets=true;Asynchronous Processing=true;Application Name=SDS");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void refresh()
        {

            TextBox4.Text = "";

            TextBox2.Text = "";

            TextBox1.Text = "";

            DropDownList1.Text = "";

            rbnFemale.Checked = false;

            rbnMale.Checked = true;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string Sex = "";

            if (rbnFemale.Checked == true)
            {

                Sex = "Female";

            }

            if (rbnMale.Checked == true)
            {

                Sex = "Male";

            }

            SqlCommand cmd = new SqlCommand("insert into registration(roll_no,name,class,sex,email) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + Sex + "','" + TextBox4.Text + "')", con);

            cmd.CommandType = CommandType.Text;

            try
            {

                con.Open();

                cmd.ExecuteNonQuery();

                Literal1.Text = "Data inserted successfully";

                con.Close();

                refresh();

            }

            catch (Exception ex)
            {

                Literal1.Text = ex.Message;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            refresh();

            Literal1.Text = "";

        }





    }
}