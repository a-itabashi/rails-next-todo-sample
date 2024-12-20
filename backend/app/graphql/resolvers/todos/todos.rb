module Resolvers
  module Todos
    class Todos < Resolvers::BaseResolver
      type [Types::TodoType], null: false

      def resolve
        ::Todo.all
      end
    end
  end
end
