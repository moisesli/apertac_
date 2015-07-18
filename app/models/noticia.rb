class Noticia < ActiveRecord::Base
	mount_uploader :imagen1, NoticiasUploader
	mount_uploader :imagen2, NoticiasUploader
	mount_uploader :imagen3, NoticiasUploader
	mount_uploader :imagen4, NoticiasUploader
	mount_uploader :imagen5, NoticiasUploader
end
