#! /bin/bash

# open mysql select benchtest and clear entries in usertable
mysql -uroot -ppassword BenchTest -Be "select * from usertable;delete from usertable;"

# yscb workloada - update heavy
~/ycsb-0.17.0/bin/ycsb.sh load jdbc -P ~/ycsb-0.17.0/jdbc-binding/conf/db.properties -P ~/ycsb-0.17.0/workloads/workloada > outputMYSQL_workloada.txt

mysql -uroot -ppassword BenchTest -Be "select * from usertable;delete from usertable;"

# ycsb workload b
~/ycsb-0.17.0/bin/ycsb.sh load jdbc -P ~/ycsb-0.17.0/jdbc-binding/conf/db.properties -P ~/ycsb-0.17.0/workloads/workloadb > outputMYSQL_workloadb.txt

mysql -uroot -ppassword BenchTest -Be "select * from usertable;delete from usertable;"

# ycsb workload d
~/ycsb-0.17.0/bin/ycsb.sh load jdbc -P ~/ycsb-0.17.0/jdbc-binding/conf/db.properties -P ~/ycsb-0.17.0/workloads/workloadd > outputMYSQL_workloadd.txt

mysql -uroot -ppassword BenchTest -Be "select * from usertable;delete from usertable;"

# ycsb workload f
~/ycsb-0.17.0/bin/ycsb.sh load jdbc -P ~/ycsb-0.17.0/jdbc-binding/conf/db.properties -P ~/ycsb-0.17.0/workloads/workloadf > outputMYSQL_workloadf.txt

mysql -uroot -ppassword BenchTest -Be "select * from usertable;delete from usertable;"
