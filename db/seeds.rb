# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
Evidence.create(competency: "Aii",
                level: 2,
                title: "Example competency evidence",
                summary: "Working on this cool dance! I haven't got it finished yet, but when I do I think it will be great.",
                report: "<ol><li>Built my own dancing shoes</li><li>Dusted them off</li><li>Boom!</li></ol>",
                start_date: "2017-02-01",
                end_date: "2017-12-01",
                created_at: "2017-12-09 11:20:52",
                updated_at: "2017-12-09 11:20:52",
                user_id: 1)
end