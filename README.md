# android_app

Step 1: Clone the Git repo and set up the environemnt. Follow the below steps:
 a. mkdir test
 b. cd test
 c. git clone
 d. cd android_app
 e. bundle install
 
 After following above steps, your machine should be ready to run the tests.
 
 Step 2: Changes in tests to run them parallel.
 a. Open files lib/appium.txt and config/appium.txt
    And change the app path to the destination on your machine
    app = "/Users/shasharm/Workspace/test/android_app/app/SSapp-1.3.26.apk"
 b. Connect the real devices and do adb devices to get the device ids. And update udid field in appium text files   
    udid = <device-id>
 c. Run two appium servers as below so test can talk to them individually.
    node . -p 4492 -bp 2252 -U <udid>(as you mentioned in config/appium.txt)
    node . -p 4491 -bp 2252 -U <udid>(as you mentioned in lib/appium.txt)
    
Step 3: You all ready to run the tests in parllel. Just hit "rake" command 
    
