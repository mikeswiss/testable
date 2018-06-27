class LecturePage
  include PageObject

    form(:enroll_for_free_form, id: "sale_default2")
    div(:next_lecture, class: "next-lecture-wrapper")
    a(:complete_and_coninue, id: "lecture_complete_button")
    # Side Bar
    span(:course_progress, class: "percentage")
    divs(:lectures, class:"title-container")
    h2(:lecture_heading, id: "lecture_heading")
end
