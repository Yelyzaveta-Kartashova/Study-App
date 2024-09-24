puts 'Deleting all subjects'
Subject.destroy_all

puts 'Starting seed.........'

art_subject = Subject.create!(
  name: 'Art',
  image_url: 'https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXJ0fGVufDB8fDB8fHww'
)

painting_topic = Topic.create!(
  name: 'Painting',
  subject: art_subject
)

sculpture_topic = Topic.create!(
  name: 'Sculpture',
  subject: art_subject
)

Lesson.create!(
  title: 'Introduction to Painting',
  content: 'Painting is one of the oldest forms of artistic expression. It involves applying pigment to a surface to create images or abstract forms.',
  topic: painting_topic
)

Lesson.create!(
  title: 'Famous Painters',
  content: 'Many painters throughout history have left a mark on the world. Artists like Leonardo da Vinci and Vincent van Gogh are known for their masterpieces.',
  topic: painting_topic
)

Lesson.create!(
  title: 'Introduction to Sculpture',
  content: 'Sculpture is a form of three-dimensional art, usually created by carving, modeling, or assembling materials like stone, clay, or metal.',
  topic: sculpture_topic
)

Lesson.create!(
  title: 'Famous Sculptors',
  content: 'Some of the most famous sculptors include Michelangelo, known for his work "David", and Auguste Rodin, creator of "The Thinker".',
  topic: sculpture_topic
)

maths_subject = Subject.create!(
  name: 'Maths',
  image_url: 'https://images.unsplash.com/photo-1509228468518-180dd4864904?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWF0aHN8ZW58MHx8MHx8fDA%3D'
)

languages_subject = Subject.create!(
  name: 'Languages',
  image_url: 'https://images.unsplash.com/photo-1561121587-28c15de34c17?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGFuZ3VhZ2VzfGVufDB8fDB8fHww'
)

coding_subject = Subject.create!(
  name: 'Coding',
  image_url: 'https://images.unsplash.com/photo-1670552508661-b98a6b651124?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxhbmd1YWdlc3xlbnwwfHwwfHx8MA%3D%3D'
)

algebra_topic = Topic.create!(
  name: 'Algebra',
  subject: maths_subject
)

geometry_topic = Topic.create!(
  name: 'Geometry',
  subject: maths_subject
)

Lesson.create!(
  title: 'Introduction to Algebra',
  content: 'Algebra is the study of mathematical symbols and the rules for manipulating these symbols. It is foundational for advanced mathematics.',
  topic: algebra_topic
)

Lesson.create!(
  title: 'Algebraic Equations',
  content: 'Algebraic equations involve variables and constants. Solving these equations is key to understanding many concepts in mathematics.',
  topic: algebra_topic
)

Lesson.create!(
  title: 'Introduction to Geometry',
  content: 'Geometry deals with the properties and relations of points, lines, surfaces, and solids. It has applications in many fields, including art and engineering.',
  topic: geometry_topic
)

Lesson.create!(
  title: 'Basic Shapes and Angles',
  content: 'Geometry starts with understanding basic shapes like circles, triangles, and squares. Learning about angles is also fundamental.',
  topic: geometry_topic
)

spanish_topic = Topic.create!(
  name: 'Spanish',
  subject: languages_subject
)

french_topic = Topic.create!(
  name: 'French',
  subject: languages_subject
)

Lesson.create!(
  title: 'Introduction to Spanish',
  content: 'Spanish is a Romance language spoken by over 400 million people worldwide. It is known for its rich culture and history.',
  topic: spanish_topic
)

Lesson.create!(
  title: 'Basic Spanish Phrases',
  content: 'Learning basic phrases like "Hola" (Hello) and "Gracias" (Thank you) is a great way to start your journey in Spanish.',
  topic: spanish_topic
)

Lesson.create!(
  title: 'Introduction to French',
  content: 'French is a Romance language spoken in many countries around the world. It is the official language in over 29 countries.',
  topic: french_topic
)

Lesson.create!(
  title: 'Basic French Phrases',
  content: 'French phrases like "Bonjour" (Good day) and "Merci" (Thank you) are essential for everyday conversations.',
  topic: french_topic
)

odin_project_topic = Topic.create!(
  name: 'The Odin Project',
  subject: coding_subject
)

rails_guides_topic = Topic.create!(
  name: 'Rails Guides',
  subject: coding_subject
)

tailwind_css_topic = Topic.create!(
  name: 'Tailwind CSS',
  subject: coding_subject
)

Lesson.create!(
  title: 'The Odin Project - Full Stack Ruby on Rails',
  content: 'The Odin Project provides a free curriculum to learn full stack web development. It focuses on Ruby on Rails and other essential technologies. Check it out here: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails',
  topic: odin_project_topic
)

Lesson.create!(
  title: 'Rails Guides - Official Documentation',
  content: 'Rails Guides is the official documentation for Ruby on Rails. It covers all aspects of Rails development. Learn more here: https://guides.rubyonrails.org/',
  topic: rails_guides_topic
)

Lesson.create!(
  title: 'Tailwind CSS - Utility-First Framework',
  content: 'Tailwind CSS is a utility-first CSS framework that allows for rapid UI development. Great resources to learn include their official docs (https://tailwindcss.com/docs) and tutorials.',
  topic: tailwind_css_topic
)

# Ukrainian Language
ukrainian_topic = Topic.create!(
  name: 'Ukrainian',
  subject: languages_subject
)

Lesson.create!(
  title: 'Introduction to Ukrainian',
  content: 'Ukrainian is an East Slavic language and the official state language of Ukraine. It has over 40 million speakers worldwide.',
  topic: ukrainian_topic
)

Lesson.create!(
  title: 'Basic Ukrainian Phrases',
  content: 'Simple Ukrainian phrases include "Привіт" (Hello) and "Дякую" (Thank you). It is a language rich in history and culture.',
  topic: ukrainian_topic
)

# Polish Language
polish_topic = Topic.create!(
  name: 'Polish',
  subject: languages_subject
)

Lesson.create!(
  title: 'Introduction to Polish',
  content: 'Polish is a West Slavic language spoken by over 50 million people. It is the official language of Poland and known for its complex grammar.',
  topic: polish_topic
)

Lesson.create!(
  title: 'Basic Polish Phrases',
  content: 'Essential Polish phrases include "Cześć" (Hello) and "Dziękuję" (Thank you). Polish is an important language in Central Europe.',
  topic: polish_topic
)

# Russian Language
russian_topic = Topic.create!(
  name: 'Russian',
  subject: languages_subject
)

Lesson.create!(
  title: 'Introduction to Russian',
  content: 'Russian is an East Slavic language spoken by over 150 million people. It is the official language of Russia and a key global language.',
  topic: russian_topic
)

Lesson.create!(
  title: 'Basic Russian Phrases',
  content: 'Important Russian phrases include "Здравствуйте" (Hello) and "Спасибо" (Thank you). Russian is known for its Cyrillic script and rich literary history.',
  topic: russian_topic
)

puts "Seed data for Art, Maths, Languages, and Coding created successfully!"