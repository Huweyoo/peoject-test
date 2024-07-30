using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.IO;

namespace testingssss.Interface.form
{
    public partial class not_enrolled : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get form data with null checks
            string learnerReferenceNumber = this.learnerReferenceNumber?.Text ?? string.Empty;
            string firstName = this.firstName?.Text ?? string.Empty;
            string middleName = this.middleName?.Text ?? string.Empty;
            string lastName = this.lastName?.Text ?? string.Empty;
            string mobileNumber = this.mobileNumber?.Text ?? string.Empty;
            string gender = this.gender?.SelectedValue ?? string.Empty;
            string email = this.email?.Text ?? string.Empty;
            string psaBirthCertificateNumber = this.TextBox1?.Text ?? string.Empty;

            // Check if a file is uploaded
            if (FileUpload1.HasFile)
            {
                // Get file details
                string fileName = Path.GetFileName(FileUpload1.FileName);
                byte[] fileData = FileUpload1.FileBytes;

                // Retrieve connection string from web.config
                string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

                // Insert data into the student table
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    string studentQuery = @"INSERT INTO student 
                                             (LearnerReferenceNumber, FirstName, MiddleName, LastName, MobileNumber, Gender, Email, PSABirthCertificateNumber, BirthCertificateFile) 
                                             VALUES 
                                             (@LRN, @FirstName, @MiddleName, @LastName, @MobileNumber, @Gender, @Email, @PSABirthCertificateNumber, @BirthCertificateFile)";
                    using (MySqlCommand studentCommand = new MySqlCommand(studentQuery, connection))
                    {
                        // Add parameters to prevent SQL injection
                        studentCommand.Parameters.AddWithValue("@LRN", learnerReferenceNumber);
                        studentCommand.Parameters.AddWithValue("@FirstName", firstName);
                        studentCommand.Parameters.AddWithValue("@MiddleName", middleName);
                        studentCommand.Parameters.AddWithValue("@LastName", lastName);
                        studentCommand.Parameters.AddWithValue("@MobileNumber", mobileNumber);
                        studentCommand.Parameters.AddWithValue("@Gender", gender);
                        studentCommand.Parameters.AddWithValue("@Email", email);
                        studentCommand.Parameters.AddWithValue("@PSABirthCertificateNumber", psaBirthCertificateNumber);
                        studentCommand.Parameters.AddWithValue("@BirthCertificateFile", fileData);

                        try
                        {
                            connection.Open();
                            int studentRowsAffected = studentCommand.ExecuteNonQuery();

                            // Check if the data was successfully inserted into the student table
                            if (studentRowsAffected > 0)
                            {
                                // Data inserted successfully into student table
                                // Now insert data into manageuser table
                                string userQuery = @"INSERT INTO manageuser (Name, Email, Password, Role) 
                                                     VALUES (@Name, @Email, @Password, @Role)";
                                using (MySqlCommand userCommand = new MySqlCommand(userQuery, connection))
                                {
                                    // Default values
                                    string defaultPassword = "123";
                                    string defaultRole = "Student";

                                    // Add parameters
                                    userCommand.Parameters.AddWithValue("@Name", firstName + " " + lastName);
                                    userCommand.Parameters.AddWithValue("@Email", email);
                                    userCommand.Parameters.AddWithValue("@Password", defaultPassword);
                                    userCommand.Parameters.AddWithValue("@Role", defaultRole);

                                    // Execute the command
                                    int userRowsAffected = userCommand.ExecuteNonQuery();

                                    // Check if user data was inserted successfully
                                    if (userRowsAffected > 0)
                                    {
                                        // Redirect the user to the index page
                                        Response.Redirect("/landing/Interface/index.aspx");
                                    }
                                    else
                                    {
                                        // Failed to insert user data
                                        // Handle the error
                                        // For example, display an error message
                                        Response.Write("Failed to insert data into manageuser table.");
                                    }
                                }
                            }
                            else
                            {
                                // Failed to insert data into student table
                                // Handle the error
                                // For example, display an error message
                                Response.Write("Failed to insert data into student table.");
                            }
                        }
                        catch (Exception ex)
                        {
                            // Handle the exception (e.g., display an error message)
                            Response.Write("An error occurred: " + ex.Message);
                        }
                    }
                }
            }
            else
            {
                // No file uploaded
                // Handle the case where no file is uploaded
                // For example, display an error message
                Response.Write("Please upload a file.");
            }
        }
    }
}
