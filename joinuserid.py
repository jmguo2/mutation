import csv 

org_to_userid = {}
streamerorg = 'streamerStateOrgs.csv'

with open(streamerorg) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    for row in csv_reader:
        org_to_userid[str(row[2])] = str(row[0])

f = open('fixedstreamerorgs.csv', 'w')
filelist = ['large_user_file.csv','medium_user_file.csv', 'small_user_file.csv', 'xxl_user_file.csv', 'xl_user_file.csv']
for input in filelist:
    with open(input) as input_f: 
        csv_input = csv.reader(input_f, delimiter=',')
        for line in csv_input:
            username = line[1]
            userid = line[2]
            if(username in org_to_userid):
                print(line)
                commastring = ",".join(line)
                f.write(commastring + "\n")

