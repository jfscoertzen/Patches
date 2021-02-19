cd /home/Pi4s/
#rm -rf node_modules_backup
#mv node_modules.tar.gz /home/pi4s-admin/
#git config --global user.email "pi4s@gmail.com"
#git config --global user.name "Pi4s Server"
#git init
#git add -A
#git commit -a -m "Initial commit"
git am < /home/pi4s-admin/0002-End-of-week-checkin.patch
git am < /home/pi4s-admin/0002-Fixed-Kroondal-ETL-Machine-Data-Dates-Issue.patch
forever restart 0
forever restart 1
mongo localhost:27030/Pi4s --authenticationDatabase="admin" -u "Administrator" -p "Pi01V1gc" --eval="db['Machines.DataDates'].remove({}); db['Machines.Data'].remove({});"
