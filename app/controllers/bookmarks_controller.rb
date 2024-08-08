class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    redirect_to list_path(@bookmark.list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit(:comment)
  end
end
