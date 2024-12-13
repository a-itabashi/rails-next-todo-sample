module Types
  class TodoType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :user, Types::UserType, null: false
    field :comments, [Types::CommentType, null: true], null: true
    # connection :comments, Types::CommentType.connection_type, null: false

    def user
      Loaders::AssociationLoader.for(::Todo, :user).load(object)
    end

    def comments
      Loaders::AssociationLoader.for(::Todo, :comments).load(object)
    end

    def self.authorize?(object, context)
      object.user == context[:current_user]
    end
  end
end
