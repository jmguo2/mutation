import csv
result = {}
writefile = open('sortedMultiOrg.csv', 'w')
with open('multiorg.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=',', quotechar='"')
    for row in csvreader:
        if row[1] in result:
            result[row[1]].append(row)
        else:
            result[row[1]] = [row]

for key in result:
    for val in result[key]:
        writefile.write(','.join(val) + '\n')
