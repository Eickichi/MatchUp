class EventMailer < ApplicationMailer

    def thanks_event_email(order)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @user = User.find(order.user_id)
        @event = event
        @items = event.items
    
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'http://bryan-ajaro.fr/login'
    
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @user.email, subject: 'Votre commande #'+order.id.to_s)
      end
    
      def admin_order_email(event,admin)
        @user = User.find(event.user_id)
        @event = event
        @items = event.items
    
        mail(to: admin.email, subject: 'Nouvelle commande #'+order.id.to_s)
    
      end
    end
