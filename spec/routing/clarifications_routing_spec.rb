require "rails_helper"

RSpec.describe ClarificationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/clarifications").to route_to("clarifications#index")
    end

    it "routes to #new" do
      expect(get: "/clarifications/new").to route_to("clarifications#new")
    end

    it "routes to #show" do
      expect(get: "/clarifications/1").to route_to("clarifications#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/clarifications/1/edit").to route_to("clarifications#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/clarifications").to route_to("clarifications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/clarifications/1").to route_to("clarifications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/clarifications/1").to route_to("clarifications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/clarifications/1").to route_to("clarifications#destroy", id: "1")
    end
  end
end
