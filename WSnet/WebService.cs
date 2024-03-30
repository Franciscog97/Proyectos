using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int Ingresar_Departamento(string nombre,string descripcion)
    {
        int auxiliar=0;
        using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
        {
            using(SqlCommand cmd= new SqlCommand("st_ingresarDepartamento", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("nombre", nombre);
                cmd.Parameters.AddWithValue("descripcion", descripcion);
                cmd.Parameters.AddWithValue("estado", 'a');
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                auxiliar = cmd.ExecuteNonQuery();
            }
        }
        return auxiliar;
    }

    [WebMethod]
    public int Editar_Departamento(int departamento,string nombre, string descripcion)
    {
        int auxiliar = 0;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("st_modificarDepartamento", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("id", departamento);
                cmd.Parameters.AddWithValue("nombre", nombre);
                cmd.Parameters.AddWithValue("descripcion", descripcion);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                auxiliar = cmd.ExecuteNonQuery();
            }
        }
        return auxiliar;
    }

    [WebMethod]
    public int Eliminar_Departamento(int departamento)
    {
        int auxiliar = 0;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("st_eliminar_Departamento", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("id", departamento);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                auxiliar = cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
        return auxiliar;
    }

    [WebMethod]
    public DataSet Obtener_DepartamentoID(int departamento)
    {
        DataSet ds = new DataSet();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("st_mostrarDepxid", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("id", departamento);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                adp.Fill(ds);

                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
        return ds;
    }
    [WebMethod]
    public DataSet Obtener_Departamento()
    {
        DataSet ds = new DataSet();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("st_mostrarDepartamento", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                adp.Fill(ds);


                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
        return ds;
    }

}
