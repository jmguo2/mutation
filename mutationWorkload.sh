jmeterpath=/Users/j.guo/Downloads/apache-jmeter-3.0/bin
input_file=/Users/j.guo/Perf-scripts-to-enable-HVS/datasetup/Mutations/shuffledMultiOrg.csv
java -Xms1G -Xmx3G -jar $jmeterpath/ApacheJMeter.jar -n -t createMutateEvents.jmx -Jthreads=90 -Jthroughput_per_min_merge=6000 -Jinput_file=$input_file &
java -Xms1G -Xmx3G -jar $jmeterpath/ApacheJMeter.jar -n -t createMutateEventsConvert.jmx -Jthreads=90 -Jthroughput_per_min_convert=7500 -Jinput_file=$input_file