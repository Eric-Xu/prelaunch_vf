require 'spec_helper'

describe "Users" do

  describe "Sign_up page" do
    
    it "should have the h1 'Sign up page'" do
      visit '/users/sign_up'
      page.should have_selector('h1', text: 'Sign up')
    end

    it "should have the title 'Sign_up'" do
      visit '/users/sign_up'
      page.should have_selector('title', text: 'Vouchflow | Sign up')
    end
  end

  describe "Sign_in page" do
    
    it "should have the h1 'Sign in page'" do
      visit '/users/sign_in'
      page.should have_selector('h1', text: 'Sign in')
    end

    it "should have the title 'Sign_in'" do
      visit '/users/sign_in'
      page.should have_selector('title', text: 'Vouchflow | Sign in')
    end
  end

  describe "Thank you page" do
    
    it "should have the h1 'Thank you page'" do
      visit '/users/thank_you'
      page.should have_selector('h1', text: 'Thank you')
    end

    it "should have the title 'Thank you'" do
      visit '/users/thank_you'
      page.should have_selector('title', text: 'Vouchflow | Thank you')
  	end
  end  
end