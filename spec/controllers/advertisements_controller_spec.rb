require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AdvertisementsController do

  def mock_advertisement(stubs={})
    @mock_advertisement ||= mock_model(Advertisement, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all advertisements as @advertisements" do
      Advertisement.stub(:all) { [mock_advertisement] }
      get :index
      assigns(:advertisements).should eq([mock_advertisement])
    end
  end

  describe "GET show" do
    it "assigns the requested advertisement as @advertisement" do
      Advertisement.stub(:find).with("37") { mock_advertisement }
      get :show, :id => "37"
      assigns(:advertisement).should be(mock_advertisement)
    end
  end

  describe "GET new" do
    it "assigns a new advertisement as @advertisement" do
      Advertisement.stub(:new) { mock_advertisement }
      get :new
      assigns(:advertisement).should be(mock_advertisement)
    end
  end

  describe "GET edit" do
    it "assigns the requested advertisement as @advertisement" do
      Advertisement.stub(:find).with("37") { mock_advertisement }
      get :edit, :id => "37"
      assigns(:advertisement).should be(mock_advertisement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created advertisement as @advertisement" do
        Advertisement.stub(:new).with({'these' => 'params'}) { mock_advertisement(:save => true) }
        post :create, :advertisement => {'these' => 'params'}
        assigns(:advertisement).should be(mock_advertisement)
      end

      it "redirects to the created advertisement" do
        Advertisement.stub(:new) { mock_advertisement(:save => true) }
        post :create, :advertisement => {}
        response.should redirect_to(advertisement_url(mock_advertisement))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved advertisement as @advertisement" do
        Advertisement.stub(:new).with({'these' => 'params'}) { mock_advertisement(:save => false) }
        post :create, :advertisement => {'these' => 'params'}
        assigns(:advertisement).should be(mock_advertisement)
      end

      it "re-renders the 'new' template" do
        Advertisement.stub(:new) { mock_advertisement(:save => false) }
        post :create, :advertisement => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested advertisement" do
        Advertisement.stub(:find).with("37") { mock_advertisement }
        mock_advertisement.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :advertisement => {'these' => 'params'}
      end

      it "assigns the requested advertisement as @advertisement" do
        Advertisement.stub(:find) { mock_advertisement(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:advertisement).should be(mock_advertisement)
      end

      it "redirects to the advertisement" do
        Advertisement.stub(:find) { mock_advertisement(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(advertisement_url(mock_advertisement))
      end
    end

    describe "with invalid params" do
      it "assigns the advertisement as @advertisement" do
        Advertisement.stub(:find) { mock_advertisement(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:advertisement).should be(mock_advertisement)
      end

      it "re-renders the 'edit' template" do
        Advertisement.stub(:find) { mock_advertisement(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested advertisement" do
      Advertisement.stub(:find).with("37") { mock_advertisement }
      mock_advertisement.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the advertisements list" do
      Advertisement.stub(:find) { mock_advertisement }
      delete :destroy, :id => "1"
      response.should redirect_to(advertisements_url)
    end
  end

end
