class CreateClassperiods < ActiveRecord::Migration
  def change
    create_table :classperiods do |t|

      t.timestamps
    end
  end
end
