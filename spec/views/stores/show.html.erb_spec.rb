require 'rails_helper'

RSpec.describe "stores/show", :type => :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :product_name => "Product Name",
      :brand => "Brand",
      :description => "Description",
      :color => "Color",
      :price => 1,
      :feature1 => "Feature1",
      :feature2 => "Feature2"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product Name/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Feature1/)
    expect(rendered).to match(/Feature2/)
  end
end
