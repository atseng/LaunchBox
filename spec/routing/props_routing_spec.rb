require "spec_helper"

describe PropsController do
  describe "routing" do

    it "routes to #index" do
      get("/props").should route_to("props#index")
    end

    it "routes to #new" do
      get("/props/new").should route_to("props#new")
    end

    it "routes to #show" do
      get("/props/1").should route_to("props#show", :id => "1")
    end

    it "routes to #edit" do
      get("/props/1/edit").should route_to("props#edit", :id => "1")
    end

    it "routes to #create" do
      post("/props").should route_to("props#create")
    end

    it "routes to #update" do
      put("/props/1").should route_to("props#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/props/1").should route_to("props#destroy", :id => "1")
    end

  end
end
