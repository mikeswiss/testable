class CoursePage < SitePrism::Page
  set_url 'http://takehome.zeachable.com/p/take-home-test'

  element :next_lecture, '.next-lecture-wrapper'
  element :course_progress, '.percentage'
  elements :lectures, '.title-container'
end
