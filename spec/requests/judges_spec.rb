 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/judges", type: :request do
  
  # Judge. As you add validations to Judge, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Judge.create! valid_attributes
      get judges_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      judge = Judge.create! valid_attributes
      get judge_url(judge)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_judge_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      judge = Judge.create! valid_attributes
      get edit_judge_url(judge)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Judge" do
        expect {
          post judges_url, params: { judge: valid_attributes }
        }.to change(Judge, :count).by(1)
      end

      it "redirects to the created judge" do
        post judges_url, params: { judge: valid_attributes }
        expect(response).to redirect_to(judge_url(Judge.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Judge" do
        expect {
          post judges_url, params: { judge: invalid_attributes }
        }.to change(Judge, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post judges_url, params: { judge: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested judge" do
        judge = Judge.create! valid_attributes
        patch judge_url(judge), params: { judge: new_attributes }
        judge.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the judge" do
        judge = Judge.create! valid_attributes
        patch judge_url(judge), params: { judge: new_attributes }
        judge.reload
        expect(response).to redirect_to(judge_url(judge))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        judge = Judge.create! valid_attributes
        patch judge_url(judge), params: { judge: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested judge" do
      judge = Judge.create! valid_attributes
      expect {
        delete judge_url(judge)
      }.to change(Judge, :count).by(-1)
    end

    it "redirects to the judges list" do
      judge = Judge.create! valid_attributes
      delete judge_url(judge)
      expect(response).to redirect_to(judges_url)
    end
  end
end
