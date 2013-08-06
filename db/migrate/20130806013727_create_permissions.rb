class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :action
      t.string :subject_class
      t.references :role

      t.timestamps
    end
    add_index :permissions, :role_id
  end
end
