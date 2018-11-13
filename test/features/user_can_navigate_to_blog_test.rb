require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_see_the_homepage_again
    visit '/'
    click_on "Blog"

    assert_equal 200, page.status_code
    assert_equal '/blog', current_path
    assert page.has_content?("Blog Posts!")
  end
end
