# frozen_string_literal: true

class UsersController < ApplicationController
  # show permet d'afficher un utilisateur
  def show
    @user = User.find(params[:id])
  end

  # show_tools permet d'afficher les outils d'un utilisateur
  def show_tools
    @user = current_user # On récupère l'utilisateur connecté
    @tools = @user.tools # On récupère les outils de l'utilisateur connecté
  end
end
