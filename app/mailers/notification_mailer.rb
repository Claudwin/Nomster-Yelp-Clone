class NotificationMailer < ApplicationMailer
default from: "no-reply@nomsterapp.com" 

def comment_added
    mail(to: "claudwin.fortune@gmail.com", 
        subject: "A new comment was added" )
        
end
end
