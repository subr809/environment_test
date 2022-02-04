require "rails_helper"

RSpec.describe AddtoBooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/addto_books").to route_to("addto_books#index")
    end

    it "routes to #new" do
      expect(get: "/addto_books/new").to route_to("addto_books#new")
    end

    it "routes to #show" do
      expect(get: "/addto_books/1").to route_to("addto_books#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/addto_books/1/edit").to route_to("addto_books#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/addto_books").to route_to("addto_books#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/addto_books/1").to route_to("addto_books#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/addto_books/1").to route_to("addto_books#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/addto_books/1").to route_to("addto_books#destroy", id: "1")
    end
  end
end
