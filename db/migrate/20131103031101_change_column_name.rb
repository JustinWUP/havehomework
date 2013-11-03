class ChangeColumnName < ActiveRecord::Migration
  def change
  	add_column :subjects, :name,  :text
  end
end
