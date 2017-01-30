require 'rails_helper'

feature 'lists' do
  context 'no lists have been added' do
    scenario 'should display a prompt to add a restaurant' do
      visit '/lists'
      expect(page).to have_content 'No lists yet'
      expect(page).to have_link 'Add a restaurant'
    end
  end


end