class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.reject_mail.subject
  #
  def reject_mail
    @greeting = "Hi"

    mail to: "dongfeng.wei@hotmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.audit_mail.subject
  #
  def audit_mail
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
