class HomePage
  include PageObject

    page_url "http://takehome.zeachable.com"

    a(:login, href: "/sign_in")
    div(:featured_course, class: "course-box-image-container")
    div(:take_home_course, text: "take home test")
end
