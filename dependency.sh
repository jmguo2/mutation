saveFileName=/Users/j.guo/Perf-scripts-to-enable-HVS/datasetup/Mutations/multiorg1.csv
jmeterpath=/Users/j.guo/Downloads/apache-jmeter-3.0/bin
input_file=/Users/j.guo/Perf-scripts-to-enable-HVS/datasetup/Mutations/input/fixedstreamerorgs.csv
throughput_per_min=10000
threads=110
java -Xms2G -Xmx4G -jar $jmeterpath/ApacheJMeter.jar -n -t createEngagementDependencies.jmx -Jthreads=$threads -Jthroughput_per_min=$throughput_per_min -Jinput_file=$input_file -Jsave_file=$saveFileName