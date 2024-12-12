module Resolvers
  module Users
    class Users < Resolvers::BaseResolver
      type [Types::UserType], null: false

      def resolve
        ::User.all
      end
    end
  end
end
