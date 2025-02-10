# 📱 Mobile Automation Tests (Robot Framework + Appium)

This repository contains automated tests for a mobile application using **Robot Framework + Appium**.  
The tests were written for **Android 11** and include different test scenarios for stories and onboarding.  

## 📂 Project Structure  
- **`stories/`** – Tests for interactions with stories, including:  
  - Taps and swipes  
  - Locators search  
  - Interactions with UI elements  
  - Device interactions without locators  

- **`onboarding/`** – Tests for onboarding with different permissions and restrictions, including:  
  - Location selection  
  - Automatic city assignment  
  - Permission handling  

- **`requirements.txt`** – List of dependencies for setting up the test environment.  

## 🚀 How to Run the Tests  
1. Install dependencies:  
   ```sh
   pip install -r requirements.txt