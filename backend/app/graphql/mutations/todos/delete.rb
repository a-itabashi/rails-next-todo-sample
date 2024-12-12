module Mutations
  module Todos
    class Delete < BaseMutation
      graphql_name "DeleteTodo"
      argument :id, ID, required: true

      type Types::TodoType

      def resolve(id:)
        todo = Todo.find(id)
        todo.destroy
        todo
      end
    end
  end
end
