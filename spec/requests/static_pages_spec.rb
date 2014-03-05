require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do #describing the Home Page
      		visit '/static_pages/home' #simulates visiting the URL /static_pages/home in a browser (using the Capybara function visit)
      		expect(page).to have_content('Sample App') #the resulting page should include the content 'Sample App'
    end
  	
    it "should have the right title" do
          visit '/static_pages/home'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

  end

	describe "Help page" do

    	it "should have the content 'Help'" do
      		visit '/static_pages/help'
      		expect(page).to have_content('Help')
    	end

      it "should have the title 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
      end
  end
  
  describe "About page" do

      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_content('About Us')
      end

      it "should have the title 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
      end
  end


end