# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

module Seed
  def self.call
    50.times do |idx|
      article = Article.create!(title: ARTICLE_TITLES.sample, body: LOREM, status: "public")
      rand(0..10).times do
        article.comments.create!(
          commenter: NAMES.sample,
          body: LOREM_ARR[0..rand(1..8)].join(" ") * rand(1..3),
          status: "public"
        )
      end
    end
  end

  LOREM = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod " \
          "tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim " \
          "veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea " \
          "commodo consequat. Duis aute irure dolor in reprehenderit in voluptate " \
          "velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint " \
          "occaecat cupidatat non proident, sunt in culpa qui officia deserunt " \
          "mollit anim id est laborum."
  LOREM_ARR = LOREM.split.freeze

  NAMES = %w[
    James Mary
    Robert Patricia
    John Jennifer
    Michael Linda
    David Elizabeth
    William Barbara
    Richard Susan
    Joseph Jessica
    Thomas Sarah
    Charles Karen
    Christopher Lisa
    Daniel Nancy
    Matthew Betty
    Anthony Margaret
    Mark Sandra
    Donald Ashley
    Steven Kimberly
    Paul Emily
    Andrew Donna
    Joshua Michelle
    Kenneth Carol
    Kevin Amanda
    Brian Dorothy
    George Melissa
    Timothy Deborah
    Ronald Stephanie
    Edward Rebecca
    Jason Sharon
    Jeffrey Laura
    Ryan Cynthia
    Jacob Kathleen
    Gary Amy
    Nicholas Angela
    Eric Shirley
    Jonathan Anna
    Stephen Brenda
    Larry Pamela
    Justin Emma
    Scott Nicole
    Brandon Helen
    Benjamin Samantha
    Samuel Katherine
    Gregory Christine
    Alexander Debra
    Frank Rachel
    Patrick Carolyn
    Raymond Janet
    Jack Catherine
    Dennis Maria
    Jerry Heather
    Tyler Diane
    Aaron Ruth
    Jose Julie
    Adam Olivia
    Nathan Joyce
    Henry Virginia
    Douglas Victoria
    Zachary Kelly
    Peter Lauren
    Kyle Christina
    Ethan Joan
    Walter Evelyn
    Noah Judith
    Jeremy Megan
    Christian Andrea
    Keith Cheryl
    Roger Hannah
    Terry Jacqueline
    Gerald Martha
    Harold Gloria
    Sean Teresa
    Austin Ann
    Carl Sara
    Arthur Madison
    Lawrence Frances
    Dylan Kathryn
    Jesse Janice
    Jordan Jean
    Bryan Abigail
    Billy Alice
    Joe Julia
    Bruce Judy
    Gabriel Sophia
    Logan Grace
    Albert Denise
    Willie Amber
    Alan Doris
    Juan Marilyn
    Wayne Danielle
    Elijah Beverly
    Randy Isabella
    Roy Theresa
    Vincent Diana
    Ralph Natalie
    Eugene Brittany
    Russell Charlotte
    Bobby Marie
    Mason Kayla
    Philip Alexis
    Louis Lori
  ].freeze

  ARTICLE_TITLES = [
    "Why I Blog",
    "My Love Affair With…",
    "Interview with (someone who’s no longer living – you make up the answers you think they’d give)",
    "A Charity You Should Know About",
    "If I Ran the World",
    "5 Books You Need to Read",
    "The One Thing I Do Every Day",
    "If Keyboards Could Talk",
    "My Favorite Thing About Facebook",
    "The Coolest Thing I’ve Found in Google",
    "The Weirdest Thing I’ve Found in Google",
    "Why I Don’t Write Poetry",
    "If I Were Writing a Screenplay",
    "Cover Story Dreams (if you were on the cover of a magazine which one would it be and why)",
    "A Turning Point",
    "Thoughts Winter Brings to Mind",
    "Creativity Lessons from Children",
    "What My Popcorn Maker Taught Me About Demand in Business",
    "Playing Devil’s Advocate with the Voices in My Head",
    "Technology I Can’t Live Without",
    "How I Overcome Challenges",
    "The Biggest Goal I’ve Achieved So Far",
    "What I Do When I Fail",
    "If I Were My Mother I’d Tell Myself…",
    "What I Wish They’d Invent",
    "What X Will Be Like In 10 Years",
    "Business Tools Worth the Money",
    "My Favorite Free Tools/Resources",
    "What’s on My Desk Right Now",
    "Top 3 Favorite YouTube Videos",
    "If I Could Only Visit One Website Today…",
    "Best Bumper Sticker I’ve Seen Lately",
    "What I’d Do Differently if I Were (Insert Big Brand Here)",
    "The One Thing I Wish I’d Known Before…",
    "The 5 or 10 Websites I Visit Most Often",
    "Things I’ve Learned on Twitter",
    "How to Reinvent Yourself",
    "Childhood Plans (What I Wanted to Be When I Grew Up)",
    "If Space Travel Were Here Today",
    "A Business Product That Changed My Business",
    "One Person I’m Glad I Met",
    "My Favorite Quotes and Why",
    "Lessons I’ve Learned in Business",
    "A Tale of Two Clients (Talk About What Makes a Great Client vs. Not-So-Great Client)",
    "Inspired Creations (Share Favorite Creation if You’re Artistic)",
    "How to Know You’re On The Right Path",
    "Intuition and Business",
    "Where to Find Support for Your Ambitions",
    "Dreaming Big Enough",
    "Learning to Relax… Take a Mini-Vacation…"
  ].freeze
end

Seed.call()
