using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YorumDetay : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	string id = "";
	protected void Page_Load(object sender, EventArgs e)
	{

		id = Request.QueryString["id"];
		if (Page.IsPostBack == false) { 
		SqlCommand cmd = new SqlCommand("Select * From tbl_yorumlar where yorumid=@p1",clss.connection());
		cmd.Parameters.AddWithValue("@p1", id);
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			TextBox1.Text = dr[1].ToString();
			TextBox2.Text = dr[2].ToString();
			TextBox3.Text = dr[5].ToString();
			string a = dr[6].ToString();
			/*
			 BU alt tarafdaki aslında hiç gerek yoktu inner join kullanasrak yapabilirdik.
			//Sqlcommand cmd=new Sqlcommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From Tbl_yorumlar innerjoin tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1",clss.connection());
			//cmd.Parameters.AddWithValue("@p1",id)
			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				TextBox1.Text = dr[0].ToString();
				TextBox2.Text = dr[1].ToString();
				TextBox3.Text = dr[2].ToString();
				TextBox3.Text = dr[3].ToString();
		
			Bu kod bloğundfan dikkta etmemiz gerek bir nokta da dr[] değerleri bu değerler sıfırdan başlattık bunun sebepi de normal index sıfırdan başlaması ve biz tek tek sorgu yaptığımız için while da dr sorgusunda 0 a denk geliyor.
			
			 
			 */
				SqlCommand cmd2 = new SqlCommand("Select*from tbl_yemekler where yemekid=@i1", clss.connection());
			cmd2.Parameters.AddWithValue("@i1", a);
			SqlDataReader dr2 = cmd2.ExecuteReader();
			while (dr2.Read())
			{
				TextBox4.Text = dr2[1].ToString();
			}
		}
		}
		clss.connection().Close();
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		
		SqlCommand c = new SqlCommand("Update tbl_yorumlar SET yorumicerik=@p1,yorumonay=@p2  where yorumid=@p3", clss.connection());
		c.Parameters.AddWithValue("@p1", TextBox3.Text);
		c.Parameters.AddWithValue("@p2", "true");
		c.Parameters.AddWithValue("@p3", id);

		c.ExecuteNonQuery();
		clss.connection().Close();
		Response.Write( "Yorumu onayladınız.");
		TextBox1.Text = "";
		TextBox2.Text = "";
		TextBox3.Text = "";
		TextBox4.Text = "";
		if (TextBox3.Text == "")
		{
			Button1.Visible= false;
			
		}


	}
}