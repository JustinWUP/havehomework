class MakeAssignmentsPolymorphic < ActiveRecord::Migration
  def change
  	change_table(:assignments) do |t|
  		t.references :assignable, polymorphic: true
  	end
  end
end
