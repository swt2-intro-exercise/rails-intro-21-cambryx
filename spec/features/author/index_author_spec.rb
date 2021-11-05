require 'rails_helper'

describe "Authors index page", type: :feature do
    it "should exist at 'authors_path' and render without error" do
        visit authors_path
    end

    it "should have a table" do
        visit authors_path
        expect(page).to have_css('table')
    end

    it "should have a 'New' link" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end
end
