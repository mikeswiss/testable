Given("I am on the Homepage") do
  @home = HomePage.new
  @home.load
end

When("I select the featured course") do
  @home.featured_course.click
end

When("I complete the course") do
  @course_page = CoursePage.new
  @course_page.wait_for_lectures
  @lectures = @course_page.lectures.count
  puts @lectures
  @course_page.lectures.first.click
  @LecturePage = LecturePage.new
  # subtract one from lectures since last lecture redirects to course page
  i = 0
  @lectures = @lectures - 1
  while i < @lectures
    lecutre_title = @LecturePage.lecture_heading.text
    @LecturePage.complete_and_coninue.click
    # Wait for page lecture heading to change.
    # As the while loop clicks faster than the dom can update
    sleep(1) while @LecturePage.lecture_heading.text == lecutre_title
    i += 1
  end
end

Then("the course should show {int}% complete") do |int|
    expect(@course_page.course_progress.text).to eql("100%")
end


Given("I am logged in on the Homepage") do
  @home = HomePage.new
  @home.load
  @home.login.click
  @login_page = LoginPage.new
  @login_page.email.set "mswiss825@gmail.com"
  @login_page.password.set "Test123"
  @login_page.login_button.click
end
