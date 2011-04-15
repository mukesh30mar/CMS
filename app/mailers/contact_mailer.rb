class ContactMailer < ActionMailer::Base
  #default :from => "mukesh.sumit20@gmail.com"

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
  
   def messages(message)
p message    
 mail :to =>"mukesh.sumit20@gmail.com", :from => message.email, :subject => message.subject        
   end
end
