require 'rails_helper'

describe "Authors index page", type: :feature do
    it "should exist at 'authors_path' and render without error" do
        visit authors_path
    end

    it "should have a table" do
        visit authors_path
        expect(page).to have_css('table')
    end
end
