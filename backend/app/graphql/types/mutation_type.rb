# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_user, mutation: Mutations::CreateUser
    field :login_user, mutation: Mutations::LoginUser
    field :logout_user, mutation: Mutations::LogoutUser

    field :createTodo, mutation: Mutations::Todos::Create
    field :updateTodo, mutation: Mutations::Todos::Update
    field :deleteTodo, mutation: Mutations::Todos::Delete
  end
end
