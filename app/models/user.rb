# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tools # Un utilisateur peut avoir plusieurs outils
  has_many :loans # Un utilisateur peut avoir plusieurs emprunts
  has_one_attached :image_url # Un utilisateur peut avoir une image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, # On inclut les modules de Devise
         :recoverable, :rememberable, :validatable

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
