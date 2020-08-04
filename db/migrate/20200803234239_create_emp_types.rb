class CreateEmpTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :emp_types do |t|
      t.string :name, null: false, comment: "雇用形態"
    end
  end
end
