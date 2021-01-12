class CompanySerializer < ActiveModel::Serializer
  attributes(
    :id,
    :name,
    :main_image
  )
  
  def main_image
    object.main_image.url
  end
end
