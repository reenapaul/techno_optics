require 'rails_helper'

RSpec.describe "stores/index", :type => :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        :product_name => "Product Name",
        :brand => "Brand",
        :description => "Description",
        :color => "Color",
        :price => 1,
        :feature1 => "Feature1",
        :feature2 => "Feature2"
      ),
      Store.create!(
        :product_name => "Product Name",
        :brand => "Brand",
        :description => "Description",
        :color => "Color",
        :price => 1,
        :feature1 => "Feature1",
        :feature2 => "Feature2"
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", :text => "Product Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Feature1".to_s, :count => 2
    assert_select "tr>td", :text => "Feature2".to_s, :count => 2
  end
end
