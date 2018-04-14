require 'spec_helper'

OmniAuth.config.test_mode = true

def valid_omniauth_credentials
  OmniAuth.config.add_mock(:google_oauth2, {:uid => '123545',
                                            :info => { :email => 'test@gmail.com',
                                                       :first_name => "First",
                                                       :last_name => "Last"}
                                            })

end

def invalid_omniauth_credentials
  OmniAuth.config.mock_auth[:google_oauth2] = :invalid_crendentials
end
