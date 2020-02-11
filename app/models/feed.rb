class Feed
  def initialize(user)
    @user = user
  end

  # order in which books appear in the feed
  # newly published books (published current year?)
  # ordered by followed authors
  # ordered by authors with the greatest number of upvotes from the user
  # ordered by upvotes
  # ordered by published dates
  def retrieve
    feed = []
    followed_authors_ids = @user.follows.pluck(:author_id)

    feed = Book.all
      .order("
        CASE WHEN 
          (SELECT COUNT(*) FROM follows 
            INNER JOIN authors ON authors.id = follows.author_id
            WHERE (user_id = #{@user.id} AND author_id = books.author_id)) > 0 
        THEN 1 ELSE 0 END DESC")
      .order("
        (SELECT COUNT(*) FROM upvotes 
          INNER JOIN books b ON upvotes.book_id = books.id
          INNER JOIN authors ON authors.id = books.author_id
        WHERE upvotes.user_id = #{@user.id}) DESC
      ")
      .order("
        (SELECT COUNT(*) from upvotes WHERE book_id = books.id) DESC
      ")
      .order(published_on: :desc)
  end
end