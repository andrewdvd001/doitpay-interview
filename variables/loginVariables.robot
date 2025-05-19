*** Variables ***
# Setup Browser
${BROWSER} =  chrome
${URL} =  https://example.com/login
${SELENIUM_TIMEOUT} =  5s

# Locator
${USERNAME_FIELD} =  id=username
${PASSWORD_FIELD} =  id=password
${SUBMIT_BUTTON} =  id=login-button

# Test Data
${VALID_USERNAME} =  standard_user
${VALID_PASSWORD} =  secret_sauce
${INVALID_USERNAME} =  standard_user1
${INVALID_PASSWORD} =  standard_user

#Security Data
${XSS_PAYLOAD} =  <script>alert('xss')</script>
${SQL_PAYLOAD} =   ' OR '1'='1' --