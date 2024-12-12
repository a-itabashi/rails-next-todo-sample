module Mutations
  module Comments
    class CreateComment < BaseMutation
      argument :todo_id, ID, required: true
      argument :content, String, required: true

      type Types::CommentType

      def resolve(todo_id:, content:)
        todo = Todo.find(todo_id)
        return unless todo

        Comment.create!(
          todo: todo,
          user: context[:current_user],
          content: content
        )
      end
    end
  end
end
