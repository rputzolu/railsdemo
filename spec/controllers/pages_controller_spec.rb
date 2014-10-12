require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views
  describe "GET home" do
    # it "returns http success" do
    #   get :home
    #   expect(response).to have_http_status(:success)
    # end
    
    # it "has h1" do
    #   get "home" 
    #   response.should have_selector('h1',  text: 'Home')
    # end
    
 #   Cloud9 changes the title in its internal browser
    it "should have the right title" do
      get :home
      response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    # Cloud9 changes the title in its internal browser
    # it "should have the right title" do
    #   get :contact
    #   response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Contact")
    # end
  end
  
  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    
    # it "should have the right heading" do
    #   get :about
    #   response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | About")
    #   #expect(response).to  have_selector("h1", :content => "Ruby on Rails Tutorial Sample App | About")
    # end
  end
  
   describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
    
    # it "should have the right heading" do
    #   get :about
    #   response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | About")
    #   #expect(response).to  have_selector("h1", :content => "Ruby on Rails Tutorial Sample App | About")
    # end
  end

end
