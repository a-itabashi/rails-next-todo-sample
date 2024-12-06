module Types
  class TodoType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :user, Types::UserType, null: false
    field :comments, [Types::CommentType], null: false

    def self.authorize?(object, context)
      object.user == context[:current_user]
    end
  end
end
