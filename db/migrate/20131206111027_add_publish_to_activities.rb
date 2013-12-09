class AddPublishToActivities < ActiveRecord::Migration
  def up
    add_column :refinery_activities, :publiceren, :boolean, { default: true }
    remove_column :refinery_activities,:profiel
    remove_column :refinery_activities,:hoofddoelgroep
  end
  
  def down
    remove_column :refinery_activities, :publiceren
    add_column :refinery_activities, :profiel, :string
    add_column :refinery_activities, :hoofddoelgroep, :string
  end  
end
