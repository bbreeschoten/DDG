module Refinery
  module Activities
    class Activity < Refinery::Core::BaseModel
      self.table_name = 'refinery_activities'

      attr_accessible :profiel, :profile_ids, :targetgroup_ids, :naam, :coverfoto_id, :beschrijving, :adres, :postcode, :woonplaats, :contact, :sitelink, :openingstijden, :hoofddoelgroep, :grootte, :gemiddeld_aantal_clienten, :leeftijd_van, :leeftijd_tot, :voorwaarden, :rolstoelvriendelijk, :fysieke_toegankelijkheid, :benodigde_indicatie, :spelregels_vervoer, :tags, :position

      validates :naam, :presence => true, :uniqueness => true

      belongs_to :coverfoto, :class_name => '::Refinery::Image'
      
      has_many :targetings
      has_many :targetgroups, through: :targetings
      has_many :profilings
      has_many :profiles, through: :profilings
      
      
    end
  end
end
