class Evento < ActiveRecord::Base
  mount_uploader :imagen, ImagenUploader
  
  
  #scope :ultimos_tres, -> {order ('created_at DESC'), limit: 3 }
  #scope :penultimos_tres, -> {order ('created_at DESC'),offset: 3 ,limit: 3 }
  scope :ultimos, ->(off,num) { order('created_at DESC').offset(off).limit(num) }
  
end
