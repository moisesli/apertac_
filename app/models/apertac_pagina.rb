class ApertacPagina < ActiveRecord::Base
	mount_uploader :imagen1, ApertacPaginasUploader
	mount_uploader :imagen2, ApertacPaginasUploader
	mount_uploader :imagen3, ApertacPaginasUploader
	mount_uploader :imagen4, ApertacPaginasUploader
	mount_uploader :imagen5, ApertacPaginasUploader
	mount_uploader :imagen6, ApertacPaginasUploader
	mount_uploader :imagen7, ApertacPaginasUploader
	mount_uploader :imagen8, ApertacPaginasUploader
	mount_uploader :imagen9, ApertacPaginasUploader
	mount_uploader :imagen10, ApertacPaginasUploader
end
