class Documento < ActiveRecord::Base	
	mount_uploader :archivo1, DocumentosArchivosUploader
	mount_uploader :archivo2, DocumentosArchivosUploader
	mount_uploader :archivo3, DocumentosArchivosUploader
	mount_uploader :archivo4, DocumentosArchivosUploader
	mount_uploader :archivo5, DocumentosArchivosUploader
	mount_uploader :imagen1, DocumentosUploader
	mount_uploader :imagen2, DocumentosUploader
	mount_uploader :imagen3, DocumentosUploader
	mount_uploader :imagen4, DocumentosUploader
	mount_uploader :imagen5, DocumentosUploader
end
