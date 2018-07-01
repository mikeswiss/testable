class LoginPage < SitePrism::Page

  element :email, '#user_email'
  element :password, '#user_password'
  element :login_button, :xpath, "//input[@name='commit']"
end
