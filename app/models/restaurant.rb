class Restaurant < ActiveRecord::Base
    belongs_to :user
    has_many :platillos
    mount_uploader :avatar, AvatarUploader
end