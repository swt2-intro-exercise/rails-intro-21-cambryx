require 'rails_helper'

describe "Edit author page", type: :feature do

    before(:each) do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end

    it "should exist at 'edit_author_path' and render without error" do
    end

    it "should have text inputs for an author's first name, last name and homepage" do
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end

    it "should update the databese entry of the author after submitting" do
        page.fill_in 'author[first_name]', with: "Alaaaan"
        find('input[type="submit"]').click
        @alan.reload
        expect(@alan.first_name).to eq("Alaaaan")
    end

end
