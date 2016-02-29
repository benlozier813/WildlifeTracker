require 'rails_helper'

RSpec.describe Species, type: :model do
  it "should enter a species and save it in the database" do
    expect(Species).to be_truthy
  end
end
