HOW TO RUNNING AUTOMATION

1.Install Python version 3+
2.Install Robot framework,pip ,robotframework-selenium2library,robotframework-appiumlibrary
3. Clone repo
4. Open project repo
5. run this command on your terminal :
    task logic :  python ./logic/test.py
    task automation api : robot -d "report" ./tests/api/reqresAPI.robot
    task automation web : robot -d "report" ./tests/web/checkoutE2E.robot
    task automation mobile : robot -d "report" ./tests/mobile/cekTarif.robot

Foldering :
logic -> berisi answer soal no 3 
report -> hasil generate automation dalam bentuk html report
resource : berisi keywords dan variable data
    api 
    mobile
    web
test : berisi fitur testcases
    api
    mobile
    web
