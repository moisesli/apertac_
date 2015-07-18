class Anuncio < ActiveRecord::Base
	mount_uploader :imagen, AnunciosUploader
	mount_uploader :imagen1, AnunciosUploader
	mount_uploader :imagen2, AnunciosUploader
	mount_uploader :imagen3, AnunciosUploader
	mount_uploader :imagen4, AnunciosUploader
	mount_uploader :imagen5, AnunciosUploader
end
