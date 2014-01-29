class ChangeFieldInClassperiodUsers < ActiveRecord::Migration
  def change
  	rename_column :classperiods_users, :classperiods_id,  :classperiod_id
  end
end
