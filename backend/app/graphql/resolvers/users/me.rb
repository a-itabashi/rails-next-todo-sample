module Resolvers
  module Users
    class Me < Resolvers::BaseResolver
      null true
      type Types::UserType, null: false

      def resolve
        context[:current_user]
      end
    end
  end
end
