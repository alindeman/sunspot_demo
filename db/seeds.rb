# This file should contain all the record creation needed to seed the database
# with its default values.  The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).

austen = Author.create!(first_name: "Jane", last_name: "Austen")
austen.books.create!(title: "Pride and Prejudice", year: 1813, body: File.read(Rails.root.join("db/books/pride_and_prejudice.txt")))
austen.books.create!(title: "Emma", year: 1815, body: File.read(Rails.root.join("db/books/emma.txt")))
austen.books.create!(title: "Sense and Sensibility", year: 1811, body: File.read(Rails.root.join("db/books/sense_and_sensibility.txt")))

twain = Author.create!(first_name: "Mark", last_name: "Twain")
twain.books.create!(title: "Adventures of Huckleberry Finn", year: 1884, body: File.read(Rails.root.join("db/books/adventures_of_huckleberry_finn.txt")))
twain.books.create!(title: "The Adventures of Tom Sawyer", year: 1876, body: File.read(Rails.root.join("db/books/adventures_of_tom_sawyer.txt")))

doyle = Author.create!(first_name: "Arthur", last_name: "Doyle")
doyle.books.create!(title: "The Adventures of Sherlock Holmes", year: 1892, body: File.read(Rails.root.join("db/books/adventures_of_sherlock_holmes.txt")))

carroll = Author.create!(first_name: "Lewis", last_name: "Carroll")
carroll.books.create!(title: "Alice's Adventures in Wonderland", year: 1865, body: File.read(Rails.root.join("db/books/alices_adventures_in_wonderland.txt")))

dickens = Author.create!(first_name: "Charles", last_name: "Dickens")
dickens.books.create!(title: "A Tale of Two Cities", year: 1859, body: File.read(Rails.root.join("db/books/a_tale_of_two_cities.txt")))
dickens.books.create!(title: "A Christmas Carol", year: 1843, body: File.read(Rails.root.join("db/books/a_christmas_carol.txt")))
dickens.books.create!(title: "Great Expectations", year: 1860, body: File.read(Rails.root.join("db/books/great_expectations.txt")))
