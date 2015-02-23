require "rails_helper"

RSpec.describe MyTemplatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_templates").to route_to("my_templates#index")
    end

    it "routes to #new" do
      expect(:get => "/my_templates/new").to route_to("my_templates#new")
    end

    it "routes to #show" do
      expect(:get => "/my_templates/1").to route_to("my_templates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my_templates/1/edit").to route_to("my_templates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/my_templates").to route_to("my_templates#create")
    end

    it "routes to #update" do
      expect(:put => "/my_templates/1").to route_to("my_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_templates/1").to route_to("my_templates#destroy", :id => "1")
    end

  end
end
