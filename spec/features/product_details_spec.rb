require 'rails_helper'

RSpec.feature "Visitor navigates to product page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see the products page" do
    visit root_path
    within all('header')[1] { find("h4").click }
    # within ('header') {find('img').click}
    # find("#container").find('#products-index').find('#products').find('header').click
    # commented out b/c it's for debugging only
    save_and_open_screenshot

    expect(page).has_content ('Name').to be_truthy
  end
end