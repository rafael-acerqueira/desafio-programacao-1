require 'rails_helper'

feature 'User upload file' do

  scenario 'successfully' do

    visit root_path

    attach_file("Arquivo", Rails.root + "spec/fixtures/example_input.tab")

    click_on 'Importar'

    expect(page).to have_content "A receita bruta total é de R$ 95.00"

  end
end
