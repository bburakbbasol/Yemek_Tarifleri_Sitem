using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TarifOnerDetay : System.Web.UI.Page

{
	Sqlclass clss=new Sqlclass();
	string id = "";
	protected void Page_Load(object sender, EventArgs e)

	{	

		
		id = Request.QueryString["tid"];
		if (Page.IsPostBack == false)
		{

			SqlCommand cmd = new SqlCommand("Select * from tbl_tarif where tarifid=@p1",clss.connection());
		cmd.Parameters.AddWithValue("@p1", id);
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			TextBox1.Text = dr[1].ToString();
			TextBox2.Text = dr[2].ToString();
			TextBox3.Text = dr[3].ToString();
			TextBox5.Text = dr[5].ToString();
			TextBox6.Text = dr[6].ToString();
		}
		clss.connection().Close();
		 
		SqlCommand cmd1 = new SqlCommand("Select * from tbl_Kategori ", clss.connection());
		SqlDataReader dr1 = cmd1.ExecuteReader();
		DropDownList1.DataTextField = "KategoriAd";
		DropDownList1.DataValueField = "Kategoriid";
		DropDownList1.DataSource = dr1;
		DropDownList1.DataBind();
		clss.connection().Close();
		}


	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand cmd = new SqlCommand("update tbl_tarif set TarifDurum=@p2 where tarifid=@p1", clss.connection());
		cmd.Parameters.AddWithValue("@p1", id);
		cmd.Parameters.AddWithValue("@p2", "True");
		cmd.ExecuteNonQuery();
		clss.connection().Close();

		

		SqlCommand cmd2 = new SqlCommand("insert into tbl_yemekler(yemekad,yemekmalzeME,yemektarif,Kategoriid) values(@y1,@y2,@y3,@y4)", clss.connection());
		cmd2.Parameters.AddWithValue("@y1", TextBox1.Text);
		cmd2.Parameters.AddWithValue("@y2", TextBox2.Text);
		cmd2.Parameters.AddWithValue("@y3", TextBox3.Text);
		cmd2.Parameters.AddWithValue("@y4", DropDownList1.SelectedValue);
		cmd2.ExecuteNonQuery();
		clss.connection().Close();

		SqlCommand cmd5 = new SqlCommand("update tbl_kategori set kategoriadet=kategoriadet+1 where kategoriid=@p1 ", clss.connection());
		cmd5.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
		cmd5.ExecuteNonQuery();
		clss.connection().Close();



	}
}