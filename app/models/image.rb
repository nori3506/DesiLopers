class Image < ApplicationRecord
  mount_uploader :file_name, ImageUploader
  validates_presence_of :file_name
  alias_attribute :url, :file_name_url

  def to_s
    url
  end
end
