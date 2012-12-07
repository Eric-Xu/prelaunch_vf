require 'spec_helper'

describe "Users" do
  subject { page }

  describe "Sign_up page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'Sign up') }
	  it { should have_selector('title', text: 'Vouchflow') }  
    it { should_not have_selector('title', text: '| Sign up') }
  end

  describe "Sign_in page" do
    before { visit sign_in_path }
    it { should have_selector('h1', text: 'Sign in') }
    it { should have_selector('title', text: 'Vouchflow | Sign in') }
  end

  describe "Thank you page" do
    before { visit thank_you_path }
    it { should have_selector('h1', text: 'Thank you') }
    it { should have_selector('title', text: 'Vouchflow | Thank you') }
  end  

  describe "Signup process" do
    before { visit root_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end