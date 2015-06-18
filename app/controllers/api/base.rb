module API
  class Base < Grape::API
    mount API::V1::Registration
  end
end
