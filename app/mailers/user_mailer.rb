class UserMailer < ApplicationMailer
    default from: 'no-reply@smashup.com'
 
    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'https://match-up-1.herokuapp.com/' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: "L'aventure commence sur SmashUp !") 
    end

end
