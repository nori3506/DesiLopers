class Image < ApplicationRecord
	mount_uploader :file_name, ImageUploader
  validates_presence_of :file_name

end