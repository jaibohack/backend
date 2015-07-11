module API
  module V1
    class Skills < Grape::API
      include API::V1::Defaults

      resource :skills do
        desc "List of skills"
        format :json

        get '' do
          Skill.where("name LIKE ?", "#{params[:name]}%").select(:name) if params[:name]
        end
      end
    end
  end
end
