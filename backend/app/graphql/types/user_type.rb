module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :tokens, String, null: true

        # field :email, String, null: false, authorize: ->(object, context) {
    #   object == context[:current_user]
    # }

    # その他の関連フィールド
    # field :posts, [Types::PostType], null: true

    # def self.visible?(context)
    #   !!context[:current_user]
    # end

    # def self.authorize?(object, context)
    #   object == context[:current_user] && context[:current_user].admin?
    # end

    def self.authorize?(object, context)
      object == context[:current_user]
    end
  end
end
