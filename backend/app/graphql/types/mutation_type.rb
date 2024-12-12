# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end

    field :create_user, mutation: Mutations::Users::CreateUser
    field :login_user, mutation: Mutations::Users::LoginUser
    field :logout_user, mutation: Mutations::Users::LogoutUser

    field :create_todo, mutation: Mutations::Todos::CreateTodo
    field :update_todo, mutation: Mutations::Todos::UpdateTodo
    field :delete_todo, mutation: Mutations::Todos::DeleteTodo

    field :create_comment, mutation: Mutations::Comments::CreateComment
    field :update_comment, mutation: Mutations::Comments::UpdateComment
    field :delete_comment, mutation: Mutations::Comments::DeleteComment
  end
end
