# == Schema Information
#
# Table name: projects
#
#  id                          :bigint           not null, primary key
#  allocation(配属部署)        :text(65535)
#  background(募集背景)        :text(65535)
#  benefit(仕事で得られるもの) :text(65535)
#  detail(業務内容)            :text(65535)
#  max_salary(上限想定年収)    :integer
#  min_salary(下限想定年収)    :integer
#  number_of_hire(採用人数)    :integer
#  place(勤務地)               :text(65535)
#  process(採用プロセス)       :text(65535)
#  requirement(応募資格)       :text(65535)
#  status(募集状況)            :string(255)
#  title(募集タイトル)         :string(255)
#  welfare(福利厚生)           :text(65535)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  company_id                  :bigint
#
# Indexes
#
#  index_projects_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#
class ProjectSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :title,
    :allocation,
    :detail,
    :main_image
  )


  def main_image
    object.main_image.url
  end

  belongs_to :company,  serializer: CompanySerializer

end
