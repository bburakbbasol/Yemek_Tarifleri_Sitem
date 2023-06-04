using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekDetay : System.Web.UI.Page
{	
	Sqlclass clss=new Sqlclass();
	String soryemekid = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		soryemekid = Request.QueryString["yemekid"];
		SqlCommand cmd = new SqlCommand("Select Yemekad From tbl_Yemekler where yemekid=@p1", clss.connection()) ;
		cmd.Parameters.AddWithValue("@p1", soryemekid);
		SqlDataReader dr = cmd.ExecuteReader();
		while(dr.Read())
		{
			Label4.Text = dr[0].ToString();
		}
		clss.connection().Close();
		//Yorum listeleme 
		SqlCommand cmd2=new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@y1",clss.connection()) ;
		cmd2.Parameters.AddWithValue("@y1", soryemekid);
		SqlDataReader dr2= cmd2.ExecuteReader();
		DataList2.DataSource = dr2;
		
		DataList2.DataBind();
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand cmd3 = new SqlCommand("insert into Tbl_yorumlar(YorumAdSoyad,YorumMail,Yorumicerik,yemekid) values(@c1,@c2,@c3,@c4)", clss.connection());
		cmd3.Parameters.AddWithValue("@c1", TextBox1.Text);
		cmd3.Parameters.AddWithValue("@c2", TextBox2.Text);
		cmd3.Parameters.AddWithValue("@c3", TextBox3.Text);
		cmd3.Parameters.AddWithValue("@c4", soryemekid);
		cmd3.ExecuteNonQuery();
		clss.connection().Close();
		Response.Write("Yorumunuz Alınmıştır Teşekkürler.");
		TextBox1.Text = "";
		TextBox2.Text = "";
		TextBox3.Text = "";
		
	}
}