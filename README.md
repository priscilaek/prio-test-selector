# API Testing with Karate Framework

This project utilizes the Karate testing framework to perform API testing.

## Available Tests

This project delivers tests for the public Rest API available on [ReqRes](https://reqres.in/). The operations tested include:
- User creation
- User update
- User login and register
- Retrieve a single user's information
- Retrieve a user list
- User deletion

## Running the Tests

1. Download and install [Maven](https://maven.apache.org/download.cgi).
2. Clone this repository to your local machine.
3. Navigate to the project folder where the file `pom.xml` is located using your terminal/command prompt.
4. Execute the `mvn test` command to start the tests.

## Viewing Test Results 

After running the tests, the results will appear directly in the console output. Additionally, an HTML report will be generated. To view the HTML report:
- Navigate to the `target/karate-reports` folder in your project directory.
- Open the `karate-summary.html` file in your web browser.

## Test Details

The individual tests are designed to cover a variety of cases:
- Verifying user registration and login with correct and incorrect credentials.
- Updating a user with valid and invalid data.
- Creating a new user with valid and invalid data.
- Retrieving user information using a valid and invalid ID.
- Retrieving a user list using valid and invalid page numbers.
- Deleting a user with a valid and non-existent ID.
