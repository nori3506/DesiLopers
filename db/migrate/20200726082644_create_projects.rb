class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title, comment: '募集タイトル'
      t.references :company, foreign_key: true, nil: false
      t.string :status, comment: '募集状況'
      t.text :background, comment: '募集背景'
      t.text :allocation, comment: '配属部署'
      t.text :detail, comment: '業務内容'
      t.text :requirement, comment: '応募資格'
      t.text :benefit, comment: '仕事で得られるもの'
      t.string :emp_type, comment: '雇用形態'
      t.integer :min_salary, comment: '下限想定年収'
      t.integer :max_salary, comment: '上限想定年収'
      t.integer :number_of_hire, comment: '採用人数'
      t.text :process, comment: '採用プロセス'
      t.text :place, comment: '勤務地'
      t.text :welfare, comment: '福利厚生'
      t.timestamps
    end
  end
end
