# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end

    field :create_user, mutation: Mutations::Users::Create
    field :login_user, mutation: Mutations::Users::Login
    field :logout_user, mutation: Mutations::Users::Logout

    field :create_todo, mutation: Mutations::Todos::Create
    field :update_todo, mutation: Mutations::Todos::Update
    field :delete_todo, mutation: Mutations::Todos::Delete

    field :create_comment, mutation: Mutations::Comments::Create
    field :update_comment, mutation: Mutations::Comments::Update
    field :delete_comment, mutation: Mutations::Comments::Delete
  end
end
