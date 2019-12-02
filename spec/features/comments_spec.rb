require 'rails_helper'

RSpec.feature "comment management function", type: :feature do
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
      scenario "test of user create a comment of post" do
      visit posts_path
      visit new_post_path
      fill_in 'Tittle', with: 'janvier'
    fill_in 'Content', with: 'what '
    visit posts_path
  end
  scenario "Test of first create new post and add the new post" do
    visit new_post_path
    Post.create(
      categories: 'i.d',
      content: 'cond',
      tittle:'manu',
      user_id: @user.id)
      fill_in 'Content', with: 'what '
      visit posts_path
  end

end