puts 'Deleting all subjects'
Subject.destroy_all
Tag.destroy_all

puts 'Starting seed.........'

# Create tags
art_tag = Tag.create!(name: 'art')
painting_tag = Tag.create!(name: 'painting')
introduction_tag = Tag.create!(name: 'introduction')
history_tag = Tag.create!(name: 'history')
sculpture_tag = Tag.create!(name: 'sculpture')
maths_tag = Tag.create!(name: 'maths')
algebra_tag = Tag.create!(name: 'algebra')
equations_tag = Tag.create!(name: 'equations')
geometry_tag = Tag.create!(name: 'geometry')
shapes_tag = Tag.create!(name: 'shapes')
phrases_tag = Tag.create!(name: 'phrases')
spanish_tag = Tag.create!(name: 'spanish')
french_tag = Tag.create!(name: 'french')
italian_tag = Tag.create!(name: 'italian')
odin_project_tag = Tag.create!(name: 'The Odin Project')
rails_guides_tag = Tag.create!(name: 'Rails Guides')
tailwind_css_tag = Tag.create!(name: 'Tailwind CSS')
css_tag = Tag.create!(name: 'CSS')
documentation_tag = Tag.create!(name: 'Documentation')

# Art Subject
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
  topic: painting_topic,
  tags: [art_tag, painting_tag, introduction_tag]
)

Lesson.create!(
  title: 'Famous Painters',
  content: 'Many painters throughout history have left a mark on the world. Artists like Leonardo da Vinci and Vincent van Gogh are known for their masterpieces.',
  topic: painting_topic,
  tags: [art_tag, painting_tag, history_tag]
)

Lesson.create!(
  title: 'Introduction to Sculpture',
  content: 'Sculpture is a form of three-dimensional art, usually created by carving, modeling, or assembling materials like stone, clay, or metal.',
  topic: sculpture_topic,
  tags: [art_tag, sculpture_tag, introduction_tag]
)

Lesson.create!(
  title: 'Famous Sculptors',
  content: 'Some of the most famous sculptors include Michelangelo, known for his work "David", and Auguste Rodin, creator of "The Thinker".',
  topic: sculpture_topic,
  tags: [art_tag, sculpture_tag, history_tag]
)

# Maths Subject
maths_subject = Subject.create!(
  name: 'Maths',
  image_url: 'https://images.unsplash.com/photo-1509228468518-180dd4864904?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWF0aHN8ZW58MHx8MHx8fDA%3D'
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
  topic: algebra_topic,
  tags: [maths_tag, algebra_tag, introduction_tag]
)

Lesson.create!(
  title: 'Algebraic Equations',
  content: 'Algebraic equations involve variables and constants. Solving these equations is key to understanding many concepts in mathematics.',
  topic: algebra_topic,
  tags: [maths_tag, algebra_tag, equations_tag]
)

Lesson.create!(
  title: 'Introduction to Geometry',
  content: 'Geometry deals with the properties and relations of points, lines, surfaces, and solids. It has applications in many fields, including art and engineering.',
  topic: geometry_topic,
  tags: [maths_tag, geometry_tag, introduction_tag]
)

Lesson.create!(
  title: 'Basic Shapes and Angles',
  content: 'Geometry starts with understanding basic shapes like circles, triangles, and squares. Learning about angles is also fundamental.',
  topic: geometry_topic,
  tags: [maths_tag, geometry_tag, shapes_tag]
)

## Languages Subject
languages_subject = Subject.create!(
  name: 'Languages',
  image_url: 'https://images.unsplash.com/photo-1561121587-28c15de34c17?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGFuZ3VhZ2VzfGVufDB8fDB8fHww'
)

spanish_topic = Topic.create!(
  name: 'Spanish',
  subject: languages_subject
)

french_topic = Topic.create!(
  name: 'French',
  subject: languages_subject
)

italian_topic = Topic.create!(
  name: 'Italian',
  subject: languages_subject
)

Lesson.create!(
  title: 'Introduction to Spanish',
  content: 'Spanish is a Romance language spoken by over 400 million people worldwide. It is known for its rich culture and history.',
  topic: spanish_topic,
  tags: [spanish_tag, introduction_tag] 
)

Lesson.create!(
  title: 'Basic Spanish Phrases',
  content: 'Learning basic phrases like "Hola" (Hello) and "Gracias" (Thank you) is a great way to start your journey in Spanish.',
  topic: spanish_topic,
  tags: [spanish_tag, phrases_tag]  
)

Lesson.create!(
  title: 'Introduction to French',
  content: 'French is a Romance language spoken in many countries around the world. It is the official language in over 29 countries.',
  topic: french_topic,
  tags: [french_tag, introduction_tag]  
)

Lesson.create!(
  title: 'Basic French Phrases',
  content: 'French phrases like "Bonjour" (Good day) and "Merci" (Thank you) are essential for everyday conversations.',
  topic: french_topic,
  tags: [french_tag, phrases_tag]  
)

Lesson.create!(
  title: 'Introduction to Italian',
  content: 'Italian is a Romance language spoken mainly in Italy. It is known for its rich history, culture, and beautiful landscapes.',
  topic: italian_topic,
  tags: [italian_tag, introduction_tag]  
)

Lesson.create!(
  title: 'Basic Italian Phrases',
  content: 'Common Italian phrases include "Ciao" (Hello) and "Grazie" (Thank you). Learning these phrases is a great way to start.',
  topic: italian_topic,
  tags: [italian_tag, phrases_tag]  
)

# Coding Subject
coding_subject = Subject.create!(
  name: 'Coding',
  image_url: 'https://images.unsplash.com/photo-1670552508661-b98a6b651124?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxhbmd1YWdlc3xlbnwwfHwwfHx8MA%3D%3D'
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
  topic: odin_project_topic,
  tags: [odin_project_tag, introduction_tag]  # Removed coding_subject and added odin_project_tag
)

Lesson.create!(
  title: 'Rails Guides - Official Documentation',
  content: 'Rails Guides is the official documentation for Ruby on Rails. It covers all aspects of Rails development. Learn more here: https://guides.rubyonrails.org/',
  topic: rails_guides_topic,
  tags: [rails_guides_tag, documentation_tag]  # Removed coding_subject and added rails_guides_tag
)

Lesson.create!(
  title: 'Tailwind CSS - Utility-First Framework',
  content: 'Tailwind CSS is a utility-first CSS framework that allows for rapid UI development. Great resources to learn include their official docs (https://tailwindcss.com/docs) and tutorials.',
  topic: tailwind_css_topic,
  tags: [tailwind_css_tag, css_tag]  # Removed coding_subject and added tailwind_css_tag and css_tag
)

puts "Seed data for Art, Maths, Languages, and Coding created successfully!"
