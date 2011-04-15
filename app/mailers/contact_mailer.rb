class ContactMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #
  # def message
  #   @greeting = "Hi"
  # 
  #   mail :to => "to@example.org"
  # end
  
   def message(message)
    subject        message.subject
    body           :message => message
    recipients     "mukesh.sumit20@gmail.com"
    from           message.email  
    sent_on        Time.now
      
   end
end
