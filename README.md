# README

# Project Name - Study App
Online - https://study-app-769d4ae5cfd2.herokuapp.com

## Description
A Ruby on Rails application designed to manage subjects, topics, and lessons, with features including user roles, image uploads, trix editor and content generation using the OpenAI API. This project leverages Stimulus for enhanced interactivity and Tailwind CSS for styling.

## Features
- **User Authentication**: Powered by Devise, with custom roles for admin, teacher, and student.
- **Role Management**: Admins can assign and manage roles through the Assignment model.
- **Image Uploads**: Users can upload and preview lesson images and avatars, with resizing functionality.
- **Content Generation**: OpenAI API integration for generating lesson content based on user input.
- **Dynamic UI**: Stimulus controllers enhance functionality for dropdowns, image previews, and more.
- **Responsive Design**: Tailwind CSS ensures the application is mobile-friendly and visually appealing.

## Getting Started

### Prerequisites
- Ruby `~> 3.x`
- Rails `~> 7.x`
- PostgreSQL
- Node.js and Yarn
- Redis (for ActionCable if applicable)

### Installation
1. Clone the repository:
   ```
   git clone https://github.com/Yelyzaveta-Kartashova/your-repo-name.git
   cd your-repo-name
   ```
2. Install dependencies:
   ```
   bundle install
   yarn install
   ```
3. Set up the database:
   ```rails db:create db:migrate db:seed
   ```
4. Configure environment variables:
   - Create an `.env` file in the project root.
   - Add the following variables:
     ```env
     OPENAI_API_KEY=your_openai_api_key
     ```

### Usage
1. Start the Rails server:
   ```rails server
   ```
2. Visit the application at `http://localhost:3000`.
3. Log in as an admin to access role management features.

## Development

### Stimulus Controllers
- **`open_ai controller`**: Handles open ai block when editing lessons
- **`user_avatar_uploader`**: Manages avatar uploads and previews for user profiles.

### Tailwind CSS
- Tailwind is used for styling across the application. Customize styles in the `tailwind.config.js` file.

### OpenAI Integration
- Located in a dedicated controller for handling API interactions.
- Generates lesson content based on user-provided prompts.

## Testing
1. Run the test suite:
   ```bash
   rails test
   ```
2. Ensure all tests pass before deploying changes.

## Deployment
- Configure your hosting provider (e.g., Heroku, Render, or AWS).
- Set up environment variables for production.
- Migrate the database before starting the server.

## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request.

# Update tailwind css - you must have this running
tailwindcss -i app/assets/stylesheets/application.tailwind.css -o app/assets/builds/tailwind.css -c config/tailwind.config.js -w -m

# Useful Git commands
`git stash push -a` - this staches all changes in a branch 
`git stash pop` - this retrieves the stash - when you are in the branch you stashed them in

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

## Acknowledgments
- [Ruby on Rails](https://rubyonrails.org/)
- [Stimulus](https://stimulus.hotwired.dev/)
- [Tailwind CSS](https://tailwindcss.com/)
- [OpenAI](https://openai.com/)