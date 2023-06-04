using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HakkımızdaAdmin : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Page.IsPostBack == false) { 
		SqlCommand cmd = new SqlCommand("Select * From tbl_hakkımızda",clss.connection());
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			TextBox1.Text = dr[0].ToString();
		}
		
		clss.connection().Close();

		}
	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		SqlCommand cmd = new SqlCommand("update tbl_hakkımızda set metin=@m1", clss.connection());
		cmd.Parameters.AddWithValue("@m1", TextBox1.Text);
		cmd.ExecuteNonQuery();
		clss.connection().Close();
		TextBox1.Text = "";
		Response.Write("Hakkımızda Kısmı değişmiştir");
	}
}