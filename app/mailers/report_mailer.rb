class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.weekly_report.subject
  #
  def weekly_report
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.monthly_report.subject
  #
  def monthly_report
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
