require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not be valid without attributes" do
    paper = Paper.new
    expect(paper).to_not be_valid
  end

  it "should have a list of authors" do
    paper = Paper.new
    ewpect(paper.authors).to be_empty
  end
end
