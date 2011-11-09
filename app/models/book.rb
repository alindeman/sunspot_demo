class Book < ActiveRecord::Base
  belongs_to :author

  searchable do
    text :body, :stored => true

    string  :title
    integer :year
    integer :author_id
  end
end
