require 'rails_helper'

describe "Show author page", type: :feature do
    it "should exist and display 'Author page'" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text("Author page")
    end
end
