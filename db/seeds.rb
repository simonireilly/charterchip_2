# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Evidence.destroy_all

competencies = [
    'Ai',
    'Aii',
    'Aiii',
    'Aiv',
    'Av',
    'Bi',
    'Bii',
    'Biii',
    'Ci ',
    'Cii ',
    'Ciii ',
    'Di ',
    'Dii ',
    'Ei ',
    'Eii'
]

30.times do |time|
  evidence = Evidence.create(competency: competencies.sample,
                level: rand(1..4),
                title: "Example competency evidence",
                summary: "Working on this cool dance! I haven't got it finished yet, but when I do I think it will be great.",
                report: "<p>This is the #{time} piece of evidence, we want to fix a few things:</p><ol><li>Updated at and recently edited needs to be nice</li><li>We need to implement filtering and we need to have some colour coding</li><li>We needto look into getting spell check [might not need this in certain browsers]</li></ol>",
                start_date: "2017-02-01",
                end_date: "2017-12-01",
                created_at: (rand*10).days.ago,
                updated_at: (rand*10).days.ago,
                user_id: 1)
end