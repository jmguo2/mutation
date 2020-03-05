jmeterpath=/Users/j.guo/Downloads/apache-jmeter-3.0/bin
input_file=/Users/j.guo/Perf-scripts-to-enable-HVS/datasetup/Mutations/singlexxl.csv
items_per_req=10
throughput_per_min_merge=500
throughput_per_min_convert=500

java -Xms1G -Xmx3G -jar $jmeterpath/ApacheJMeter.jar -n -t singleOrgMutateMerge.jmx -Jthreads=50 -Jthroughput_per_min_merge=$throughput_per_min_merge -Jinput_file=$input_file -Jitems_per_req=$items_per_req &
java -Xms1G -Xmx3G -jar $jmeterpath/ApacheJMeter.jar -n -t singleOrgMutateConvert.jmx -Jthreads=50 -Jthroughput_per_min_convert=$throughput_per_min_convert -Jinput_file=$input_file -Jitems_per_req=$items_per_req
