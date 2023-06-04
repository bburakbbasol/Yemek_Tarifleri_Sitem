using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mesajlar : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	protected void Page_Load(object sender, EventArgs e)
	{
		DataList1.Visible = false;
		SqlCommand cmd=new SqlCommand("Select * from tbl_mesajlar",clss.connection());
		SqlDataReader dr = cmd.ExecuteReader();
		DataList1.DataSource = dr;
		DataList1.DataBind();
		clss.connection().Close();
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataList1.Visible = true;

	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		DataList1.Visible=false;
	}
}