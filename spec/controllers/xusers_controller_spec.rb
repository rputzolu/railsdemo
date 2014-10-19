=begin
require 'rails_helper'

RSpec.describe XusersController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
=end

require 'spec_helper'
require 'rails_helper'
describe XusersController do
  render_views
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
       expect(response).to have_selector("title")
    end
  end
end