# android_app

Step 1: Clone the Git repo and set up the environemnt. Follow the below steps:
 a. mkdir test
 b. cd test
 c. git clone https://github.com/shankybnl/android_app.git
 d. cd android_app
 e. bundle install
 
 After following above steps, your machine should be ready to run the tests.
 
 Step 2: Changes in tests to run them parallel.
 a. Open files- lib/appium.txt and config/appium.txt
    Change the app path to the destination on your machine
    app = "/Users/shasharm/Workspace/test/android_app/app/SSapp-1.3.26.apk"
 b. Connect the real devices and run "adb devices" command to get the device ids. Update udid fields in both appium text files  
    udid = <device-id>
 c. Run two appium servers as below so tests can talk to them individually.
    node . -p 4492 -bp 2252 -U <udid>(as you mentioned in config/appium.txt)
    node . -p 4491 -bp 2251 -U <udid>(as you mentioned in lib/appium.txt)
    
Step 3: You are ready to run the tests in parllel. Just hit "rake" command 
    
