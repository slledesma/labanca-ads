class Notifications < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.too_expensive.subject
  #
  def too_expensive(ad)
    @first_name = ad.user.first_name
    @title = ad.title

    mail :to => ad.user.email
  end
end
