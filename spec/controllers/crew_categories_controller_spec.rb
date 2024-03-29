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

describe CrewCategoriesController do

  # This should return the minimal set of attributes required to create a valid
  # CrewCategory. As you add validations to CrewCategory, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CrewCategoriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all crew_categories as @crew_categories" do
      crew_category = CrewCategory.create! valid_attributes
      get :index, {}, valid_session
      assigns(:crew_categories).should eq([crew_category])
    end
  end

  describe "GET show" do
    it "assigns the requested crew_category as @crew_category" do
      crew_category = CrewCategory.create! valid_attributes
      get :show, {:id => crew_category.to_param}, valid_session
      assigns(:crew_category).should eq(crew_category)
    end
  end

  describe "GET new" do
    it "assigns a new crew_category as @crew_category" do
      get :new, {}, valid_session
      assigns(:crew_category).should be_a_new(CrewCategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested crew_category as @crew_category" do
      crew_category = CrewCategory.create! valid_attributes
      get :edit, {:id => crew_category.to_param}, valid_session
      assigns(:crew_category).should eq(crew_category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CrewCategory" do
        expect {
          post :create, {:crew_category => valid_attributes}, valid_session
        }.to change(CrewCategory, :count).by(1)
      end

      it "assigns a newly created crew_category as @crew_category" do
        post :create, {:crew_category => valid_attributes}, valid_session
        assigns(:crew_category).should be_a(CrewCategory)
        assigns(:crew_category).should be_persisted
      end

      it "redirects to the created crew_category" do
        post :create, {:crew_category => valid_attributes}, valid_session
        response.should redirect_to(CrewCategory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved crew_category as @crew_category" do
        # Trigger the behavior that occurs when invalid params are submitted
        CrewCategory.any_instance.stub(:save).and_return(false)
        post :create, {:crew_category => {}}, valid_session
        assigns(:crew_category).should be_a_new(CrewCategory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CrewCategory.any_instance.stub(:save).and_return(false)
        post :create, {:crew_category => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested crew_category" do
        crew_category = CrewCategory.create! valid_attributes
        # Assuming there are no other crew_categories in the database, this
        # specifies that the CrewCategory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CrewCategory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => crew_category.to_param, :crew_category => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested crew_category as @crew_category" do
        crew_category = CrewCategory.create! valid_attributes
        put :update, {:id => crew_category.to_param, :crew_category => valid_attributes}, valid_session
        assigns(:crew_category).should eq(crew_category)
      end

      it "redirects to the crew_category" do
        crew_category = CrewCategory.create! valid_attributes
        put :update, {:id => crew_category.to_param, :crew_category => valid_attributes}, valid_session
        response.should redirect_to(crew_category)
      end
    end

    describe "with invalid params" do
      it "assigns the crew_category as @crew_category" do
        crew_category = CrewCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CrewCategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => crew_category.to_param, :crew_category => {}}, valid_session
        assigns(:crew_category).should eq(crew_category)
      end

      it "re-renders the 'edit' template" do
        crew_category = CrewCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CrewCategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => crew_category.to_param, :crew_category => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested crew_category" do
      crew_category = CrewCategory.create! valid_attributes
      expect {
        delete :destroy, {:id => crew_category.to_param}, valid_session
      }.to change(CrewCategory, :count).by(-1)
    end

    it "redirects to the crew_categories list" do
      crew_category = CrewCategory.create! valid_attributes
      delete :destroy, {:id => crew_category.to_param}, valid_session
      response.should redirect_to(crew_categories_url)
    end
  end

end
