#!/bin/bash

time=last7days

### Healthapi.insurancedekho.com ####
url1=healthapi.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "healthapi.insurancedekho.com "$0}'


#####Apiiims.insurancedekho.com #####

url1=apiitms.insurancedekho.com

wget -v --user report --password  '66gIbvD'  --no-check-certificate -O  $url1.html "http://172.30.10.131/nagios/cgi-bin/avail.cgi?show_log_entries=&host=nagios-server&service=$url1&timeperiod=$time&smon=2&sday=1&syear=2022&shour=0&smin=0&ssec=0&emon=4&eday=7&eyear=2022&ehour=24&emin=0&esec=0&rpttimeperiod=&assumeinitialstates=yes&assumestateretention=yes&assumestatesduringnotrunning=yes&includesoftstates=no&initialassumedservicestate=0&backtrack=4" -o /dev/null


cat $url1.html | grep serviceOK | head -1  | grep -o '.......%' | sed 's/>//g' |head -1 | awk '{print "apiitms.insurancedekho.com "$0}'

