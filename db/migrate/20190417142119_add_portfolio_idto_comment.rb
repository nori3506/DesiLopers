class AddPortfolioIdtoComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :portfolio, foreign_key: true
  end
end
