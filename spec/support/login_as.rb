def login_as user
  visit new_user_session_url
  fill_in I18n.t('activerecord.attributes.user.email'), :with => user.email
  fill_in I18n.t('activerecord.attributes.user.password'), :with => user.password
  click_button I18n.t('devise.shared.links.sign_in')
end
