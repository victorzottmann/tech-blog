require 'rails_helper'

RSpec.describe "authors/show", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      first_name: "First Name",
      last_name: "Last Name",
      bio: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/MyText/)
  end
end
