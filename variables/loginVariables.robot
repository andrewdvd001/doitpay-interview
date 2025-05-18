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
${VALID_USERNAME} =  AdaSubally
${VALID_PASSWORD} =  AdaSuballyPassword
${INVALID_USERNAME} =  AdaSuballyInvalid
${INVALID_PASSWORD} =  AdaSuballyPasswordInvalid