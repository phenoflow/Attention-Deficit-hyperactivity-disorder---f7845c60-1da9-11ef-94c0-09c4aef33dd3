# A. John, Y. Friedmann, M. DelPozo-Banos, A. Frizzati, T. Ford, A. Thapar, 2024.

import sys, csv, re

codes = [{"code":"dw1F.","system":"readv2"},{"code":"dw1L.","system":"readv2"},{"code":"dw1E.","system":"readv2"},{"code":"dw1H.","system":"readv2"},{"code":"dw1K.","system":"readv2"},{"code":"dw1G.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('attention-deficit-hyperactivity-disorder-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["attention-deficit-hyperactivity-disorder-adhd-medikinet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["attention-deficit-hyperactivity-disorder-adhd-medikinet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["attention-deficit-hyperactivity-disorder-adhd-medikinet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)