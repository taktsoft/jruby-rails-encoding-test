# encoding: utf-8

require 'test_helper'

class JrubyEncodingTest < ActionView::TestCase
  def test_view_rendering
    av = ActionView::Base.new(Rails.root.join('app', 'views'))
    assert_equal "<p>hellö</p>\n", av.render(:template => "jruby/index")
  end
end
