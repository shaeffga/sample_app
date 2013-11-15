require 'spec_helper'

describe "User pages" do

  describe "sign_up page" do

    it "should have content" do 
      visit '/sign_up' 
      expect(page).to have_content'Sign Up'
    end
  end

  describe "profile page" do
  before { visit user_path(user) }

  it { should have_content(user.name) }
  it { should have_title(user.name) }
end
end