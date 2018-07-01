class LecturePage < SitePrism::Page
  element :next_lecture, '.next-lecture-wrapper'
  element :complete_and_coninue, '#lecture_complete_button'
  element :course_progress, '.percentage'
  elements :lectures, '.title-container'
  element :lecture_heading, '#lecture_heading'
end
