require 'rails_helper'

describe "As a user" do
  describe "they click a promise from the index page" do
    it "take them to a show page displaying that promise" do
      promise1 = Promise.create!(person: 'Mike', promise: "I'm never gonna give you up")
      promise2 = Promise.create!(person: 'Ben', promise: "I'm never gonna give you up")
      visit '/promises'
      click_link("Promise-#{promise1.id}")

      expect(current_path).to eq("/promises/#{promise1.id}")
      expect(page).to have_content("Mike")
    end
  end
end
