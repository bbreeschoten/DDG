module Refinery
  module Activities
    class ActivitiesController < ::ApplicationController

      before_filter :find_all_activities
      before_filter :find_page
      before_filter :find_active_facets

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @activity in the line below:
        present(@page)
      end

      def show
        @activity = Activity.find(params[:id])

        if(@active_facets.size > 0) 
           @other_activities = @activities
           @other_title = "Andere activiteiten"
        else
           @other_activities = Activity.find_all_by_woonplaats(@activity.woonplaats)
           @other_title = "Ook in " + @activity.woonplaats
        end
        
        @other_activities.delete_if {|a| a.id == @activity.id}
        
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @activity in the line below:
        present(@page)
      end

    protected

      def find_all_activities
        @search = Activity.search do
          fulltext params[:search]
          with(:publiceren, true)
          facet :profile_ids
          with(:profile_ids, params[:profile]) if params[:profile].present?
          facet :targetgroup_ids
          with(:targetgroup_ids, params[:targetgroup]) if params[:targetgroup].present?
          facet :woonplaats
          with(:woonplaats, params[:woonplaats]) if params[:woonplaats].present?
          paginate(:page => params[:page] || 1, :per_page => 3)
        end
        @activities = @search.results    
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/activities").first
      end
      
      def find_active_facets
        @active_facets = {}
        @active_facets[:search] = params[:search] if params[:search].present?
        @active_facets[:profile] = params[:profile] if params[:profile].present?
        @active_facets[:targetgroup] = params[:targetgroup] if params[:targetgroup].present?
        @active_facets[:woonplaats] = params[:woonplaats] if params[:woonplaats].present?
      end
      

    end
  end
end
