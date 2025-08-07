# Preview all emails at http://localhost:3000/rails/mailers/report_mailer_mailer
class ReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer_mailer/weekly_report
  def weekly_report
    ReportMailer.weekly_report
  end

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer_mailer/monthly_report
  def monthly_report
    ReportMailer.monthly_report
  end

end
