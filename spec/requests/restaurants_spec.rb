require 'rails_helper'

RSpec.describe "Restaurants", type: :request do
  describe "GET /restaurants/:slug" do
    fixtures :restaurants

    it "returns a 200 with the restaurants/show template" do
      get restaurant_url(slug: restaurants(:juke).slug)

      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
    end
  end
end
