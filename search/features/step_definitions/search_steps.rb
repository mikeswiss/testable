Given("I am on the Homepage") do
  visit(HomePage)
end

When("I select the featured course") do
  on(HomePage) do |page|
    page.take_home_course_element.click
  end
end

When("I complete the course") do
  on(CoursePage) do |page|
    page.wait_until { page.lectures_elements.count > 0 }
    @lectures = page.lectures_elements.count
    page.lectures_elements.first.click
  end
  on(LecturePage) do |page|
    # subtract one from lectures since last lecture redirects to course page
    i = 0
    @lectures = @lectures - 1
    while i < @lectures
      lecutre_title = page.lecture_heading
      page.complete_and_coninue
      # Wait for page lecture heading to change.
      # As the while loop clicks faster than the dom can update
      page.wait_until { page.lecture_heading != lecutre_title }
      i += 1
    end
  end
end

Then("the course should show {int}% complete") do |int|
  on(CoursePage) do |page|
    expect(page.course_progress).to eql("100%")
  end
end

Then("I should see the enroll in course for free button") do
  on(CoursePage) do |page|
    # puts page.enroll_for_free_btn.visible?
    # expect(page.enroll_for_free_btn.visible?)
  end
end

Given("I am logged in on the Homepage") do
  visit(HomePage) do |page|
    page.login
  end
  on(LoginPage)do |page|
    page.email="mswiss825@gmail.com"
    page.password="Test123"
    page.login_button
  end

end
