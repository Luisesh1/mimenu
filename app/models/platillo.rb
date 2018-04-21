class Platillo < ActiveRecord::Base
    belongs_to :restaurant
    mount_uploader :avatar, AvatarUploader
    validates :nombre,
    :descripcion,:avatar,:precio, presence: true
    
    def self.busqueda(bus)
        a=[]
        a += self.where("nombre LIKE ?", "%#{bus}%") unless bus.nil?
        a += self.joins(:restaurant).where("Restaurants.nombre LIKE ?", "%#{bus}%") unless bus.nil?
        a.uniq()
    end
end
