class CreateSelfupdates < ActiveRecord::Migration
  def self.up
    create_table :selfupdates do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :selfupdates
  end
end
