using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services.Description;

public partial class TarifOner : System.Web.UI.Page
{	
	Sqlclass clss=new Sqlclass();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void Button1_Click(object sender, EventArgs e)
    {
		SqlCommand cmd = new SqlCommand("insert into Tbl_Tarif (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6) ", clss.connection()); ;
		cmd.Parameters.AddWithValue("@t1", TextBox2.Text);
		cmd.Parameters.AddWithValue("@t2",TextBox3.Text);
		cmd.Parameters.AddWithValue("@t3",TextBox4.Text);
		cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);	
		cmd.Parameters.AddWithValue("@t5",TextBox6.Text);
		cmd.Parameters.AddWithValue("@t6", TextBox7.Text);
		cmd.ExecuteNonQuery();
		clss.connection().Close();
		Response.Write("Tarifiniz Alınmıştır");

    }
}