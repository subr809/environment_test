require "rails_helper"

RSpec.describe UsersBooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/users_books").to route_to("users_books#index")
    end

    it "routes to #new" do
      expect(get: "/users_books/new").to route_to("users_books#new")
    end

    it "routes to #show" do
      expect(get: "/users_books/1").to route_to("users_books#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/users_books/1/edit").to route_to("users_books#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/users_books").to route_to("users_books#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/users_books/1").to route_to("users_books#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/users_books/1").to route_to("users_books#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/users_books/1").to route_to("users_books#destroy", id: "1")
    end
  end
end
