require 'rails_helper'

describe 'As a user' do
  context 'they visit the home page' do
    it 'should show all promises' do
      promise1 = Promise.create!(person: 'Mike', promise: "I'm never gonna give you up")
      promise2 = Promise.create!(person: 'Ben', promise: "I'm never gonna give you up")
      promise3 = Promise.create!(person: 'Claire', promise: "I'm never gonna give you up")
      promise4 = Promise.create!(person: 'Matt', promise: "I'm never gonna give you up")
      promise5 = Promise.create!(person: 'Tim', promise: "I'm never gonna give you up")
      visit '/promises'
      
      expect(page).to have_content(promise1.person)
      expect(page).to have_content(promise2.person)
      expect(page).to have_content(promise3.person)
      expect(page).to have_content(promise4.person)
      expect(page).to have_content(promise5.person)
    end
  end
end
