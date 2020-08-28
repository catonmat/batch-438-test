require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "that index page loads" do
    # visit the homepage
    visit '/'
    save_and_open_screenshot
    # check that the homepage loads
    assert_selector 'h1', text: 'Awesome Products'
    assert_selector ".product", count: Product.count
  end

  test 'that the user can create a new product' do
    # step 1: user logs in
    login_as users(:george)
    # step 2: user visits the new Product page
    visit '/products/new'
    save_and_open_screenshot
    # step 3: user fills out and submits form for new product (then redirects to homepage)
    fill_in 'product_name', with: 'Le Wagon'
    fill_in 'product_tagline', with: 'Learn To Code'
    click_on 'Create Product'
    save_and_open_screenshot

    assert_equal root_path, page.current_path
    assert_text 'Learn To Code'
  end
end
