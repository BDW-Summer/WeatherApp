class CreateDasboards < ActiveRecord::Migration
  def change
    create_table :dasboards do |t|

      t.timestamps
    end
  end
end
