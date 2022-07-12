# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

LOREM = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod " \
        "tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim " \
        "veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea " \
        "commodo consequat. Duis aute irure dolor in reprehenderit in voluptate " \
        "velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint " \
        "occaecat cupidatat non proident, sunt in culpa qui officia deserunt " \
        "mollit anim id est laborum."

100.times do |idx|
  article = Article.create!(title: "#{idx} title", body: LOREM, status: "public")
  rand(0..10).times do
    article.comments.create!(
      commenter: SecureRandom.hex(4),
      body: "Lorem ipsum " * rand(1..5),
      status: "public"
    )
  end
end
