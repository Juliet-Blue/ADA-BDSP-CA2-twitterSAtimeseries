#!/bin/bash

# clear ycsb database before running workload
mongo < deletetable.js

# workload a
~/ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ~/ycsb-0.17.0/workloads/workloada > outputMongoDB_workloada.txt

mongo < deletetable.js

# workload b 
~/ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ~/ycsb-0.17.0/workloads/workloadb > outputMongoDB_workloadb.txt

mongo < deletetable.js

# workload d
~/ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ~/ycsb-0.17.0/workloads/workloadd > outputMongoDB_workloadd.txt

mongo < deletetable.js

# workload f
~/ycsb-0.17.0/bin/ycsb.sh load mongodb -s -P ~/ycsb-0.17.0/workloads/workloadf > outputMongoDB_workloadf.txt

mongo < deletetable.js
