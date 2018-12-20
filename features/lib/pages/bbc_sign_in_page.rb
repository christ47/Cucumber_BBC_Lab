require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL
  attr_accessor :dayofbirth, :monthofbirth, :yearofbirth

  def initialize
    @dayofbirth = '13'
    @monthofbirth = '06'
    @yearofbirth = '1992'
  end
  SIGN_IN_PAGE_URL = 'https://bbc.co.uk/signin'

  def visit_sign_in_page
    visit(SIGN_IN_PAGE_URL)
  end

  def fill_username_field
    fill_in('user-identifier-input', :with => "testingrow@gmail.com")
  end

  def username_error_message
    find('#form-message-username').text
  end

  def general_error_message
    find('#form-message-general').text
  end

  def fill_password_field(input)
    fill_in('password-input', :with => "#{input}")
  end

  def fill_in_postcode_field
    fill_in('postcode-input', :with => " ")
  end

  def click_continue_button
    click_button('submit-button')
  end

  def password_error_message
    find('#form-message-password').text
  end

  def click_register_now
    find("a[class='link link--primary']").click
  end

  def click_over_13
    find('a[aria-label="13 or over"]').click
  end

  def fill_in_DOB
    fill_in('day-input', :with => @dayofbirth)
    fill_in('dateOfBirthMonth', :with => @monthofbirth)
    fill_in('dateOfBirthYear', :with => @yearofbirth)
  end
end
