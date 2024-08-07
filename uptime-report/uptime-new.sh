#!/bin/bash

time=last7days

### Healthapi.insurancedekho.com ####
url1=healthapi.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "healthapi.insurancedekho.com " "\t" $0}' > Healthapi.xls


#####Apiiims.insurancedekho.com #####

url1=apiitms.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "apiitms.insurancedekho.com " "\t" $0}'> apiiims.xls


#####b2capi.insurancedekho.com-home #####

url1=b2capi.insurancedekho.com-home

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "b2capi.insurancedekho.com " "\t" $0}'> b2capi.xls




#####quotes.insurancedekho.com #####

url1=quotes.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "quotes.insurancedekho.com " "\t" $0}'> quotes.xls

#####www.insurancedekho.com #####

url1=www.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "www.insurancedekho.com " "\t" $0}'> www.xls

#####masterdata.insurancedekho.com #####

url1=masterdata.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "masterdata.insurancedekho.com " "\t" $0}'> masterdata.xls



#####healthapi.insurancedekho.com #####

url1=healthapi.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "healthapi.insurancedekho.com " "\t" $0}'> healthapi.xls

#####apipos.insurancedekho.com-health #####

url1=apipos.insurancedekho.com-health

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "apipos.insurancedekho.com " "\t" $0}'> apipos.xls


#####pos.insurancedekho.com #####

url1=pos.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "pos.insurancedekho.com " "\t" $0}'> pos.xls


#####payment.insurancedekho.com #####

url1=payment.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "payment.insurancedekho.com " "\t" $0}' > payment.xls


#####encryption.insurancedekho.com #####

url1=encryption.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "encryption.insurancedekho.com " "\t" $0}'> encryption.xls





##--Combine all files


cat Healthapi.xls apiiims.xls b2capi.xls quotes.xls www.xls masterdata.xls healthapi.xls apipos.xls pos.xls payment.xls encryption.xls > uptime-report.xls

##--Sending file via mail

cat /home/deployer/uptime-mail.txt | (cat - && uuencode /home/deployer/uptime-report.xls  uptime-report.xls) | /sbin/ssmtp -vvvv $-vvvv yogesh.gupta@insurancedekho.com

rm -rf Healthapi.xls apiiims.xls b2capi.xls quotes.xls www.xls masterdata.xls healthapi.xls apipos.xls pos.xls payment.xls encryption.xls