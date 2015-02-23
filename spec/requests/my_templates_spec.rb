require 'rails_helper'

RSpec.describe "MyTemplates", type: :request do
  describe "GET /my_templates" do
    it "works! (now write some real specs)" do
      get my_templates_path
      expect(response).to have_http_status(200)
    end
  end
end
