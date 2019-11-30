require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "Validation does not pass if the content is empty" do
    comment = Comment.new( content: ' ')
    expect(comment).not_to be_valid
  end
end