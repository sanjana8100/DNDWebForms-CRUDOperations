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
            SqlCommand sqlCommand = new SqlCommand("Insert into StudentInfo_Tab values ('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", sqlConnection);
            sqlCommand.ExecuteNonQuery(); 
            sqlConnection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("update StudentInfo_Tab set StudentName = '"+TextBox2.Text + "', Address = '" + DropDownList1.SelectedValue + "', Age = '" + double.Parse(TextBox3.Text)+"', Contact = '" + TextBox4.Text + "' where StudentId = '"+int.Parse(TextBox1.Text)+"'", sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("delete from StudentInfo_Tab where StudentId = '" + int.Parse(TextBox1.Text) + "'", sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("select * from StudentInfo_Tab where StudentId = '" + int.Parse(TextBox1.Text) + "'", sqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("select * from StudentInfo_Tab where StudentId = '" + int.Parse(TextBox1.Text) + "'", sqlConnection);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                TextBox2.Text = reader.GetValue(1).ToString();
                DropDownList1.SelectedValue = reader.GetValue(2).ToString();
                TextBox3.Text = reader.GetValue(3).ToString();
                TextBox4.Text = reader.GetValue(4).ToString();
            }
        }
    }
}