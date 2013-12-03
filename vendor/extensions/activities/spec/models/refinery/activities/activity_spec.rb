require 'spec_helper'

module Refinery
  module Activities
    describe Activity do
      describe "validations" do
        subject do
          FactoryGirl.create(:activity,
          :profiel => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:profiel) { should == "Refinery CMS" }
      end
    end
  end
end
