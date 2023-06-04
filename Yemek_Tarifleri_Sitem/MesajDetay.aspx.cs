using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajDetay : System.Web.UI.Page
{	Sqlclass clss=new Sqlclass();
	string mid="";
	protected void Page_Load(object sender, EventArgs e)
	{
		mid = Request.QueryString["id"];
		SqlCommand cmd = new SqlCommand("Select *From tbl_mesajlar where mesajid=@p1",clss.connection());
		cmd.Parameters.AddWithValue("@p1", mid);
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			TextBox1.Text = dr[1].ToString();
			TextBox2.Text = dr[2].ToString();
			TextBox3.Text = dr[3].ToString();
			TextBox4.Text = dr[4].ToString();


		}
		clss.connection().Close();

	}
}