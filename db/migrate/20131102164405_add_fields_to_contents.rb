class AddFieldsToContents < ActiveRecord::Migration
  def self.up
  	add_column :contents, :title,  :string
  	add_column :contents, :body,  :text
  end

  def self.down
  	remove_column :contents, :title,  :string
  	remove_column :contents, :body,  :text
  end

end


