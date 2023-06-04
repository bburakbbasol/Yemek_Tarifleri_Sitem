using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kategoriler : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	string id = "";
	string islem = "";
	protected void Page_Load(object sender, EventArgs e)

	{
		 if (Page.IsPostBack == false)
		{
			id = Request.QueryString["Kategoriid"];
			islem = Request.QueryString["islem"];
		}
		SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategori",clss.connection());
		SqlDataReader dr= cmd.ExecuteReader();
		DataList1.DataSource = dr;
		DataList1.DataBind();

		//Silme İşlemi
		if (islem == "sil")
		{
			SqlCommand cmd2 = new SqlCommand("Delete From Tbl_kategori where kategoriid=@d1",clss.connection());
			cmd2.Parameters.AddWithValue("@d1",id);
			cmd2.ExecuteNonQuery();
			clss.connection().Close();


		DataList1.Visible= false;
		Panel3.Visible=false;
		}


	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataList1.Visible = true;
			
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		DataList1.Visible = false;
		
	}
	

	protected void Button6_Click(object sender, EventArgs e)
	{
		Panel3.Visible = true;
		

	}

	protected void Button7_Click(object sender, EventArgs e)
	{
		Panel3.Visible = false;
	}

	protected void btnekle_Click(object sender, EventArgs e)
	{
		SqlCommand cmd = new SqlCommand("insert into Tbl_Kategori(KategoriAd) values(@p1)", clss.connection());
		cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
		cmd.ExecuteNonQuery();
		cmd.Connection.Close();
	}
}