require 'rails_helper'
require 'capybara/rails'

feature 'Task lists' do

  scenario 'User can view task lists' do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")
    end

    scenario 'User can click About link and be redirected to the about page' do
      visit signin_path
      click_on "About"
      expect(page).to have_content "About"
    end

  scenario 'user can add a task list' do
    visit 'task_lists/new'
    fill_in "Name", with: "homework"
    click_on "Create task list"
    expect(page).to have_content "homework"


  end


end