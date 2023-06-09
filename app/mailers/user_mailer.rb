# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'troxmail@yopmail.com'

  def welcome_email(user)
    # on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    # on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://troxfr.herokuapp.com/'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

  def loan_email(user)
    @user = user

    @url = 'https://troxfr.herokuapp.com/'

    mail(to: @user.tool.user.email, subject: 'Un utilisateur a loué ton outil!')
  end

  def loan_confirmation_email(loan)
    @loan = loan

    @url = 'https://troxfr.herokuapp.com/'

    mail(to: loan.user.email, subject: 'Tu as emprunté un outil!')
  end
end
