require 'rails_helper'

RSpec.describe "Api::V1::Projects", type: :request do
  describe "GET /api/v1/projects" do
    it "works! (now write some real specs)" do
      get api_v1_projects_index_path
      expect(response).to have_http_status(200)
    end
  end
end
