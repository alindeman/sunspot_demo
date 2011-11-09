class SearchesController < ApplicationController
  def new
  end

  def create
    @search = Book.search do
      # Query
      fulltext params[:query] do
        highlight :body, max_snippets: 3
      end

      # Author restriction
      with(:author_id, params[:author_id]) if params[:author_id].present?

      # Decade restriction
      if params[:decade].present?
        decade = params[:decade].to_i
        with(:year, Range.new(decade, decade + 9))
      end

      # Decade faceting
      facet(:year, sort: :index) do
        (1700..2010).step(10).each do |decade|
          row(decade) do
            with(:year, Range.new(decade, decade + 9))
          end
        end
      end
    end

    @max_score = @search.hits.first.try(:score)
  end
end
