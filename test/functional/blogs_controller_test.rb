require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  def test_get_index
    get(:index)
    assert_response(:success)
    assert(assigns(:blogs))
  end
end
