module Mutations
  module Todos
    class Create < BaseMutation
      graphql_name "CreateTodo"
      argument :title, String, required: true
      argument :description, String, required: false

      type Types::TodoType

      def resolve(todo_id:, content:)
        Todo.create!(
          title: title,
          description: description,
          user: context[:current_user]
        )
      end
    end
  end
end
