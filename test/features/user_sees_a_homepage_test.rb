require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_it_creates_404_message_if_page_does_not_exist
    visit '/irish'

    assert page.has_content?('Page not found.')
    assert_equal 404, page.status_code
  end
end
