import csv 

files = ['cadence.all_users_small_fixed.csv', 'cadence.all_users_medium_fixed.csv', 'cadence.all_users_large_fixed.csv', 'cadence.all_users_xl_fixed.csv', 'cadence.no_profile_xxl.csv']
for inputf in files:
    f = open('targetIds.csv', 'a')
    with open(inputf) as input_file: 
        csv_input = csv.reader(input_file, delimiter=',')
        for line in csv_input:            
            f.write(line[0] + ',' + line[1] + ',' + line[2] + ','+ line[3] + ',' + line[4] + ',' + line[5] + ',' + line[6] + '\n')
