class CreateSpies < ActiveRecord::Migration[7.0]
  def change
    create_table :spies do |t|
      t.string :name
      t.string :mission

      t.timestamps
    end
  end
end
