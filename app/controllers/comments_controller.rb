class Api::V1::CommentsController < ApplicationController
    
    def index
        comments = Comment.all 
        render json: comments
    end
    
    def create
        comment = Comment.new(comment_params)
       
        if comment.save 
            render json: comment
        else
            render json: {error: "Comments  require text to be posted."}, status: 403  
        end
 
    end
    
    def destroy
        comment = Comment.find(params[:id])
        
        comment.destroy
        render json: {comment: comment, message: "Don't worry it's gone now!"} 
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :author, :user_id, :post_id)
    end
end
