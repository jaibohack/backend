module API
  class Base < Grape::API
    mount API::V1::Registration
    mount API::V1::Search
  end
end
