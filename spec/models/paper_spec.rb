require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not be valid without attributes" do
    paper = Paper.new
    expect(paper).to_not be_valid
  end
end
