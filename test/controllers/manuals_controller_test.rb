# frozen_string_literal: true

require 'test_helper'

class ManualsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get manuals_index_url
    assert_response :success
  end

  test 'should get show' do
    get manuals_show_url
    assert_response :success
  end
end
