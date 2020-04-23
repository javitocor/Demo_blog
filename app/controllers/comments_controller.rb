class CommentsController < ApplicationController
    def create 
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:name, :content))
        redirect_to post_path(@post), notice: 'Comment created!'
    end

    def destroy 
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post), notice: 'Comment deleted!'
    end
end
