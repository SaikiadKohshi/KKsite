class LikesController < ApplicationController
      def create
        like = current_user.likes.create(kksite_id: params[:kksite_id]) #user_idとkksite_idの二つを代入
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        like = Like.find_by(kksite_id: params[:kksite_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
      end
end
