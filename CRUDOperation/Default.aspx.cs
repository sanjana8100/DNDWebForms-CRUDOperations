using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDOperation
{
    public partial class _Default : Page
    {
        SqlConnection sqlConnection = new SqlConnection("Data Source=SANJANA;Initial Catalog=CRUDDatabase;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlConnection.Open();
            if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                Response.Write("<script>alert('Text Box Cannot Be Empty!!!')</script>");
            }
            else
            {
                double contact = Convert.ToDouble(TextBox4.Text);
                if (contact > 999999999 && contact <= 9999999999)
                {
                    SqlCommand sqlCommand = new SqlCommand("Insert into StudentInfo_Tab (StudentName, Address, Age, Contact, Sex) values ('" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "','" + RadioButtonList1.SelectedValue + "')", sqlConnection);
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                    LoadRecord();
                }
                else
                {
                    Response.Write("<script>alert('Contact cannot be more than 10 digits!!!')</script>");
                }
            }
        }

        void LoadRecord()
        {
            SqlCommand sqlCommand = new SqlCommand("select * from StudentInfo_Tab", sqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("select * from StudentInfo_Tab where StudentId = '" + int.Parse(TextBox5.Text) + "'", sqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            DropDownList1.SelectedValue = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            RadioButtonList1.SelectedValue = "";
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadRecord();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            sqlConnection.Open();
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string age = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string contact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string sex = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            SqlCommand sqlCommand = new SqlCommand("update StudentInfo_Tab set StudentName = '" + name + "', Address = '" + address + "', Age = '" + age + "', Contact = '" + contact + "', Sex = '" + sex + "' where StudentId = '" + id + "'", sqlConnection);
            sqlCommand.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            sqlConnection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadRecord();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("delete from StudentInfo_Tab where StudentId = '" + id + "'", sqlConnection);
            sqlCommand.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            sqlConnection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }
    }
}