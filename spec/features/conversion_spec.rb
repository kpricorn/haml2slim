require 'spec_helper'

describe "the conversion process" do

  let(:haml) do
    File.read(::Rails.root.join('spec', 'fixtures', 'input_01.haml'))
  end

  let(:slim) do
    File.read(::Rails.root.join('spec', 'fixtures', 'input_01.haml'))
  end

  before do
    visit '/'
    fill_in 'Haml', :with => haml
    click_button 'Convert'
  end

  it "displays the flash message" do
    expect(page).to have_content 'Successfully converted.'
  end

  it "shows the converted slim snippet" do
    expect(page).to have_field 'Slim', with: slim
  end

  it "shows the original haml snippet" do
    expect(page).to have_field 'Haml', with: haml
  end
end
