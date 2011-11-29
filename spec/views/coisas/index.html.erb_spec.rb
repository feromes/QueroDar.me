require 'spec_helper'

describe "coisas/index.html.erb" do
  before(:each) do
    assign(:coisas, [
      stub_model(Coisa,
        :titulo => "Titulo",
        :descricao => "MyText",
        :categoria => nil
      ),
      stub_model(Coisa,
        :titulo => "Titulo",
        :descricao => "MyText",
        :categoria => nil
      )
    ])
  end

  it "renders a list of coisas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
