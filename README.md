
# Doitpay QA Automation (Robot Framework)

This repository contains UI automation tests for the Doitpay tests using **Robot Framework** and **SeleniumLibrary**. 

---

# Project Structure

    ├── tests/                  
    │   └── login_suite.robot       # Contains test cases
    ├── resources/              
    │   └── loginPageObject
    │       └── loginApp.robot      # Reusable keywords (Page Objects)
    │   └── commonWeb.robot         # Common setup/teardown keywords
    ├── variables/              
    │   └── loginVariables.robot    # Global test data (usernames, passwords, URLs)
    └── README.md                   # Project documentation

---

# Prerequisites

Before running the tests, make sure you have the following installed:

- Python 3.8+
- [Robot Framework](https://robotframework.org/)
- SeleniumLibrary
- Chrome browser + ChromeDriver (if using Chrome)
---

# How to run the testcase

To run all test cases:

    robot -d /results tests/
