# https://github.com/lynndylanhurley/devise_token_auth/blob/b7fcfdf98a84a5d2ae22e005eaa372a668cc9c76/app/controllers/devise_token_auth/sessions_controller.rb#L52
module Mutations
  module Users
    class LogoutUser < Mutations::BaseMutation
      # 出力フィールドの定義
      field :success, Boolean, null: false
      field :errors, [String], null: true

      # resolveメソッド
      def resolve
        # binding.pry
        user = context[:current_user]

        # ユーザーがログインしていない場合は早期リターン
        return { success: false, errors: ['User not signed in'] } unless user

        client_id = context[:client_id]

        # クライアントIDが無効な場合も早期リターン
        return { success: false, errors: ['Invalid client ID'] } unless user.tokens[client_id].present?

        # トークンを削除してユーザー情報を更新
        user.tokens.delete(client_id)
        if user.save
          { success: true }
        else
          { success: false, errors: user.errors.full_messages }
        end
      end
    end
  end
end
