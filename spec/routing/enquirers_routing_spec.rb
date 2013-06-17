require "spec_helper"

describe EnquirersController do
  describe "routing" do

    it "routes to #index" do
      get("/enquirers").should route_to("enquirers#index")
    end

    it "routes to #new" do
      get("/enquirers/new").should route_to("enquirers#new")
    end

    it "routes to #show" do
      get("/enquirers/1").should route_to("enquirers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enquirers/1/edit").should route_to("enquirers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enquirers").should route_to("enquirers#create")
    end

    it "routes to #update" do
      put("/enquirers/1").should route_to("enquirers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enquirers/1").should route_to("enquirers#destroy", :id => "1")
    end

  end
end
