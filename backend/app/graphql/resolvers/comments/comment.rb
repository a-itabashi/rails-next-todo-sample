module Resolvers
  module Comments
    class Comment < Resolvers::BaseResolver
      type Types::CommentType, null: false

      def resolve(id:)
        ::Comment.find(id)
      end
    end
  end
end
