#!/bin/bash

email="$dev_email"
jenkins_user="$BUILD_USER"

extracted_username=$(echo "$email" | cut -d '@' -f1)

# Check if username is included in the extracted username
if [[ "$extracted_username" == *"$jenkins_user"* ]]; then

        password="$(openssl rand -base64 14)"
        ssh deployer@$IP "aws iam update-login-profile --user-name $USER_NAME --password $password";
        ssh deployer@$IP "echo 'Password: $password' >> new-password.txt";
        ssh deployer@$IP "cat /var/lib/jenkins/mails/aws-reset-mail.txt | (cat - && uuencode new-password.txt  new-password.txt) | /sbin/ssmtp $dev_email";
        ssh deployer@$IP "rm -rf new-password.txt";
else
    echo "Username not found in email. Exiting the job."
    exit 1
fi

################################################################################


#!/bin/bash

email= "$dev_email"
jenkins_user= "$BUILD_USER"
echo "$BUILD_USER"
echo "$jenkins_user"
extracted_username=$(echo "$email" | cut -d '@' -f1)

# Check if username is included in the extracted username
if [[ "$extracted_username" == *"$jenkins_user"* ]]; then

        password="$(openssl rand -base64 14)"
        ssh deployer@172.50.4.178 "aws iam update-login-profile --user-name $USER_NAME --password $password";
        ssh deployer@172.50.4.178 "echo 'Password: $password' >> new-password.txt";
        ssh deployer@172.50.4.178 "cat /var/lib/jenkins/mails/aws-reset-mail.txt | (cat - && uuencode new-password.txt  new-password.txt) | /sbin/ssmtp $dev_email";
        ssh deployer@172.50.4.178 "rm -rf new-password.txt";
else
    echo "Username not found in email. Exiting the job."
    exit 1
fi


###############################################################_____________________________________##########################################################


#!/bin/bash

# Function to clean and convert username to lowercase
clean_username() {
    local username="$1"
    # Remove non-alphanumeric characters and convert to lowercase
    cleaned_username=$(echo "$username" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')
    echo "$cleaned_username"
}

email_cut() {
    local email="$1"
    # Extract username from email address
    local username=$(echo "$email" | cut -d'@' -f1 | tr -d '.')
    echo "$username"
}

# Assign inputs from Jenkins parameters
username="$USER_INPUT_USERNAME"
email="$USER_INPUT_EMAIL"

# Clean and convert the username
cleaned_username=$(clean_username "$username")

# Output the final username
echo "Final Username: $cleaned_username"

if [ "$email" == "$BUILD_USER_EMAIL" ]; then
    echo "You can move to the next step."
else
    echo "Malicious activity detected! Email address doesn't match expected email."
fi

# Call the function to extract username from email and remove dots
final_email=$(email_cut "$email")

# Clean and convert the email username
cleaned_email=$(clean_username "$final_email")

# Output the final email username
echo "Final email username: $cleaned_email"

if [ "$cleaned_username" == "$cleaned_email" ]; then

    echo $USER_INPUT_USERNAME
    echo $USER_INPUT_EMAIL
    # password="$(openssl rand -base64 14)"
    # ssh deployer@172.50.4.178 "aws iam update-login-profile --user-name \"$USER_INPUT_USERNAME\" --password \"$password@1\""
    # ssh deployer@172.50.4.178 "echo 'Password: $password@1' >> new-password.txt"
    # ssh deployer@172.50.4.178 "cat /var/lib/jenkins/mails/aws-reset-mail.txt | (cat - && uuencode new-password.txt new-password.txt) | /sbin/ssmtp \"$USER_INPUT_EMAIL\""
    # ssh deployer@172.50.4.178 "rm -rf new-password.txt"
else
    echo "Malicious activity detected! Username doesn't match email username."
fi






