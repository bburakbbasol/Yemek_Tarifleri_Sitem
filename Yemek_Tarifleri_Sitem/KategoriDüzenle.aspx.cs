using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	string id = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["kategoriid"];
		if (Page.IsPostBack== false)
		{
			
			SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategori where kategoriid=@p1", clss.connection());
			cmd.Parameters.AddWithValue("@p1", id);
			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				TextBox1.Text = dr[1].ToString();
				TextBox2.Text = dr[2].ToString();
			}
			clss.connection().Close();
		}
	}
	
	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand cmd =new SqlCommand("Update Tbl_Kategori set KategoriAd=@t1,KategoriAdet=@t2 where Kategoriid=@t3",clss.connection());
		cmd.Parameters.AddWithValue("@t3", id);
		cmd.Parameters.AddWithValue("@t1", TextBox1.Text);
		cmd.Parameters.AddWithValue("@t2",TextBox2.Text);
		cmd.ExecuteNonQuery();
		clss.connection().Close();

	}
}