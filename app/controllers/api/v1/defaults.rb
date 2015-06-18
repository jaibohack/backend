module API
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        version 'v1', using: :path
        format :json
        #formatter :json, Grape::Formatter::Jbuilder

        # rescue_from ActiveModel::StrictValidationFailed do |e|
        #   error_response(message: {error:{ message: e.message, type: e.class.name, code: 1}}, status: 400)
        # end

        helpers do
        end
        #before do
          #error!('Unauthorized', 401) unless headers['Autorization'] == "some token"
        #end
      end
    end
  end
end
