require 'rails_helper'

RSpec.feature "Visitor clicks on the add to cart button and their cart increases by one", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They click on an add to cart button and their cart increases by one" do
    # ACT
    visit root_path

    parent_node = first('.fa-shopping-cart').first(:xpath,".//..")['innerHTML']

    current_cart_count = parent_node.split(//).last(4).join.tr('()', '').to_i

    # CLICK
    first('.btn').click

    new_number = current_cart_count + 1

    updated_cart = first('.fa-shopping-cart').first(:xpath,".//..")['innerHTML']

    # VERIFY
    expect(updated_cart).to have_content new_number.to_s

    # DEBUG
    save_screenshot
  end
end