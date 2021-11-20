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

    it "should have 'Edit' and 'Show' links for every author" do
        @author = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Show', href: author_path(@author)
        expect(page).to have_link 'Edit', href: edit_author_path(@author)
    end

    it "should have 'Delete' links for every author" do
        @author = FactoryBot.create :author
        count_before = Author.count
        visit authors_path
        expect(page).to have_css("a[data-method='delete'][href='/authors/#{@author.id}']")
        page.find("a[data-method='delete'][href='/authors/#{@author.id}']").click
        expect(Author.count).to eq(count_before - 1)
    end
end
