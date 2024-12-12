module Mutations
  module Todos
    class Update < BaseMutation
      graphql_name "UpdateTodo"
      argument :id, ID, required: true
      argument :title, String, required: false
      argument :description, String, required: false

      type Types::TodoType

      def resolve(id:, title: nil, description: nil)
        todo = Todo.find(id)
        # return nil unless todo && todo.user == context[:current_user]
        todo.update!(title: title, description: description)
        todo
      end
    end
  end
end
