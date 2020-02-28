import csv 

files = ['cadence.no_profile_xxl.csv']
for inputf in files:
    f = open('xxl_user_file.csv', 'a')
    with open(inputf) as input_file: 
        csv_input = csv.reader(input_file, delimiter=',')
        for line in csv_input:            
            f.write(line[0] + ',' + line[1] + ',' + line[2] + '\n')
