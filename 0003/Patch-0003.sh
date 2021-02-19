cd /home/Pi4s/
git am < /home/pi4s-admin/0003-Fixed-Equipment-and-Resource-Check-Inserts.patch
forever restart 0
forever restart 1
mongo localhost:27030/Pi4s --authenticationDatabase="admin" -u "Administrator" -p "Pi01V1gc" --eval="db['Machines.MetricViews'].remove({}); db['Machines.DataDates'].remove({}); db['Machines.Data'].remove({});"
