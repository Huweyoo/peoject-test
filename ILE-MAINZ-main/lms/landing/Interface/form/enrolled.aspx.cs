using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.IO;

namespace testingssss.Interface.form
{
    public partial class enrolled : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get form data
            string email = this.email.Text;
            string learnerReferenceNumber = this.learnerReferenceNumber.Text;
            string firstName = this.firstName.Text;
            string middleName = this.middleName.Text;
            string lastName = this.lastName.Text;
            string mobileNumber = this.mobileNumber.Text;
            string gender = this.gender.SelectedValue;
            string psaBirthCertificateNumber = this.TextBox1.Text;

            // Check if a file is uploaded
            if (FileUpload1.HasFile)
            {
                // Get file details
                string fileName = Path.GetFileName(FileUpload1.FileName);
                byte[] fileData = FileUpload1.FileBytes;

                // Retrieve connection string from web.config
                string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

                // Insert data into the currentstudents table
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    string query = @"INSERT INTO currentstudents (email, learnerReferenceNumber, firstName, middleName, lastName, mobileNumber, gender, psaBirthCertificateNumber, quarterlyGrade, createdAt) 
                                     VALUES (@Email, @LRN, @FirstName, @MiddleName, @LastName, @MobileNumber, @Gender, @PSABirthCertificateNumber, @QuarterlyGrade, CURRENT_TIMESTAMP)";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@LRN", learnerReferenceNumber);
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@MiddleName", middleName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@MobileNumber", mobileNumber);
                        command.Parameters.AddWithValue("@Gender", gender);
                        command.Parameters.AddWithValue("@PSABirthCertificateNumber", psaBirthCertificateNumber);
                        command.Parameters.AddWithValue("@QuarterlyGrade", fileData);

                        try
                        {
                            connection.Open();
                            int rowsAffected = command.ExecuteNonQuery();
                            // Check if the data was successfully inserted
                            if (rowsAffected > 0)
                            {
                                // Data inserted successfully into currentstudents table
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
                                    }
                                }
                            }
                            else
                            {
                                // Failed to insert data into currentstudents table
                                // Handle the error
                            }
                        }
                        catch (Exception ex)
                        {
                            // Handle the exception (e.g., display an error message)
                        }
                    }
                }
            }
            else
            {
                // No file uploaded
                // Handle the case where no file is uploaded
            }
        }
    }
}
