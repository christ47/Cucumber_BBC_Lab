Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in_link
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_now
end

When("I select I am over {int}") do |int|
  bbc_sign_in_page.click_over_13
end

When("I input my DOB") do
  bbc_sign_in_page.fill_in_DOB
  bbc_sign_in_page.click_continue_button
end

When(/^I input the necessary details with the password details (.*?)$/) do |password|
  bbc_sign_in_page.fill_username_field
  bbc_sign_in_page.fill_password_field(password)
  bbc_sign_in_page.fill_in_postcode_field
  end

Then(/^I receive the corresponding error (.*?)$/) do |error|
  expect(bbc_sign_in_page.password_error_message).to eq error
end
