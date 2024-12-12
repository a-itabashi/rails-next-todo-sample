module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :user, Types::UserType, null: false
    field :todo, Types::TodoType, null: false

    def self.authorize?(object, context)
      object.user == context[:current_user]
    end
  end
end
