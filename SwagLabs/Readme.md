Swag Labs | Manual Web Application Testing

Project Overview
This project presents my manual testing of Swag Labs (SauceDemo), a sample e-commerce web application designed for software testing practice.
The objective was to verify core shopping workflows, investigate unexpected application behaviour, document test execution results, and report identified defects.
Application under test: https://www.saucedemo.com/
Project type: Individual QA practice project
Testing approach: Manual functional testing, positive and negative testing, regression-oriented scenarios, and exploratory testing.

Test Scope
The following areas were covered:
- User login and application behaviour for different test accounts
- Product catalogue and product details
- Product sorting by name and price
- Adding and removing products from the shopping cart
- Shopping cart contents and item consistency
- Checkout information form and input validation
- Order overview and checkout completion
- Reset App State functionality

Test Accounts
Standard User
Testing with standard_user focused on verifying the application's expected shopping workflows.
Documentation:
- Test Execution Report (PDF)
- Defect Report (CSV)
- Screenshots and Video Evidence

Problem User
Testing with problem_user focused on investigating inconsistent and unexpected application behaviour.
The SauceDemo application intentionally includes accounts that demonstrate problematic functionality. This makes the account useful for practising defect detection, investigation, and reporting.
Documentation:
- Test Execution Report (PDF)
- Defect Report (CSV)
- Screenshots and Video Evidence

Test Documentation and Evidence
The repository includes exported test execution reports, defect reports, screenshots, and screen recordings.
The evidence illustrates different aspects of the testing process, including product sorting, cart operations, application state reset, checkout validation, and inconsistent product information.
Some reported observations, particularly those related to input validation, may require confirmation against formal business requirements before being classified as confirmed product defects.

Tools and Skills Demonstrated
- Manual test execution
- Test case analysis
- Functional and negative testing
- Defect identification and reporting
- Expected versus actual result comparison
- Evidence collection through screenshots and screen recordings
- Test execution reporting

Key Learning Outcomes
This project helped me practise:
1. Comparing application behaviour across different user accounts.
2. Investigating failures in multi-step shopping workflows.
3. Documenting reproducible issues with supporting evidence.
4. Distinguishing confirmed functional failures from observations requiring requirements clarification.
5. Communicating testing results through structured reports.

Repository Structure
SwagLabs/
├── README.md
├── Standard_users/
│   ├── Defects_standard_user_SL-2024-02-21.csv
│   ├── SL-SL+standard_user+Test+run+2024_02_22+ver.V1.pdf
│   ├── Test run statndard_user.png
│   └── Attachments/
└── Problem_users/
    ├── SL-2024-02-22 Bug Report.csv
    ├── SL-SL+PROBLEM_USER+Test+run+2024_02_22+ver.+V1.pdf
    ├── Test run problem_user.png
    └── Attatchments_p/

Project Context
This is a public educational testing project and is separate from my commercial QA work.
The purpose of this repository is to demonstrate my manual testing approach, documentation practices, defect investigation, and ability to present test evidence.

