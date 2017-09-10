# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sample_post = <<END
This is a sample post. There are many like it but
this one is mine. It has sentences that break across
lines.

It also has paragraphs. Those paragraphs combine to
make a story.

### Subheading

More paragraphs come underneath subheadings. They contain
more text. This is probably the most meaningful thing I
will ever write
END

Post.destroy_all
Post.create(title: 'Sample Post Title', body: sample_post)
