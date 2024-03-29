require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AuthenticationsController do

  before do
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
  end

  it "sets a session variable to the OmniAuth auth hash" do
    request.env["omniauth.auth"]['uid'].should == '123545'
  end
  
  # This should return the minimal set of attributes required to create a valid
  # Authentication. As you add validations to Authentication, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user_id" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AuthenticationsController. Be sure to keep this updated too.
  def valid_session
    {}
  end


=begin
  describe "GET index" do
    it "assigns all authentications as @authentications" do
      authentication = Authentication.create! valid_attributes
      get :index, {}, valid_session
      assigns(:authentications).should eq([authentication])
    end
  end

  describe "GET show" do
    it "assigns the requested authentication as @authentication" do
      authentication = Authentication.create! valid_attributes
      get :show, {:id => authentication.to_param}, valid_session
      assigns(:authentication).should eq(authentication)
    end
  end

  describe "GET new" do
    it "assigns a new authentication as @authentication" do
      get :new, {}, valid_session
      assigns(:authentication).should be_a_new(Authentication)
    end
  end

  describe "GET edit" do
    it "assigns the requested authentication as @authentication" do
      authentication = Authentication.create! valid_attributes
      get :edit, {:id => authentication.to_param}, valid_session
      assigns(:authentication).should eq(authentication)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Authentication" do
        expect {
          post :create, {:authentication => valid_attributes}, valid_session
        }.to change(Authentication, :count).by(1)
      end

      it "assigns a newly created authentication as @authentication" do
        post :create, {:authentication => valid_attributes}, valid_session
        assigns(:authentication).should be_a(Authentication)
        assigns(:authentication).should be_persisted
      end

      it "redirects to the created authentication" do
        post :create, {:authentication => valid_attributes}, valid_session
        response.should redirect_to(Authentication.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved authentication as @authentication" do
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication.any_instance.stub(:save).and_return(false)
        post :create, {:authentication => { "user_id" => "invalid value" }}, valid_session
        assigns(:authentication).should be_a_new(Authentication)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication.any_instance.stub(:save).and_return(false)
        post :create, {:authentication => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested authentication" do
        authentication = Authentication.create! valid_attributes
        # Assuming there are no other authentications in the database, this
        # specifies that the Authentication created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Authentication.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => authentication.to_param, :authentication => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested authentication as @authentication" do
        authentication = Authentication.create! valid_attributes
        put :update, {:id => authentication.to_param, :authentication => valid_attributes}, valid_session
        assigns(:authentication).should eq(authentication)
      end

      it "redirects to the authentication" do
        authentication = Authentication.create! valid_attributes
        put :update, {:id => authentication.to_param, :authentication => valid_attributes}, valid_session
        response.should redirect_to(authentication)
      end
    end

    describe "with invalid params" do
      it "assigns the authentication as @authentication" do
        authentication = Authentication.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication.any_instance.stub(:save).and_return(false)
        put :update, {:id => authentication.to_param, :authentication => { "user_id" => "invalid value" }}, valid_session
        assigns(:authentication).should eq(authentication)
      end

      it "re-renders the 'edit' template" do
        authentication = Authentication.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication.any_instance.stub(:save).and_return(false)
        put :update, {:id => authentication.to_param, :authentication => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested authentication" do
      authentication = Authentication.create! valid_attributes
      expect {
        delete :destroy, {:id => authentication.to_param}, valid_session
      }.to change(Authentication, :count).by(-1)
    end

    it "redirects to the authentications list" do
      authentication = Authentication.create! valid_attributes
      delete :destroy, {:id => authentication.to_param}, valid_session
      response.should redirect_to(authentications_url)
    end
  end
=end
end
