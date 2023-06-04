using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekDüzenle : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	String id = "";
	protected void Page_Load(object sender, EventArgs e)

	{
		if (Page.IsPostBack == false)
		{
			
			SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategori", clss.connection());
			SqlDataReader DR2 = cmd2.ExecuteReader();
			DropDownList1.DataTextField = "KategoriAd";
			DropDownList1.DataValueField = "Kategoriid";
			DropDownList1.DataSource = DR2;
			DropDownList1.DataBind();
		}
		id = Request.QueryString["Yemekid"];
		if (Page.IsPostBack == false)
		{
			SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler where yemekid=@a1", clss.connection());
			cmd.Parameters.AddWithValue("@a1", id);
			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				TextBox1.Text = dr[1].ToString();
				TextBox2.Text = dr[2].ToString();
				TextBox3.Text = dr[3].ToString();
			}
		}



	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

		SqlCommand cmd2 = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 ,yemekresim=@p6 where yemekid=@p5 ", clss.connection());
		cmd2.Parameters.AddWithValue("@p5", id);
		cmd2.Parameters.AddWithValue("@p1",TextBox1.Text);
		cmd2.Parameters.AddWithValue("@p2",TextBox2.Text);
		cmd2.Parameters.AddWithValue("@p3",TextBox3.Text);
		cmd2.Parameters.AddWithValue("@p6","~/resimler/"+FileUpload1.FileName);
		cmd2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
		
		cmd2.ExecuteNonQuery();
		clss.connection().Close();
		Response.Write("Güncelleme işleminiz Başarıyla yapılmıştır");


	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		SqlCommand cmd4 = new SqlCommand("update tbl_yemekler set durum=0",clss.connection());
		cmd4.ExecuteNonQuery();
		
		
		SqlCommand cmd1 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", clss.connection());
		cmd1.Parameters.AddWithValue("@p1", id);
		cmd1.ExecuteNonQuery();
		clss.connection().Close();
		Response.Write("Günün yemeği şeçilmiştir");
		TextBox1.Text = "";
		TextBox2.Text = "";
		TextBox3.Text = "";
		Button2.Visible=false;

	}
}