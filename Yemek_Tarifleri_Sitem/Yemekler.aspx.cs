using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yemekler : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	string id = "";
	string islem = "";
	string ad = "";
	protected void Page_Load(object sender, EventArgs e)

	{
		if (Page.IsPostBack == false)
		{
			id = Request.QueryString["yemekid"];
			islem = Request.QueryString["islem"];
		}
		//Sİlmme İşlemi
		if (islem == "sil")
		{
			SqlCommand cmd4 = new SqlCommand("Delete from tbl_yemekler where yemekid=@d1",clss.connection());
			cmd4.Parameters.AddWithValue("@d1", id);
			cmd4.ExecuteNonQuery();
			clss.connection().Close();
			SqlCommand cmd2 = new SqlCommand("update tbl_kategori set kategoriadet=kategoriadet-1 where kategoriid=@a1", clss.connection());
			cmd2.Parameters.AddWithValue("@a1", DropDownList1.SelectedValue);
			cmd2.ExecuteNonQuery();
			clss.connection().Close();



			SqlCommand cmd1 = new SqlCommand("Select * From tbl_yemekler where yemekid=@a1", clss.connection());
			cmd1.Parameters.AddWithValue("@a1", id);
			SqlDataReader dr=cmd1.ExecuteReader();
			while (dr.Read()) 
			{
				 ad = dr[1].ToString();
				Response.Write(ad + "Silme işlemi gerçekleşmiştir");

			}
			

		}


		//Yemek Listesi
		SqlCommand cmd= new SqlCommand("Select * From Tbl_Yemekler",clss.connection());
		SqlDataReader DR=cmd.ExecuteReader();
		DataList1.DataSource = DR;
		DataList1.DataBind();
		clss.connection().Close();
		if (Page.IsPostBack == false)
		{
			DataList1.Visible = false;
			Panel3.Visible = false;
		}

		//Kategori listesi
		if (Page.IsPostBack == false)
		{

		SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategori", clss.connection());
		SqlDataReader DR2 = cmd2.ExecuteReader();
		DropDownList1.DataTextField = "KategoriAd";
		DropDownList1.DataValueField = "Kategoriid";
		DropDownList1.DataSource = DR2;
		DropDownList1.DataBind();
		}



	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataList1.Visible=true;

	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		DataList1.Visible=false;
	}

	protected void Button6_Click(object sender, EventArgs e)
	{
		Panel3.Visible=true;
	}

	protected void Button7_Click(object sender, EventArgs e)
	{
		Panel3.Visible = false;
	}

	protected void btnekle_Click(object sender, EventArgs e)
	{
		//Yemek ekleme
		SqlCommand cmd = new SqlCommand("insert into Tbl_yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@w1,@w2,@w3,@w4)",clss.connection());
		cmd.Parameters.AddWithValue("@w1", TextBox1.Text);
		cmd.Parameters.AddWithValue("@w2", TextBox2.Text);
		cmd.Parameters.AddWithValue("@w3", TextBox3.Text);
		cmd.Parameters.AddWithValue("@w4",DropDownList1.SelectedValue);
		cmd.ExecuteNonQuery();
		Response.Write("Teşekkürler Yemek Eklenmiştir");
		TextBox1.Text = "";
		TextBox2.Text = "";
		TextBox3.Text = "";

		//Kategoriadet artırma

		SqlCommand cmd2 = new SqlCommand("update tbl_kategori set kategoriadet=kategoriadet+1 where kategoriid=@a1", clss.connection());
		cmd2.Parameters.AddWithValue("@a1",DropDownList1.SelectedValue);
		cmd2.ExecuteNonQuery();
		clss.connection().Close();


	}

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}