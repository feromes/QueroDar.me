require 'spec_helper'

describe "coisas/edit.html.erb" do
  before(:each) do
    @coisa = assign(:coisa, stub_model(Coisa,
      :titulo => "MyString",
      :descricao => "MyText",
      :categoria => nil
    ))
  end

  it "renders the edit coisa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coisas_path(@coisa), :method => "post" do
      assert_select "input#coisa_titulo", :name => "coisa[titulo]"
      assert_select "textarea#coisa_descricao", :name => "coisa[descricao]"
      assert_select "input#coisa_categoria", :name => "coisa[categoria]"
    end
  end
end
