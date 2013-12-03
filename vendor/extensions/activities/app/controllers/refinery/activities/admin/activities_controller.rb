module Refinery
  module Activities
    module Admin
      class ActivitiesController < ::Refinery::AdminController

        crudify :'refinery/activities/activity',
                :title_attribute => 'naam',
                :xhr_paging => true

      end
    end
  end
end
