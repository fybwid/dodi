require 'test_helper'

class IncomingMailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incoming_mail = incoming_mails(:one)
  end

  test "should get index" do
    get incoming_mails_url
    assert_response :success
  end

  test "should get new" do
    get new_incoming_mail_url
    assert_response :success
  end

  test "should create incoming_mail" do
    assert_difference('IncomingMail.count') do
      post incoming_mails_url, params: { incoming_mail: { title: 'Outgoing Mail Test', description: 'Test for Outgoing Mail Description' } }
    end

    assert_redirected_to incoming_mail_url(IncomingMail.last)
  end

  test "should show incoming_mail" do
    get incoming_mail_url(@incoming_mail)
    assert_response :success
  end

  test "should get edit" do
    get edit_incoming_mail_url(@incoming_mail)
    assert_response :success
  end

  test "should update incoming_mail" do
    patch incoming_mail_url(@incoming_mail), params: { incoming_mail: { title: 'Outgoing Mail Test Update', description: 'Test for Updating Outgoing Mail Description' } }
    assert_redirected_to incoming_mail_url(@incoming_mail)
  end

  test "should destroy incoming_mail" do
    assert_difference('IncomingMail.count', -1) do
      delete incoming_mail_url(@incoming_mail)
    end

    assert_redirected_to incoming_mails_url
  end
end
