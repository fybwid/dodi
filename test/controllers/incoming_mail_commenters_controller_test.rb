require 'test_helper'

class IncomingMailCommentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incoming_mail_commenter = incoming_mail_commenters(:one)
  end

  test "should get index" do
    get incoming_mail_commenters_url
    assert_response :success
  end

  test "should get new" do
    get new_incoming_mail_commenter_url
    assert_response :success
  end

  test "should create incoming_mail_commenter" do
    assert_difference('IncomingMailCommenter.count') do
      post incoming_mail_commenters_url, params: { incoming_mail_commenter: { body: @incoming_mail_commenter.body, commenter: @incoming_mail_commenter.commenter } }
    end

    assert_redirected_to incoming_mail_commenter_url(IncomingMailCommenter.last)
  end

  test "should show incoming_mail_commenter" do
    get incoming_mail_commenter_url(@incoming_mail_commenter)
    assert_response :success
  end

  test "should get edit" do
    get edit_incoming_mail_commenter_url(@incoming_mail_commenter)
    assert_response :success
  end

  test "should update incoming_mail_commenter" do
    patch incoming_mail_commenter_url(@incoming_mail_commenter), params: { incoming_mail_commenter: { body: @incoming_mail_commenter.body, commenter: @incoming_mail_commenter.commenter } }
    assert_redirected_to incoming_mail_commenter_url(@incoming_mail_commenter)
  end

  test "should destroy incoming_mail_commenter" do
    assert_difference('IncomingMailCommenter.count', -1) do
      delete incoming_mail_commenter_url(@incoming_mail_commenter)
    end

    assert_redirected_to incoming_mail_commenters_url
  end
end
