class CreateProjectEmpTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :project_emp_types do |t|
      t.references :project, foreign_key: true, nil: false
      t.references :emp_type, foreign_key: true, nil: false
    end
  end
end
