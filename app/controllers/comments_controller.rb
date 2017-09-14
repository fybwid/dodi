class CommentsController < ApplicationController
  def create
    if current_user_path === outgoing_mails_url
      @outgoing_mail = OutgoingMail.find(params[:outgoing_mail_id])
      @comment = @outgoing_mail.comments.create(comment_params)
      redirect_to outgoing_mail_path(@outgoing_mail)
      
    else
      @incoming_mail = IncomingMail.find(params[:incoming_mail_id])
      @comment = @incoming_mail.comment.create(comment_params)
      redirect_to incoming_mail_path(@incoming_mail)
    end
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
