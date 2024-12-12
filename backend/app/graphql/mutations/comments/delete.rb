module Mutations
  module Comments
    class Delete < BaseMutation
      graphql_name "DeleteComment"
      argument :id, ID, required: true

      type Types::CommentType

      def resolve(id:)
        comment = Comment.find(id)
        comment.destroy
        comment
      end
    end
  end
end
