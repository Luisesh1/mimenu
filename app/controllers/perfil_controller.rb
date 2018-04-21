class PerfilController < ApplicationController
  def index
    @restaurants = Restaurant.where(user_id:current_user.id)
    @platillos = Platillo.all.where(user_id:current_user.id).where(restaurant_id:nil)
    @user = current_user
    @numero_platillos = Platillo.all.where(user_id:current_user.id).count
  end
end
