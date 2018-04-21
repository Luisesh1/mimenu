class ExplorarController < ApplicationController
  def platillos
    @platillos = Platillo.all
  end

  def restaurantes
  end

  def busqueda
  end
end
