# sudo /usr/sbin/ssmtp -t << EOF
# To:yogesh.gupta@insurancedekho.com
# From:insurance-Alerts
# Subject:cpu-utilization
# Content-Type: text/html;

# <h2>Cpu_utilization</h2><br>
# <br><br>
# Regards;<br>insurance.
# EOF



# root= insurancedekho.alerts@gmail.com
# mailhub=smtp.gmail.com:465
# rewriteDomain=gmail.com
# AuthUser=insurancedekho.alerts@gmail.com
# AuthPass=zmeejyxtkssfbggk
# FromLineOverride=YES
# UseTLS=YES



#echo -e "to: yogesh.gupta@insurancedekho.com\nsubject: test\n"| (cat - && uuencode /home/deployer/file.xls) | ssmtp insurancedekho.alerts@gmail.com


# echo "Message BodyC Here" |uuencode /home/deployer/file.xls| mail -r 'insurance@alert' -s "Subject Here" yogesh.gupta@insurancedekho.com


#echo -e "to: yogesh.gupta@insurancedekho.com\nsubject: test\n"|(cat - && uuencode /home/deployer/file.xls) | ssmtp yogesh.gupta@insurancedekho.com

#echo -e "to: sandeep.verma@insurancedekho.com\nsubject: test\n"|(cat - && uuencode /home/deployer/file.xls) | ssmtp sandeep.verma@insurancedekho.com




cat /etc/ssmtp/mail.txt | (cat - && uuencode /home/deployer/file.xls file.xls) | /sbin/ssmtp -vvvv yogesh.gupta@insurancedekho.com