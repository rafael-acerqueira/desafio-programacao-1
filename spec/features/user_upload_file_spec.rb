require 'rails_helper'

feature 'User upload file ' do

  feature 'sign_in with devise' do

    scenario 'successfully' do

      user = create(:user, name: 'User 1', email: 'user1@example.com', password: 'passwordsecret')

      visit root_path

      login_as user


      attach_file("Arquivo", Rails.root + "spec/fixtures/example_input.tab")

      click_on 'Importar'

      expect(page).to have_content "A receita bruta total é de R$ 95.00"

    end

    scenario 'invalid credentials' do
      user = build(:user, name: 'User 2', email: 'user2@example.com', password: 'passwordsecret')

      visit root_path

      login_as user

      expect(page).to have_current_path(new_user_session_path)

    end
  end

  feature 'sign_in with Google' do

    scenario 'successfully' do

      valid_omniauth_credentials

      visit "/users/auth/google_oauth2"

      attach_file("Arquivo", Rails.root + "spec/fixtures/example_input.tab")

      click_on 'Importar'

      expect(page).to have_content "A receita bruta total é de R$ 95.00"
    end

    scenario 'invalid credentials' do

      invalid_omniauth_credentials

      visit "/users/auth/google_oauth2"

      expect(page).to have_current_path(new_user_session_path)

    end
  end
end
