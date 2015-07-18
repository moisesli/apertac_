class Directorio < ActiveRecord::Base
	mount_uploader :imagen1, DirectoriosUploader
	mount_uploader :imagen2, DirectoriosUploader
	mount_uploader :imagen3, DirectoriosUploader
	mount_uploader :imagen4, DirectoriosUploader
	mount_uploader :logo, DirectorioLogoUploader
end
