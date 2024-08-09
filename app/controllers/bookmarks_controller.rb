class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @bookmark.save
    redirect_to list_path(params[:list_id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
