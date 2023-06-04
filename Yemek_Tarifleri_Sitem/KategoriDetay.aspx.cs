using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();
	string kategoriidsor = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		kategoriidsor = Request.QueryString["Kategoriid"];
		SqlCommand cmd = new SqlCommand("select * From tbl_yemekler where kategoriid=@k1", clss.connection());
		cmd.Parameters.AddWithValue("@k1", kategoriidsor);
		SqlDataReader dr = cmd.ExecuteReader();
		DataList2.DataSource = dr;
		DataList2.DataBind();

		 
	}
}