class Webamiga < ActiveRecord::Base
	mount_uploader :logo, WebAmigasUploader	
	mount_uploader :imagen1, WebAmigasUploader
	mount_uploader :imagen2, WebAmigasUploader
end
