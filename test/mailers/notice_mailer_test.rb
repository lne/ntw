require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "reject_mail" do
    mail = NoticeMailer.reject_mail
    assert_equal "Reject mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "audit_mail" do
    mail = NoticeMailer.audit_mail
    assert_equal "Audit mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
