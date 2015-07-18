class Convocatoria < ActiveRecord::Base
	mount_uploader :imagen1, ConvocatoriasUploader
	mount_uploader :imagen2, ConvocatoriasUploader
	mount_uploader :imagen3, ConvocatoriasUploader
	mount_uploader :imagen4, ConvocatoriasUploader
end
