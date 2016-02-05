require "rails_helper"

RSpec.describe DownvotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/downvotes").to route_to("downvotes#index")
    end

    it "routes to #new" do
      expect(:get => "/downvotes/new").to route_to("downvotes#new")
    end

    it "routes to #show" do
      expect(:get => "/downvotes/1").to route_to("downvotes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/downvotes/1/edit").to route_to("downvotes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/downvotes").to route_to("downvotes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/downvotes/1").to route_to("downvotes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/downvotes/1").to route_to("downvotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/downvotes/1").to route_to("downvotes#destroy", :id => "1")
    end

  end
end
