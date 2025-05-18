# Doitpay QA Automation Test
This repository contains automated test cases for the Doitpay QA Automation Test built using [Robot Framework](https://robotframework.org/).

## 📁 Project Structure

├── tests/ # Contains test cases
│ └── login_suite.robot
├── resources/ # Reusable keywords (page objects)
│ └── loginApp.robot
├── variables/ # Global test data (usernames, passwords, URLs)
│ └── loginVariables.robot
├── common/ # Common setup/teardown keywords
│ └── commonWeb.robot
└── README.md # Project documentation


## Prerequisites

Before running the tests, make sure you have the following installed:

- Python 3.8+
- [Robot Framework](https://robotframework.org/)
- SeleniumLibrary
- Chrome browser + ChromeDriver (if using Chrome)

## How to run the testcase

To run all test cases:

    robot -d /results tests/