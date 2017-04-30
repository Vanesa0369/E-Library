using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace E_Library
{
    public partial class Koshnica : Inherited

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static SqlConnection CreateConnection()
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=VANESA-PC\\SQLEXPRESS;Initial Catalog=BooksDBSQL;Integrated Security=True; Pooling=false";
            return con;
        }

        protected void BtnIztrivane_Click(object sender, EventArgs e)
        {
            foreach (DataListItem li in DataList1.Items)
            {
                CheckBox s = (CheckBox)li.FindControl("CheckBox1");
                if (s.Checked == true)
                {

                    SqlConnection connection = CreateConnection();
                    using (connection)
                    {
                        SqlCommand myCommand = new SqlCommand("sp_DeleteBooks", connection);
                        myCommand.CommandType = CommandType.StoredProcedure;
                        myCommand.CommandText = "sp_DeleteBooks";



                        SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                        BookID.Value = ((Label)li.FindControl("BookIDLabel")).Text;
                        myCommand.Parameters.Add(BookID);

                        

                        try
                        {
                            connection.Open();
                            myCommand.ExecuteNonQuery();



                        }

                        catch (SqlException )
                        {

                        }
                    }
                }
            }


                        DataList1.DataBind();
                    }
                }
            }
        
    





