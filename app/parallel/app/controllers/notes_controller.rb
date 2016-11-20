class NotesController < ApplicationController
  before_action :protect_routes

  def personal
    @notes = Note.where(user: user)
    @notes = @notes.reject do |note|
      note.book != user.checkout.book
    end
    render json: @notes
  end

  def public
    @notes = Note.where(book: user.checkout.book)
    render json: @notes
  end

  def create
    @note = Note.create(text: params[:note], book: user.checkout.book, user: user)
    render json: @note
  end

end
