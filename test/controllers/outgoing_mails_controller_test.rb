require 'test_helper'

class OutgoingMailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outgoing_mail = outgoing_mails(:one)
  end

  test "should get index" do
    get outgoing_mails_url
    assert_response :success
  end

  test "should get new" do
    get new_outgoing_mail_url
    assert_response :success
  end

  test "should create outgoing_mail" do
    assert_difference('OutgoingMail.count') do
      post outgoing_mails_url, params: { outgoing_mail: { title: 'Outgoing Mail Test', description: 'Test for Outgoing Mail Description' } }
    end

    assert_redirected_to outgoing_mail_url(OutgoingMail.last)
  end

  test "should show outgoing_mail" do
    get outgoing_mail_url(@outgoing_mail)
    assert_response :success
  end

  test "should get edit" do
    get edit_outgoing_mail_url(@outgoing_mail)
    assert_response :success
  end

  test "should update outgoing_mail" do
    patch outgoing_mail_url(@outgoing_mail), params: { outgoing_mail: { title: 'Outgoing Mail Test Update', description: 'Test for Updating Outgoing Mail Description' } }
    assert_redirected_to outgoing_mail_url(@outgoing_mail)
  end

  test "should destroy outgoing_mail" do
    assert_difference('OutgoingMail.count', -1) do
      delete outgoing_mail_url(@outgoing_mail)
    end

    assert_redirected_to outgoing_mails_url
  end
end
