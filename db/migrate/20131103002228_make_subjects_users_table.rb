class MakeSubjectsUsersTable < ActiveRecord::Migration
  def change
    create_table :subjects_users do |t|
      t.belongs_to :subject
      t.belongs_to :user
    end
  end
end