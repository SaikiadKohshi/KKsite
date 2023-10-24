class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
      kksite = Kksite.find(params[:kksite_id])
      comment = kksite.comments.build(comment_params) #buildを使い、contentとtweet_idの二つを同時に代入
      comment.user_id = current_user.id
      if comment.save! #!:セーブせずにスルーしてしまうのを防ぐために書くもの
        flash[:success] = "コメントしました"
        redirect_back(fallback_location: root_path) #直前のページにリダイレクト
      else
        flash[:success] = "コメントできませんでした"
        redirect_back(fallback_location: root_path) #直前のページにリダイレクト
      end
    end
    # コメント機能を消すための記述
    def destroy
      comment = Comment.find(params[:id])
      comment.destroy!
      redirect_to root_path
    end
    private
  
      def comment_params
        params.require(:comment).permit(:cr) #コメント機能のカラム名：cr
      end
end
