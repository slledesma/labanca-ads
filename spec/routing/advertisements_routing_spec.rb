require "spec_helper"

describe AdvertisementsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/advertisements" }.should route_to(:controller => "advertisements", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/advertisements/new" }.should route_to(:controller => "advertisements", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/advertisements/1" }.should route_to(:controller => "advertisements", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/advertisements/1/edit" }.should route_to(:controller => "advertisements", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/advertisements" }.should route_to(:controller => "advertisements", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/advertisements/1" }.should route_to(:controller => "advertisements", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/advertisements/1" }.should route_to(:controller => "advertisements", :action => "destroy", :id => "1")
    end

  end
end
