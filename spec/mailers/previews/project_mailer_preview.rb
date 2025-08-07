# Preview all emails at http://localhost:3000/rails/mailers/project_mailer_mailer
class ProjectMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/project_mailer_mailer/project_created
  def project_created
    ProjectMailer.project_created
  end

  # Preview this email at http://localhost:3000/rails/mailers/project_mailer_mailer/project_updated
  def project_updated
    ProjectMailer.project_updated
  end

  # Preview this email at http://localhost:3000/rails/mailers/project_mailer_mailer/deadline_reminder
  def deadline_reminder
    ProjectMailer.deadline_reminder
  end

end
