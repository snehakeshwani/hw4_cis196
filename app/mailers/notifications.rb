class Notifications < ActionMailer::Base
  default from: "tasks@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_task.subject
  #
  def new_task(task)
    @greeting = "Hi"
    @id = task.id

    mail to: task.email
  end
end
