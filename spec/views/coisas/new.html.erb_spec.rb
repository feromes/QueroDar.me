require 'spec_helper'

describe "coisas/new.html.erb" do
  before(:each) do
    assign(:coisa, stub_model(Coisa,
      :titulo => "MyString",
      :descricao => "MyText",
      :categoria => nil
    ).as_new_record)
  end

  it "renders new coisa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coisas_path, :method => "post" do
      assert_select "input#coisa_titulo", :name => "coisa[titulo]"
      assert_select "textarea#coisa_descricao", :name => "coisa[descricao]"
      assert_select "input#coisa_categoria", :name => "coisa[categoria]"
    end
  end
end
