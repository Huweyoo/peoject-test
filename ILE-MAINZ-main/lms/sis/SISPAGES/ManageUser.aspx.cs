using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Collections.Specialized.BitVector32;
using System.Data.SqlClient;
using System.Configuration;

namespace lms.sis.SISPAGES
{
    public partial class ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rebind();
        }

        private void rebind()
        {
            ConnectionClass conn = new ConnectionClass();
            using (MySqlConnection connection = conn.GetConnection())
            {
                connection.Open();
                string selectquery = @"SELECT m.UserID, CONCAT(c.lastName, ' ', c.firstName) AS Name, m.Email, m.Password, m.Role
                    FROM manageuser m
                    LEFT JOIN currentstudents c ON m.UserID = c.id
                    UNION
                    SELECT ID, CONCAT(FirstName, ' ', LastName) AS Name, Email, '', 'Student'
                    FROM student";
                using (MySqlCommand command = new MySqlCommand(selectquery, connection))
                {
                    MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    Grid.DataSource = dataTable;
                    Grid.DataBind();
                }
                connection.Close();
                connection.Dispose();
            }
        }


        protected void MUsave_Click(object sender, EventArgs e)
        {
            ConnectionClass conn = new ConnectionClass();
            if (MUid.Text == "" || MUname.Text == "" || MUemail.Text == "" || txtpass.Text == "" || MUrole.Text == "")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Something went wrong...','Please fill out all the fields ','error')", true);
            }
            else
            {
                using (MySqlConnection connection = conn.GetConnection())
                {
                    try
                    {
                        connection.Open();
                        string insertQuery = "INSERT INTO manageuser (UserID, Name, Email, Password, Role) VALUES (@UserID, @Name, @Email, @Password, @Role)";
                        using (MySqlCommand command = new MySqlCommand(insertQuery, connection))
                        {
                            command.Parameters.AddWithValue("@UserID", MUid.Text);
                            command.Parameters.AddWithValue("@Name", MUname.Text);
                            command.Parameters.AddWithValue("@Email", MUemail.Text);
                            command.Parameters.AddWithValue("@Password", txtpass.Text);
                            command.Parameters.AddWithValue("@Role", MUrole.Text);
                            command.ExecuteNonQuery();
                        }

                        // Insert into currentstudents table if necessary
                        // Use similar logic as above to insert into currentstudents table

                        MUid.Text = "";
                        MUname.Text = "";
                        MUemail.Text = "";
                        txtpass.Text = "";
                        MUrole.Text = "";

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', 'added successfully!', 'success')", true);
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Something went wrong...','exception error','error')", true);
                    }
                    finally
                    {
                        rebind();
                    }
                }
            }
        }

        protected void Grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = Grid.SelectedIndex;
            if (selectedIndex >= 0)
            {
                DataKey selectedDataKey = Grid.DataKeys[selectedIndex];
                if (selectedDataKey != null)
                {
                    int UserID = Convert.ToInt32(selectedDataKey["UserID"]);
                    ConnectionClass conn = new ConnectionClass();

                    using (MySqlConnection connection = conn.GetConnection())
                    {
                        connection.Open();
                        string selectManageUser = "SELECT UserID, Name, Email, Password, Role FROM manageuser WHERE UserID = @UserID";
                        string selectCurrentStudent = @"SELECT ID AS UserID,
                                        CONCAT(FirstName, ' ', LastName) AS Name,
                                        Email,
                                        '' AS Password,
                                        'Student' AS Role
                                        FROM student
                                        WHERE ID = @UserID";

                        // Try to get data from manageuser table first
                        using (MySqlCommand command = new MySqlCommand(selectManageUser, connection))
                        {
                            command.Parameters.AddWithValue("@UserID", UserID);
                            using (MySqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.HasRows && reader.Read())
                                {
                                    MUid.Text = reader.GetString("UserID");
                                    MUname.Text = reader.GetString("Name");
                                    MUemail.Text = reader.GetString("Email");
                                    txtpass.Text = reader.GetString("Password");
                                    MUrole.Text = reader.GetString("Role");
                                    MUsave.Enabled = false;
                                    return; // Exit the method if data is found in manageuser table
                                }
                            }
                        }

                        // If data not found in manageuser, try to get data from student table
                        using (MySqlCommand command = new MySqlCommand(selectCurrentStudent, connection))
                        {
                            command.Parameters.AddWithValue("@UserID", UserID);
                            using (MySqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.HasRows && reader.Read())
                                {
                                    MUid.Text = reader.GetString("UserID");
                                    MUname.Text = reader.GetString("Name");
                                    MUemail.Text = reader.GetString("Email");
                                    txtpass.Text = ""; // No password field in student table, so leave it empty
                                    MUrole.Text = reader.GetString("Role"); // Default role for student
                                    MUsave.Enabled = false;
                                    return; // Exit the method if data is found in student table
                                }
                            }
                        }

                        // If no data found in either table, clear the form fields
                        MUid.Text = "";
                        MUname.Text = "";
                        MUemail.Text = "";
                        txtpass.Text = "";
                        MUrole.Text = "";
                        MUsave.Enabled = true;

                        connection.Close();
                    }
                }
            }

            Grid.BorderStyle = BorderStyle.None;
        }








        protected void MUsearch_Click(object sender, EventArgs e)
        {
            string search = txtMUsearch.Text;
            ConnectionClass conn = new ConnectionClass();

            using (MySqlConnection connection = conn.GetConnection())
            {
                connection.Open();

                string selectquery;

                if (!string.IsNullOrEmpty(search))
                {
                    selectquery = @"SELECT c.id AS UserID,
                                   CONCAT(c.firstName, ' ', c.lastName) AS Name,
                                   c.email AS Email,
                                   'student' AS Role
                            FROM currentstudents c
                            WHERE c.id = @search";
                }
                else
                {
                    selectquery = @"SELECT c.id AS UserID,
                                   CONCAT(c.firstName, ' ', c.lastName) AS Name,
                                   c.email AS Email,
                                   'student' AS Role
                            FROM currentstudents c";
                }

                using (MySqlCommand command = new MySqlCommand(selectquery, connection))
                {
                    if (!string.IsNullOrEmpty(search))
                    {
                        command.Parameters.AddWithValue("@search", search);
                    }

                    MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (dataTable.Rows.Count > 0)
                    {
                        Grid.DataSource = dataTable;
                        Grid.DataBind();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Info', 'No data found for the search criteria', 'info');", true);
                    }
                }
                connection.Close();
                connection.Dispose();
            }
        }




        protected void MUcancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }


        protected void MUupdate_Click(object sender, EventArgs e)
        {
            int selectedIndex = Grid.SelectedIndex;
            if (selectedIndex >= 0)
            {
                DataKey selectedDataKey = Grid.DataKeys[selectedIndex];
                if (selectedDataKey != null)
                {
                    int UserID = Convert.ToInt32(selectedDataKey["UserID"]);
                    ConnectionClass conn = new ConnectionClass();
                    using (MySqlConnection connection = conn.GetConnection())
                    {
                        string updatequery = "UPDATE `manageuser` SET `Name` = @Name, `Email` = @Email, `Password` = @Password, `Role` = @Role WHERE `UserID` = @UserID";
                        try
                        {
                            connection.Open();
                            // Update in manageuser table
                            using (MySqlCommand command = new MySqlCommand(updatequery, connection))
                            {
                                command.Parameters.AddWithValue("@UserID", UserID);
                                command.Parameters.AddWithValue("@Name", MUname.Text);
                                command.Parameters.AddWithValue("@Email", MUemail.Text);
                                command.Parameters.AddWithValue("@Password", txtpass.Text);
                                command.Parameters.AddWithValue("@Role", MUrole.Text);
                                command.ExecuteNonQuery();
                            }

                            // Update in currentstudents table if necessary
                            // Use similar logic as above to update in currentstudents table

                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!','Changes Have Been Saved!', 'success')", true);
                        }
                        catch (Exception ex)
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Something went wrong...','Please try again','error')", true);
                        }
                        finally
                        {
                            rebind();
                            Grid.SelectedIndex = -1;
                            MUid.Text = "";
                            MUname.Text = "";
                            MUemail.Text = "";
                            txtpass.Text = "";
                            MUrole.Text = "";
                            MUsave.Enabled = true;
                        }
                    }
                }
            }
        }



        protected void MUdelete_Click(object sender, EventArgs e)
        {
            int selectedIndex = Grid.SelectedIndex;
            if (selectedIndex >= 0)
            {
                DataKey selectedDataKey = Grid.DataKeys[selectedIndex];
                if (selectedDataKey != null)
                {
                    int UserID = Convert.ToInt32(selectedDataKey["UserID"]);
                    ConnectionClass conn = new ConnectionClass();
                    using (MySqlConnection connection = conn.GetConnection())
                    {
                        string deleteQuery = "DELETE FROM manageuser WHERE UserID = @UserID";
                        try
                        {
                            connection.Open();
                            // Delete from manageuser table
                            using (MySqlCommand command = new MySqlCommand(deleteQuery, connection))
                            {
                                command.Parameters.AddWithValue("@UserID", UserID);
                                command.ExecuteNonQuery();
                            }

                            // Delete from currentstudents table if necessary
                            // Use similar logic as above to delete from currentstudents table

                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!','Deleted!', 'success')", true);
                        }
                        catch (Exception ex)
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Something went wrong...','','error')", true);
                        }
                        finally
                        {
                            rebind();
                            Grid.SelectedIndex = -1;
                            MUid.Text = "";
                            MUname.Text = "";
                            MUemail.Text = "";
                            txtpass.Text = "";
                            MUrole.Text = "";
                            MUsave.Enabled = true;
                        }
                    }
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Something went wrong...','please select from the table below','error')", true);
                Grid.Focus();
                Grid.BorderStyle = BorderStyle.Solid;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/Account/Logout.aspx");
        }



    }

}