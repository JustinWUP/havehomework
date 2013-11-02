class GiveSubjectFields < ActiveRecord::Migration
  def up
  	add_column :subjects, :title,  :string
  	add_column :subjects, :description,  :text
  end

  def down
  	remove_column :subjects, :title,  :string
  	remove_column :subjects, :description,  :text
  end
end
