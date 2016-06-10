class CreateUsersAndGroups < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :groups do |t|
      t.string :name
      t.integer :size
      t.timestamps null: false
    end

    create_table :users_groups, id: false do |t|
      t.belongs_to :users, index: true
      t.belongs_to :groups, index: true
    end
  end
end
