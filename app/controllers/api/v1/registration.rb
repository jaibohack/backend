module API
  module V1
    class Registration < Grape::API
      include API::V1::Defaults

      resource :registration do
        desc "Attendees registration"
        post '' do
          params do
            requires :user, :type => Hash do
              requires :provider, type: String, desc: 'Authentication Provider'
              requires :uid, type: String, desc: 'Provider user ID'
              requires :info, :type => Hash do
                requires :name, type: String, desc: "User's name and lastname"
                requires :email, type: String, desc: "User's facebook email"
                requires :image, type: String, desc: 'Profile picture url'
              end
              requires :extra, :type => Hash do
                requires :raw_info, :type => Hash do
                  requires :birthday, type: String, desc: 'Birthday string (MM/DD/YYYY)'
                  requires :gender, type: String, desc: 'Male or female?'
                end
              end
              requires :credentials, :type => Hash do
                requires :token, type: String, desc: 'Facebook token'
                requires :expires_at, type: Integer, desc: 'Facebook token expiration date'
              end
            end
          end
        end
      end
    end
  end
end
