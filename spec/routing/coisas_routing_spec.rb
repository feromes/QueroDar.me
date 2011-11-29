require "spec_helper"

describe CoisasController do
  describe "routing" do

    it "routes to #index" do
      get("/coisas").should route_to("coisas#index")
    end

    it "routes to #new" do
      get("/coisas/new").should route_to("coisas#new")
    end

    it "routes to #show" do
      get("/coisas/1").should route_to("coisas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coisas/1/edit").should route_to("coisas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coisas").should route_to("coisas#create")
    end

    it "routes to #update" do
      put("/coisas/1").should route_to("coisas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coisas/1").should route_to("coisas#destroy", :id => "1")
    end

  end
end
