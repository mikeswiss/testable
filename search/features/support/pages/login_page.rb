class LoginPage
  include PageObject

    text_field(:email, id: "user_email")
    text_field(:password, id: "user_password")
    button(:login_button, class: "btn btn-primary btn-md login-button")
end
