# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # node: 単一オブジェクトをグローバル ID で取得。
    # nodes: 複数のオブジェクトを一度にグローバル ID で取得。
    # field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
    #   argument :id, ID, required: true, description: "ID of the object."
    # end

    # def node(id:)
    #   context.schema.object_from_id(id, context)
    # end

    # field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
    #   argument :ids, [ID], required: true, description: "IDs of the objects."
    # end

    # def nodes(ids:)
    #   ids.map { |id| context.schema.object_from_id(id, context) }
    # end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    field :users, resolver: Resolvers::Users::Users
    field :user, resolver: Resolvers::Users::User
    field :me, resolver: Resolvers::Users::Me

    field :todos, resolver: Resolvers::Todos::Todos
    field :todo, resolver: Resolvers::Todos::Todo

    field :comments, resolver: Resolvers::Comments::Comments
    field :comment, resolver: Resolvers::Comments::Comment
  end
end
