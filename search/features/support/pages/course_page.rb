class CoursePage
  include PageObject

    page_url "http://takehome.zeachable.com/p/take-home-test"

    hidden_field(:enroll_for_free_btn, id: "enroll_button_top")
    form(:enroll_for_free_form, id: "sale_default2")
    div(:next_lecture, class: "next-lecture-wrapper")
    a(:complete_and_coninue, id: "lecture_complete_button")
    # Side Bar
    span(:course_progress, class: "percentage")
    divs(:lectures, class:"title-container")
end
