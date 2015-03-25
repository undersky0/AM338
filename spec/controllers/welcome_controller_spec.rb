require 'rails_helper'
require 'spec_helper'
RSpec.describe WelcomeController, type: :controller do
  include Devise::TestHelpers
  it "should render the index view without a user" do
    get :index
    assert_response 302
  end
  
  it "should render the dashboard view with the angular template" do
    @user = FactoryGirl.create(:user)
    sign_in @user
    get :dashboard
    assert_template :dashboard
    assert_template layout: "layouts/angular"
  end
end
