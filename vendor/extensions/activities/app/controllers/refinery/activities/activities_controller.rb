module Refinery
  module Activities
    class ActivitiesController < ::ApplicationController

      before_filter :find_all_activities
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @activity in the line below:
        present(@page)
      end

      def show
        @activity = Activity.find(params[:id])

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
          
        end
        @activities = @search.results      
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/activities").first
      end

    end
  end
end
