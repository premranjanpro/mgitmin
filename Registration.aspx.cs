using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Drawing;
using System.Net.Mail;

public partial class Registration : System.Web.UI.Page
{
    DbConnection _con = new DbConnection();
    ClsMail mail = new ClsMail();
    string str_userid = "";
    Categories_Insert Category = new Categories_Insert();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Fill_Duration();
            //course_type();
            Branch_State();
            dtneft.Value = DateTime.Now;
        }
    }

    public void Fill_Duration()
    {
        if (_con.isDatabaseCanBeConnected())
        {
            DataTable dt_Category = Category.FILL_DURATION();
            DrpCourseDuration.Items.Clear();
            DrpCourseDuration.DataSource = dt_Category;
            DrpCourseDuration.DataTextField = Convert.ToString(dt_Category.Columns["duration"]);
            DrpCourseDuration.DataValueField = Convert.ToString(dt_Category.Columns["id"]);
            DrpCourseDuration.DataBind();
            DrpCourseDuration.Items.Insert(0, "---Select---");
        }
    }

    public void course_type(string catid)
    {
        if (_con.isDatabaseCanBeConnected())
        {
            SqlDataAdapter cadt = new SqlDataAdapter("select * from COURSE_TYPE where durationid = '" + catid + "'", _con.GetConnection);
            DataTable c_dt = new DataTable();
            cadt.Fill(c_dt);
            DropDown_Course_Type.Items.Clear();
            DropDown_Course_Type.DataSource = c_dt;
            DropDown_Course_Type.DataTextField = Convert.ToString(c_dt.Columns["COURSE_TYPE_NAME"]);
            DropDown_Course_Type.DataValueField = Convert.ToString(c_dt.Columns["id"]);
            DropDown_Course_Type.DataBind();
            DropDown_Course_Type.Items.Insert(0, "Select");
        }

    }


    public void coursename(string cat_id)
    {
        if (_con.isDatabaseCanBeConnected())
        {

            SqlDataAdapter scadt = new SqlDataAdapter("select * from COURSE_NAME where COURSETYPEID = '" + cat_id + "'", _con.GetConnection);
            DataTable sc_dt = new DataTable();
            scadt.Fill(sc_dt);
            DropDown_CourseName.Items.Clear();
            DropDown_CourseName.DataSource = sc_dt;
            DropDown_CourseName.DataTextField = Convert.ToString(sc_dt.Columns["COURSE_NAME"]);
            DropDown_CourseName.DataValueField = Convert.ToString(sc_dt.Columns["ID"]);
            DropDown_CourseName.DataBind();
            DropDown_CourseName.Items.Insert(0, "Select");
        }

    }


    protected void DrpCourseDuration_SelectedIndexChanged(object sender, EventArgs e)
    {
        course_type(DrpCourseDuration.SelectedValue.ToString());
    }

    protected void DropDown_Course_Type_SelectedIndexChanged(object sender, EventArgs e)
    {
        coursename(DropDown_Course_Type.SelectedValue.ToString());
    }

    public void Branch_State()
    {
        if (_con.isDatabaseCanBeConnected())
        {
            SqlDataAdapter cadt = new SqlDataAdapter("select * from STATE", _con.GetConnection);
            DataTable c_dt = new DataTable();
            cadt.Fill(c_dt);
            Drpdown_StateName.Items.Clear();
            Drpdown_StateName.DataSource = c_dt;
            Drpdown_StateName.DataTextField = Convert.ToString(c_dt.Columns["STATE_NAME"]);
            Drpdown_StateName.DataValueField = Convert.ToString(c_dt.Columns["ID"]);
            Drpdown_StateName.DataBind();
            Drpdown_StateName.Items.Insert(0, "Select");
        }

    }


    public void Branch_name(string cat_id)
    {
        if (_con.isDatabaseCanBeConnected())
        {

            SqlDataAdapter scadt = new SqlDataAdapter("select * from BRANCH where STATE_ID = '" + cat_id + "'", _con.GetConnection);
            DataTable sc_dt = new DataTable();
            scadt.Fill(sc_dt);
            DropDown_Branch.Items.Clear();
            DropDown_Branch.DataSource = sc_dt;
            DropDown_Branch.DataValueField = Convert.ToString(sc_dt.Columns["BRANCH_RegNo"]);
            DropDown_Branch.DataTextField = Convert.ToString(sc_dt.Columns["BRANCH_NAME"]);
            DropDown_Branch.DataBind();
            DropDown_Branch.Items.Insert(0, "Select");
        }

    }



    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {


            string uploadFolder1 = Request.PhysicalApplicationPath + "DocumentsUpload\\";
            string E_mpg1 = " ";
            string E_mpg2 = " ";
            string E_mpg3 = " ";
            string E_mpg4 = " ";
            if (FileUploadPhoto.HasFile)
            {

                string fileextention1 = Path.GetExtension(FileUploadPhoto.PostedFile.FileName);
                string type1 = FileUploadPhoto.PostedFile.ContentType.ToString();
                if ((type1 == "image/jpeg" || type1 == "image/jpg" || type1 == "imges/png" || type1 == "imges/gif"))
                {

                    E_mpg1 = fileextention1;
                }
            }

            if (FileUploadqual1.HasFile)
            {

                string fileextention2 = Path.GetExtension(FileUploadqual1.PostedFile.FileName);
                string type2 = FileUploadqual1.PostedFile.ContentType.ToString();
                if ((type2 == "image/jpeg" || type2 == "image/jpg" || type2 == "imges/png" || type2 == "imges/gif"))
                {

                    E_mpg2 = fileextention2;
                }
            }



            if (FileUploadqual2.HasFile)
            {

                string fileextention3 = Path.GetExtension(FileUploadqual2.PostedFile.FileName);
                string type3 = FileUploadqual2.PostedFile.ContentType.ToString();
                if ((type3 == "image/jpeg" || type3 == "image/jpg" || type3 == "imges/png" || type3 == "imges/gif"))
                {

                    E_mpg3 = fileextention3;
                }
            }



            if (FileUploadqual2.HasFile)
            {

                string fileextention4 = Path.GetExtension(FileUploadPhoto.PostedFile.FileName);
                string type4 = FileUploadqual3.PostedFile.ContentType.ToString();
                if ((type4 == "image/jpeg" || type4 == "image/jpg" || type4 == "imges/png" || type4 == "imges/gif"))
                {

                    E_mpg4 = fileextention4;
                }
            }

            if (_con.isDatabaseCanBeConnected())
            {

                SqlCommand cmd = new SqlCommand("SP_INSERT_STUDENT_DATA", _con.GetConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Duration", SqlDbType.VarChar).Value = DrpCourseDuration.SelectedValue.ToString();
                cmd.Parameters.Add("@COURSE_OFFERED", SqlDbType.VarChar).Value = DropDown_Course_Type.SelectedValue.ToString();
                cmd.Parameters.Add("@COURSE_NAME", SqlDbType.VarChar).Value = DropDown_CourseName.SelectedValue.ToString();
                cmd.Parameters.Add("@STUDENT_NAME", SqlDbType.VarChar).Value = Txtbox_Name.Text;
                cmd.Parameters.Add("@FATHER_NAME", SqlDbType.VarChar).Value = Txtfather_Name.Text;
                cmd.Parameters.Add("@MOTHER_NAME", SqlDbType.VarChar).Value = Txt_mother_Name.Text;
                cmd.Parameters.Add("@BIRTH_DATE", SqlDbType.VarChar).Value = Txt_birthdate.Value;
                cmd.Parameters.Add("@ADDRESS", SqlDbType.VarChar).Value = Txt_Address.Text;
                cmd.Parameters.Add("@CITY_NAME", SqlDbType.VarChar).Value = txt_city.Text;
                cmd.Parameters.Add("@STATE_NAME", SqlDbType.VarChar).Value = Drpdown_StateName.SelectedValue.ToString();
                cmd.Parameters.Add("@BRANCH_NAMES", SqlDbType.VarChar).Value = DropDown_Branch.SelectedValue.ToString();
                cmd.Parameters.Add("@PHONE_NO", SqlDbType.VarChar).Value = Txtphone_no.Text;
                cmd.Parameters.Add("@MOBILE_NO", SqlDbType.BigInt).Value = TxtMobile.Text;
                cmd.Parameters.Add("@EMAIL_ID", SqlDbType.VarChar).Value = Txt_mail.Text;
                cmd.Parameters.AddWithValue("@UPLOAD_IMAGE", E_mpg1);
                cmd.Parameters.Add("@Qualification1", SqlDbType.VarChar).Value = drp_Qualification1.SelectedItem.ToString();
                cmd.Parameters.AddWithValue("@UploadDocument1", E_mpg2);
                cmd.Parameters.Add("@Qualification2", SqlDbType.VarChar).Value = drpqUALIFICATION2.SelectedItem.ToString();
                cmd.Parameters.AddWithValue("@UploadDocument2", E_mpg3);
                cmd.Parameters.Add("@Qualification3", SqlDbType.VarChar).Value = drpqUALIFICATION3.SelectedItem.ToString();
                cmd.Parameters.AddWithValue("@UploadDocument3", E_mpg4);
                cmd.Parameters.Add("@GENDER", SqlDbType.VarChar).Value = dropgender.SelectedItem.ToString();
                cmd.Parameters.Add("@CATEGORY", SqlDbType.VarChar).Value = drp_Category.SelectedItem.ToString();
                cmd.Parameters.Add("@OCCUPATION", SqlDbType.VarChar).Value = drpService.SelectedItem.ToString();

                cmd.Parameters.Add("@PINCODE", SqlDbType.VarChar).Value = txtpincode.Text;

                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = txtpassword.Text;
                cmd.Parameters.Add("@PaymentMethod", SqlDbType.VarChar).Value = radiopayment.SelectedValue.ToString();
                cmd.Parameters.Add("@TranNo", SqlDbType.VarChar).Value = txttransactionno.Text;
                cmd.Parameters.Add("@TranDate", SqlDbType.VarChar).Value = dtneft.Value;
                cmd.Parameters.Add("@BranchUserName", SqlDbType.VarChar).Value = txtbranchregno.Text;
                cmd.Parameters.Add("@BranchPassword", SqlDbType.VarChar).Value = txtbranchpassword.Text;

                cmd.Parameters.Add("@Message", SqlDbType.VarChar).Direction = ParameterDirection.Output;
                cmd.Parameters["@Message"].Size = 100;

                cmd.Parameters.Add("@USER_ID", SqlDbType.VarChar).Direction = ParameterDirection.Output;
                cmd.Parameters["@USER_ID"].Size = 100;
                cmd.Parameters.Add("@Ret_id", SqlDbType.VarChar).Direction = ParameterDirection.Output;
                cmd.Parameters["@Ret_id"].Size = 20;
                int kk = cmd.ExecuteNonQuery();

                if (kk > 0)
                {
                    str_userid = cmd.Parameters["@USER_ID"].Value.ToString();
                    string Back_Id = cmd.Parameters["@Ret_id"].Value.ToString();
                    bool ret = false;
                    string str1 = "";
                    str1 = "Dear " + Txtbox_Name.Text + ",<br/> ";
                    str1 = "Welcome to www.mgitm.in .<br/> ";
                    str1 = "You Have Completed Online Application Process.<br/> ";
                    str1 = "";
                    str1 = str1 + " Registration No : ";
                    str1 = str1 + str_userid + ",<br/>";
                    mail.ToAddress = Txt_mail.Text;
                    mail.FromAddress = "info@mgitm.in";
                    mail.Subject = "You Have Completed Online Application Process.";
                    mail.Body = "   " + str1 + "<br/>Thanks & Regards<br/> Gurukul Institute";
                    mail.sendMail(ret);
                    Response.Clear();

                    if (kk > 0)
                    {
                        if (FileUploadPhoto.HasFile)
                        {
                            FileUploadPhoto.SaveAs(uploadFolder1 + Back_Id + "IMG" + E_mpg1);
                        }
                        if (FileUploadqual1.HasFile)
                        {
                            FileUploadqual1.SaveAs(uploadFolder1 + Back_Id + "UD1" + E_mpg2);
                        }
                        if (FileUploadqual2.HasFile)
                        {
                            FileUploadqual2.SaveAs(uploadFolder1 + Back_Id + "UD2" + E_mpg3);
                        }
                        if (FileUploadqual3.HasFile)
                        {
                            FileUploadqual3.SaveAs(uploadFolder1 + Back_Id + "UD3" + E_mpg4);
                        }

                        Response.Redirect("RegistrationComplete.aspx?RegNo=" + str_userid);

                    }
                }

                else
                {
                    message.Show(cmd.Parameters["@Message"].Value.ToString());
                }

            }
        }

        catch (Exception ex)
        {
            message.Show("server error");
        }
    }





    protected void radiopayment_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radiopayment.SelectedIndex == 0)
        {
            trbranch.Visible = true;
            trneft1.Visible = false;
            trneft2.Visible = false;
            trneft3.Visible = false;


        }
        else
        {

            trbranch.Visible = false;
            trneft1.Visible = true;
            trneft2.Visible = true;
            trneft3.Visible = true;
        }
    }


    protected void Drpdown_StateName_SelectedIndexChanged(object sender, EventArgs e)
    {
        Branch_name(Drpdown_StateName.SelectedValue.ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            //Txtbox_Name.Text = "";
            //Txt_Acadmic_year_of_passing.Text = "";
            //Txt_Address.Text = "";
            //Txt_birthdate.Text = "";
            //Txt_father_Name.Text = "";
            //Txt_mather_Name.Text = "";
            //txt_pin.Text = "";
            //Txt_mail.Text = "";
            //Txt_Profesnl_Board_universty.Text = "";
            //Txt_profsnl_percentage.Text = "";
            //Txtbox_Name.Text = "";
            //Txt_profsnl_percentage.Text = "";
            //Txt_Acdmic_board.Text = "";
            //RadioButtonList_Occupation.ClearSelection();
            //DropDown_Branch.Text = "Select";
            //DropDown_CourseName.Text = "Select";
            //DropDown_Course_Type.Text = "Select";
            //RadioButton_category.ClearSelection();
            //RadioButtonList1.ClearSelection();
            //Txt_Acdmic_board.Text = "";
            //Txt_Acadmic_yr_of_percentage.Text = "";
            //Txt_Acadmic_year_of_passing.Text = "";
            //Txt_Profesnl_Board_universty.Text = "";
            //Txt_profsnl_percentage.Text = "";
            //Txt_Profsnl_yr_of_pasing.Text = "";
            //Txtphone_no.Text = "";
            //Drpdown_StateName.Items.Clear();
            //DropDown_Branch.Items.Clear();
            //DropDown_CourseName.Items.Clear();
            //DropDown_Course_Type.Items.Clear();
        }
    }

    protected void Txt_mail_TextChanged(object sender, EventArgs e)
    {
        if (_con.isDatabaseCanBeConnected())
        {

            {

                try
                {

                    SqlDataAdapter adp = new SqlDataAdapter("select EMAIL_ID from STUDENT_REGISTRATION where EMAIL_ID= '" + Txt_mail.Text + "'", _con.GetConnection);

                    DataTable edt = new DataTable();
                    adp.Fill(edt);
                    if (edt.Rows.Count > 0)
                    {
                        //Lbl_Email.Text = "Sorry Email Id is already used";
                        //Lbl_Email.ForeColor = System.Drawing.Color.Red;

                    }
                    else
                    {


                        //Lbl_Email.Text = "Email Id is available";
                        //Lbl_Email.ForeColor = System.Drawing.Color.Green;
                    }


                }

                catch
                {


                }
            }
        }
    }







    protected void DropDown_Branch_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable fdt = _con.getDataRows("Select * From Branch Where Branch_Regno='" + DropDown_Branch.SelectedValue.ToString() + "'");
        if (fdt.Rows.Count > 0)
        {

            trbranchdetails.Visible = false;
            lblbank.Text = fdt.Rows[0]["BankName"].ToString();
            lblbranch.Text = fdt.Rows[0]["BranchName"].ToString();
            lblbranchemail.Text = fdt.Rows[0]["BRANCH_EMAIL"].ToString();
            lblbranchmobile.Text = fdt.Rows[0]["BRANCH_PHONE_NO"].ToString();
            Lblifsccode.Text = fdt.Rows[0]["IFSCCode"].ToString();
            lblaccountno.Text = fdt.Rows[0]["AccountNo"].ToString();



        }
    }
}

