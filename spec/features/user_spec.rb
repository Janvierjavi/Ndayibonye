
require 'rails_helper'
RSpec.feature "User Login management", type: :feature do
  background do
    User.create( first_name: 'janvier',
                            address: 'janvier',
                            tel_phone: '6778',
                             email: 'janvier@momo.com',
                             password: 'password',
                             password_confirmation: 'password')
end

  scenario "successful user login and logout" do
    User.create(first_name: 'janvier',
    address:'name',  
    tel_phone: '6778',
    email: 'janvier@gmail.com', 
    password: 'password', 
    password_confirmation: 'password')
    visit new_user_session_path
    fill_in 'Email', with: 'janvier@gmail.com'
    fill_in 'Password', with: 'password'
    click_link 'Log in'
    visit posts_path
    
  end

  scenario "successful admin  login and logout" do
    User.create(first_name: 'janvier', 
    email: 'janvier@gmail.com',
    tel_phone: '6778',
     password: 'password',
     password_confirmation: 'password',
      admin: 'true')
    visit new_user_session_path
    fill_in 'Email', with: 'janvier@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit posts_path
  end

  scenario "expect page to redirect to login when not logged in" do
    visit new_user_session_path
    fill_in 'Email', with: 'janvier@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit new_user_session_path
  end

  scenario "test admin create new user" do
    visit  new_user_registration_path
    User.create( first_name: 'janvier',
                            address: 'name',
                            tel_phone: 'name',
                             email: 'janvier@momo.com',
                             password: 'password',
                             password_confirmation: 'password')

          visit posts_path
        end

        scenario "test user admin  details" do
          visit new_user_session_path
          fill_in 'Email', with: 'janvier@gmail.com'
          fill_in 'Password', with: 'password'
          click_link 'Log in'
           visit posts_path
              end

              scenario "test  admin update user" do
                visit new_user_session_path
                fill_in 'Email', with: 'janvier@gmail.com'
                fill_in 'Password', with: 'password'
                click_link 'Log in'
                  visit  new_user_registration_path
                  User.update( first_name: 'janvierj',
                            address: 'kabuga',
                            tel_phone: '3644',
                             email: 'janvier@momo.com',
                             password: 'password',
                             password_confirmation: 'password',
                             admin:'true')
                             visit new_user_session_path
                    end

              scenario "test user admin delete" do
                visit new_user_session_path
                fill_in 'Email', with: 'janvier@gmail.com'
                fill_in 'Password', with: 'password'
                click_link 'Log in'
                User.delete( first_name: 'janvier',
                            address: 'names',
                            tel_phone:'5663563',
                             email: 'janvier@momo.com',
                             password: 'password',
                             password_confirmation: 'password', admin:'true')
             visit posts_path
                    end

  end
