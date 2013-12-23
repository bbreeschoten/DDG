module Refinery
  module Activities
    class Activity < Refinery::Core::BaseModel
      self.table_name = 'refinery_activities'

      attr_accessible :profiel, :publiceren, :profile_ids, :targetgroup_ids, :naam, :coverfoto_id, :beschrijving, :adres, :postcode, :woonplaats, :contact, :sitelink, :openingstijden, :grootte, :gemiddeld_aantal_clienten, :leeftijd_van, :leeftijd_tot, :voorwaarden, :rolstoelvriendelijk, :fysieke_toegankelijkheid, :benodigde_indicatie, :spelregels_vervoer, :tags, :position

      validates :naam, :presence => true, :uniqueness => true

      belongs_to :coverfoto, :class_name => '::Refinery::Image'
      
      has_many :targetings
      has_many :targetgroups, through: :targetings
      has_many :profilings
      has_many :profiles, through: :profilings
      
      def self.published
        where(:publiceren => true)
      end
      
      # nog nodig voor Refinery dashboard. Refinery moet naam gaan gebruiken i.p.v. profiel
      def profiel
        self.naam
      end  
              
      
      searchable do
        boolean :publiceren
        string :woonplaats
        text :naam, :beschrijving, :contact, :openingstijden, :voorwaarden, :fysieke_toegankelijkheid, :spelregels_vervoer, :tags, :benodigde_indicatie
        text :profiles do
          profiles.map { |p| p.name + " " + p.abbreviation }
        end
        text :targetgroups do
          targetgroups.map { |tg| tg.name + " " + tg.abbreviation }
        end
        integer :profile_ids, :multiple => true, :references => Profile
        integer :targetgroup_ids, :multiple => true, :references => Targetgroup
      end         
    end
  end
end
