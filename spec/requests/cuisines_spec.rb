require 'rails_helper'

RSpec.describe "Cuisines", type: :request do
  describe "GET /cuisines/:slug" do
    fixtures :cuisines

    it "returns a 200 status with the cuisines/show template" do
      get cuisine_path(slug: cuisines(:chicken).slug)

      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
    end
  end

end
