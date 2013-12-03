class CreateActivitiesActivities < ActiveRecord::Migration

  def up
    create_table :refinery_activities do |t|
      t.string :profiel
      t.string :naam
      t.integer :coverfoto_id
      t.text :beschrijving
      t.string :adres
      t.string :postcode
      t.string :woonplaats
      t.text :contact
      t.string :sitelink
      t.text :openingstijden
      t.string :hoofddoelgroep
      t.string :grootte
      t.integer :gemiddeld_aantal_clienten
      t.integer :leeftijd_van
      t.integer :leeftijd_tot
      t.text :voorwaarden
      t.boolean :rolstoelvriendelijk
      t.text :fysieke_toegankelijkheid
      t.string :benodigde_indicatie
      t.text :spelregels_vervoer
      t.string :tags
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-activities"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/activities/activities"})
    end

    drop_table :refinery_activities

  end

end
