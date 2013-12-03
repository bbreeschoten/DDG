class CreateTargetgroups < ActiveRecord::Migration
  def change

    create_table :targetgroups do |t|
      t.string :name
      t.text :description
      t.string :abbreviation

      t.timestamps
    end

    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :abbreviation

      t.timestamps
    end

    create_table :targetings, :id => false do |t|
      t.integer :activity_id
      t.integer :targetgroup_id
    end

    create_table :profilings, :id => false do |t|
      t.integer :activity_id
      t.integer :profile_id
    end
  end
end
