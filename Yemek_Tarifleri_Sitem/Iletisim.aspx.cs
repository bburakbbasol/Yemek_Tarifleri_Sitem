using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Iletisim : System.Web.UI.Page
{	Sqlclass clss=new Sqlclass();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void Button1_Click(object sender, EventArgs e)
    {
		 SqlCommand cmd=new SqlCommand("insert into tbl_mesajlar(mesajadsoyad,mesajbaslik,mesajmail,mesajicerik) values(@m1,@m2,@m3,@m4)",clss.connection());
		cmd.Parameters.AddWithValue("@m1", TextBox1.Text);
		cmd.Parameters.AddWithValue("@m2",TextBox2.Text);
		cmd.Parameters.AddWithValue("@m3",TextBox3.Text);
		cmd.Parameters.AddWithValue("@m4",TextBox4.Text);
		cmd.ExecuteNonQuery();
		clss.connection().Close();
		Response.Write("Mesajınız Alınmıştır Teşekkürler.");
		TextBox1.Text = "";
		TextBox2.Text = "";
		TextBox3.Text = "";
		TextBox4.Text = "";

	}
}