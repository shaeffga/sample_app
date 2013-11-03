require 'spec_helper'

describe "User pages" do

  describe "sign_up page" do

    it "should have_content('Sign up')" do
      visit '/sign_up' 
      expect(page).to have_title'| Sign Up'
    end

    it "should have content" do 
      visit '/sign_up' 
      expect(page).to have_content'Sign Up'
    end
  end
end