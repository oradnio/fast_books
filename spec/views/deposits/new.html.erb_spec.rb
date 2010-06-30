require 'spec_helper'

describe "/deposits/new.html.erb" do
  include DepositsHelper

  before(:each) do
    assigns[:deposit] = stub_model(Deposit,
      :new_record? => true
    )
  end

  it "renders new deposit form" do
    render

    response.should have_tag("form[action=?][method=post]", deposits_path) do
    end
  end
end
