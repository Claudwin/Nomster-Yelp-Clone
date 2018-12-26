class NotificationMailer < ApplicationMailer
default from: "no-reply@nomsterapp.com" 

def comment_added(comment)
        @place = comment.place
        @place_owner = @place.user
    mail(to: @place_owner.email, 
        subject: "A new comment was added to #{@place.name}" )
        
end
end
