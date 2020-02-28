jmeterpath=/Users/j.guo/Downloads/apache-jmeter-3.0/bin
input_file=/Users/j.guo/Perf-scripts-to-enable-HVS/datasetup/Mutations/sortedMultiOrg.csv
java -Xms2G -Xmx4G -jar $jmeterpath/ApacheJMeter.jar -n -t ingestion.jmx -Jthreads=200 -Jthroughput_per_min=50000 -Jinput_file=$input_file