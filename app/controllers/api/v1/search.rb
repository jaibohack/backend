module API
  module V1
    class Search < Grape::API
      include API::V1::Defaults

      resource :search do
        desc "Search skills and schools"
        format :json
        params do
          requires :resource, type: String, values: ['skills', 'schools']
          requires :q, type: String
        end

        get '' do
          clazz = params.resource.classify.constantize
          clazz.where("name LIKE ?", "#{params.q.downcase}%").select(:name)
        end
      end
    end
  end
end
