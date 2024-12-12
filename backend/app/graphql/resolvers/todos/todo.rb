module Resolvers
  module Todos
    class Todo < Resolvers::BaseResolver
      argument :id, ID, required: true
      type Types::TodoType, null: false

      def resolve(id:)
        ::Todo.find(id)
      end
    end
  end
end
