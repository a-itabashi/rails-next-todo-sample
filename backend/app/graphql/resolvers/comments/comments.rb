module Resolvers
  module Comments
    class Comments < Resolvers::BaseResolver
      type [Types::CommentType], null: false

      def resolve
        ::Comment.all
      end
    end
  end
end
