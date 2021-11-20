require 'rails_helper'

describe "New Author", type: :model do
    it "should have first_name, last_name, homepage" do
        author = Author.new({"first_name" =>"Alan", "last_name" =>"Turing", "homepage" =>"http://wikipedia.org/Alan_Turing"})
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
        expect(author.name).to eq("Alan Turing")
    end

    it "should not be valid without last name" do
        @author = Author.new({"first_name" => "alan", "homepage" => "http://example.com"})
        expect(@author).to_not be_valid
    end

    it "should not be valid without first name" do
        @author = Author.new({"last_name" => "turing", "homepage" => "http://example.com"})
        expect(@author).to_not be_valid
    end
end