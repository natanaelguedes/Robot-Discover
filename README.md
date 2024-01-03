# README #

This is a mobile test automation project using the Robot Framework and Appium to test the Tracker CX2 app. The purpose of this automation is to validate Functional tests.

### How do I get set up? ###

* Install Visual Studio Code https://code.visualstudio.com/download
* Install Node.js https://nodejs.org/en
* Java JDK Development Kit https://www.oracle.com/br/java/technologies/downloads/
* Android Studio https://developer.android.com/?hl=pt-br
* Python https://www.python.org/downloads/

# Environment variables

Set up the Windows environment variables:

* Variable: ANDROID_HOME
Value: C:\Users\SAOIMACE\AppData\Local\Android\Sdk

* Variable: JAVA_HOME
Value: C:\Program Files\Java\jdk-21

* Edit the system variable 'Path' and create the new variables:
%JAVA_HOME%\bin
%ANDROID_HOME%\platform-tools

# Node JS

* Open the command prompt in the automation project folder and use the 'Node' command:
npm init

Press the enter key to move to the next parameter:

{
    "name": "appium-test",
    "version": "1.0.0",
    "description": "",
    "main": "index.js",
    "scripts": {
        "test": "echo \ "Error: no test specified\" && exit 1"
    },
    "author": "Ingrid Macedo",
    "license": "ISC"
}

# Appium

* Install Appium in the project folder: 
npm i appium

* Command to change the Appium version:
npm i appium@2.0.1

# Appium Doctor

* Install APPIUM DOCTOR to diagnose the automation environment:
npm i appium-doctor

* Command to run a diagnosis with Appium Doctor:
npx appium-doctor --android

# Robot Framework

Use the command to install Robot Framework:
pip install robotframework

# Android Studio

'Create Device' in the 'Virtual Device Manager' option of Android Studio and run it.

# Appium Inspector

* Command to install UIAutomator to interact with the app's elements:
npx appium driver install uiautomator2 

* Install Appium Inspector:
https://github.com/appium/appium-inspector

Example JSON for inspecting the app's elements:
{
  "platformName": "Android",
  "appium:deviceName": "Android Emulator",
  "appium:automationName": "UIAutomator2",
  "appium:app": "C:\\TrackerCX2Tests\\qa_tracker_cx2\\app\\TrackerCx_release_v2.3.2-dev(775).apk",
  "appium:udid": "emulator-5554"
}

Remote Host: 127.0.0.1
Remote Port: 4723
Remote Path: Null

# Appium Capabilities

* "Capabilities" is the name given to the set of parameters used to start an Appium session:
https://appium.io/docs/en/2.1/guides/caps/

* Command to check the device's capability 'udid':
adb devices

The capabilities in Appium Inspector should be in camelCase format.

The default port for Appium is 4723.

Start the session in Appium Inspector after providing the necessary capabilities.

# Appium Server
Always start the Appium server before initiating the Appium Inspector session or running the automation command.

* Command to start the Appium server:
npx appium

* Press the keyboard keys 'Ctrl' + 'C' to shut down the Appium server.

# Visual Studio Code

* Open the automation project folder in VSCode.

* Install the extensions:
Material Icon Theme
Robot Framework Language Server

# Library installation

Command to install a library:

pip install --upgrade robotframework-appiumlibrary
pip install --upgrade robotframework-screencaplibrary
pip install git+https://github.com/rticau/ScreenCapLibrary.git

Restart the Appium server after library installation.

# Test automation execution

* Command to run the automation:
robot tests/login.robot

# Documentations

https://appium.io/docs/en/2.1/
https://robotframework.org/#getting-started
 
