require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  should_allow_values_for :title, 'test'
  should_allow_values_for :description, 'test'
  should_ensure_length_in_range :title, 3..25
  should_ensure_length_in_range :description, 10..1024
  
  
  def test_title_in_test_unit_style
    assert Blog.new(:title => 'test', :description => 'testtesttest').valid?
  end
end
