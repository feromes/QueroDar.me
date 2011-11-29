require 'spec_helper'

describe "coisas/show.html.erb" do
  before(:each) do
    @coisa = assign(:coisa, stub_model(Coisa,
      :titulo => "Titulo",
      :descricao => "MyText",
      :categoria => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
