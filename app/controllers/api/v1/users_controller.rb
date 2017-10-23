module Api
  module V1
    class UsersController < ApplicationController
      before_action :doorkeeper_authorize!

      respond_to :json

      def me
        debugger
        respond_with current_resource_owner
      end

      def user
        debugger
        user = User.find_by(id: params[:id])
        respond_with user
      end

      private

      def current_resource_owner
        debugger
        # find logged in user (via devise) if doorkeeper token
        User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end
    end
  end
end
