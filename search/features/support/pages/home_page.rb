class HomePage < SitePrism::Page
  set_url 'http://takehome.zeachable.com'

  element :login, :xpath, "//a[@href='/sign_in']"
  element :featured_course, '.course-box-image-container'
  element :take_home_course, '.course-listing-title'
end
