module Mutations
  module Users
    class Login < Mutations::BaseMutation
      graphql_name "LoginUser"
      argument :email, String, required: true
      argument :password, String, required: true

      field :user, Types::UserType, null: true
      field :token, String, null: true
      field :client_id, String, null: true
      field :uid, String, null: true
      field :errors, [String], null: true

      def resolve(email:, password:)
        user = User.find_by(email: email)

        if user&.valid_password?(password)
          token = user.create_new_auth_token

          {
            user: user,
            token: token['access-token'],
            client_id: token['client'],
            uid: token['uid'],
          }
        else
          {
            # user: nil,
            # token: nil,
            # client_id: nil,
            errors: ['Invalid email or password']
          }
        end
      end
    end
  end
end
