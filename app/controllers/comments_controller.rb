class CommentsController < ApplicationController

  def create
    photo_id = params.fetch("photo_id")
    author_id = params.fetch("author_id")
    comment = params.fetch("comment")

    new_comment = Comment.new
    new_comment.photo_id = photo_id
    new_comment.author_id = author_id
    new_comment.body = comment

    new_comment.save

    redirect_to("/photos/#{new_comment.photo_id}")

  end

end
