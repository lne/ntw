# Preview all emails at http://localhost:3000/rails/mailers/notice_mailer
class NoticeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice_mailer/reject_mail
  def reject_mail
    NoticeMailer.reject_mail
  end

  # Preview this email at http://localhost:3000/rails/mailers/notice_mailer/audit_mail
  def audit_mail
    NoticeMailer.audit_mail
  end

end
