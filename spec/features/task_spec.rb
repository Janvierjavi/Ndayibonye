require 'rails_helper'

RSpec.feature "post management function", type: :feature do
  background do
    User.create( first_name: 'janvier',
                            address: 'janvier',
                            tel_phone: '6778',
                             email: 'janvier@momo.com',
                             password: 'password',
                             password_confirmation: 'password')
    visit new_user_session_path
    fill_in 'Email', with: 'janvier@momo.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    @user = User.first
    Post.create(
      categories: 'i.d',
      content: 'cond',
      tittle:'manu')
  end

  scenario "Test post list" do
    visit posts_path
  end
  scenario "Test post creation" do
    visit new_post_path
    fill_in 'Tittle', with: 'janvier'
    fill_in 'Content', with: 'what '

    click_button 'post'

  end

  
  scenario "Test search by title" do
    visit posts_path
    click_button 'Search'
    visit posts_path

  end

  scenario "Test search by categories" do
    visit posts_path
    click_button 'Search'
    visit posts_path
  end

end
