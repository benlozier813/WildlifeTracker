require 'rails_helper'

RSpec.feature "AnimalInterfaces", type: :feature do
  it "should go to the homepage and the title text should be there" do
    visit '/'
    expect(page).to have_content('Wildlife Tracker 5000 (beta)')
  end
  it "should enter a species and save it in the database" do
    make_basset_hound
    expect(Species).to be_truthy
    expect(Species.first).to be_a(Species)
  end
end






def make_basset_hound
  visit '/'
  fill_in 'animal_name', with: 'Basset Hound'
  click_button('Save')
end
