using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AnaSayfa : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	protected void Page_Load(object sender, EventArgs e)
	{
		SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler",clss.connection());
		SqlDataReader dr = cmd.ExecuteReader();
		DataList2.DataSource = dr;
		DataList2.DataBind();
		
		

	}
}