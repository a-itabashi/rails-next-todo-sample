module Resolvers
  module Users
    class UserResolver < Resolvers::BaseResolver
      # description 'Find an User by ID. Require ID'

      argument :id, ID, required: true

      type Types::UserType, null: false

      def resolve(id:)
        User.find(id)
      end
    end
  end
end
