require 'rails_helper'

RSpec.describe Post, type: :model do

  it "Validation does not pass if the title is empty" do
    post = Post.new(tittle: '', content: 'Failure test', categories:'i.d')
    expect(post).not_to be_valid
  end

  it "Validation does not pass if content is empty" do
    post = Post.new(tittle: 'name', content: '', categories:'i.d')
    expect(post).not_to be_valid
  end
  it "validation does not pass if the categories is empty" do
    post = Post.new(tittle: 'name', content: 'Failure test', categories:' ')
    expect(post).not_to be_valid
  end

  it "validation passes If content is described in title, content, categories" do
    post = Post.new(tittle: 'name', content: 'Failure test', categories:'i.d')
    expect(post)
  end


  


end