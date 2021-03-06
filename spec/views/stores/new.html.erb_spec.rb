require 'rails_helper'

RSpec.describe "stores/new", :type => :view do
  before(:each) do
    assign(:store, Store.new(
      :product_name => "MyString",
      :brand => "MyString",
      :description => "MyString",
      :color => "MyString",
      :price => 1,
      :feature1 => "MyString",
      :feature2 => "MyString"
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input#store_product_name[name=?]", "store[product_name]"

      assert_select "input#store_brand[name=?]", "store[brand]"

      assert_select "input#store_description[name=?]", "store[description]"

      assert_select "input#store_color[name=?]", "store[color]"

      assert_select "input#store_price[name=?]", "store[price]"

      assert_select "input#store_feature1[name=?]", "store[feature1]"

      assert_select "input#store_feature2[name=?]", "store[feature2]"
    end
  end
end
