class AddAssignmentsUsersTable < ActiveRecord::Migration
  def change
    create_table :assignments_users do |t|
      t.belongs_to :assignment
      t.belongs_to :user
    end
  end
end
