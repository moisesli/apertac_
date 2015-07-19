class Presindente < ActiveRecord::Base
	mount_uploader :foto, PresidentesUploader
	mount_uploader :imagen1, PresidentesUploader
	mount_uploader :imagen2, PresidentesUploader
	mount_uploader :imagen3, PresidentesUploader
	mount_uploader :imagen4, PresidentesUploader
end
