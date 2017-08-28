using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class customer_details : System.Web.UI.Page
{
    we_do_xps bo = new we_do_xps();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bind_country();
        }
    }

    public void bind_country()
    {
        DataTable dt = bo.get_all_country();
        DataRow dr = dt.NewRow();
        dr["country_id"] = "0";
        dr["country_name"] = "Select country";
        dt.Rows.InsertAt(dr, 0);
        ddl_country_from.DataSource = dt;
        ddl_country_from.DataValueField = "country_id";
        ddl_country_from.DataTextField = "country_name";
        ddl_country_from.DataBind();
        ddl_country_to.DataSource = dt;
        ddl_country_to.DataValueField = "country_id";
        ddl_country_to.DataTextField = "country_name";
        ddl_country_to.DataBind();

    }
    protected void ddl_identical_SelectedIndexChanged(object sender, EventArgs e)
    {
        grd_identical.DataSource = null;
        grd_identical.DataBind();
        if(ddl_identical.SelectedValue.ToString().Trim() == "No")
        {
            DataTable dt=new DataTable();
            dt.Columns.Add("id");
            int no_of_package = int.Parse(txt_no_of_package.Text.Trim());
            if(txt_no_of_package.Text.Trim() != "")
            {
                for (int i = 1; i < no_of_package+1; i++)
                {
                    DataRow dr = dt.NewRow();
                    dr["id"]=i;
                    dt.Rows.Add(dr);
                }
                grd_identical.DataSource = dt;
                grd_identical.DataBind();
            }
          }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        //string customer_detail_id = bo.insert_customer_detail(txt_company_name_from.Text.Trim(), txt_contact_person_name_from.Text.Trim(), txt_contact_number_from.Text.Trim(), txt_address1_from.Text.Trim(), txt_address2_from.Text.Trim(), txt_phone_no_from.Text.Trim(), txt_vat_cst_number_from.Text.Trim(), ddl_country_from.SelectedValue.ToString().Trim(), ddl_state_from.SelectedValue.ToString().Trim(), ddl_city_from.SelectedValue.ToString().Trim(), txt_company_name_to.Text.Trim(), txt_contact_person_name_to.Text.Trim(), txt_contact_number_to.Text.Trim(), txt_address1_to.Text.Trim(), txt_address2_to.Text.Trim(), txt_postal_code_to.Text.Trim(), txt_phone_no_to.Text.Trim(), txt_vat_cst_to.Text.Trim(), ddl_country_to.SelectedValue.ToString().Trim(), ddl_state_to.SelectedValue.ToString().Trim(), ddl_city_to.SelectedValue.ToString().Trim(), txt_ship_date.Text.Trim(), txt_no_of_package.Text.Trim(), ddl_identical.SelectedValue.ToString().Trim(), ddl_purpose.SelectedValue.ToString().Trim(), txt_package_description.Text.Trim(), txt_package_packing.Text.Trim(), txt_total_invoice_value.Text.Trim(), ddl_risk.SelectedValue.ToString().Trim(), ddl_to_pay.SelectedValue.ToString().Trim(), ddl_cod_amount.SelectedValue.ToString().Trim(),"","","","","","","","","");
        //if(ddl_identical.SelectedValue.ToString().Trim() == "No")
        //{
        //    for (int i = 0; i < grd_identical.Rows.Count;i++ )
        //    {
        //        TextBox txt_length=(TextBox)grd_identical.Rows[i].FindControl("txt_length");
        //        TextBox txt_width=(TextBox)grd_identical.Rows[i].FindControl("txt_width");
        //        TextBox txt_height=(TextBox)grd_identical.Rows[i].FindControl("txt_height");
        //        bo.insert_identical_package(txt_length.Text.Trim(), txt_width.Text.Trim(), txt_height.Text.Trim(), customer_detail_id.Trim());
        //    }
        //}

    }
    protected void ddl_country_from_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = bo.get_state_by_country_id(ddl_country_from.SelectedValue.ToString().Trim());
        ddl_state_from.DataSource = dt;
        ddl_state_from.DataTextField = "state_name";
        ddl_state_from.DataValueField = "state_id";
        ddl_state_from.DataBind();
    }
    protected void ddl_state_from_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = bo.get_city_by_state_id(ddl_state_from.SelectedValue.ToString().Trim());
        ddl_city_from.DataSource = dt;
        ddl_city_from.DataTextField = "city_name";
        ddl_city_from.DataValueField = "city_id";
        ddl_city_from.DataBind();
    }
    protected void ddl_country_to_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = bo.get_state_by_country_id(ddl_country_to.SelectedValue.ToString().Trim());
        ddl_state_to.DataSource = dt;
        ddl_state_to.DataTextField = "state_name";
        ddl_state_to.DataValueField = "state_id";
        ddl_state_to.DataBind();
    }
    protected void ddl_state_to_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = bo.get_city_by_state_id(ddl_state_to.SelectedValue.ToString().Trim());
        ddl_city_to.DataSource = dt;
        ddl_city_to.DataTextField = "city_name";
        ddl_city_to.DataValueField = "city_id";
        ddl_city_to.DataBind();
    }
}