class AddFieldsToClassPeriod < ActiveRecord::Migration
  def change

    create_table :classperiods_users do |t|
      t.belongs_to :classperiod
      t.belongs_to :user
    end
    add_column :classperiods, :name,  :string
  	add_column :classperiods, :description,  :text
  end
end

