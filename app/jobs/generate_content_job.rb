class GenerateContentJob < ApplicationJob
  queue_as :default

  def perform(user_prompt:, subject_id:, topic_id:, lesson_id:)
    subject = Subject.friendly.find(subject_id)
    topic = subject.topics.friendly.find(topic_id)
    lesson = topic.lessons.friendly.find(lesson_id)

    conn = Faraday.new(url: 'https://api.openai.com/')
    response = conn.post do |req|
      req.url "v1/chat/completions"
      req.headers['Content-Type'] = 'application/json'
      req.headers['Authorization'] = "Bearer #{ENV['OPENAI_API_KEY']}"
      req.body = {
        model: "gpt-4",
        messages: [
          { role: "system", content: user_prompt }
        ],
        max_tokens: 300,
        temperature: 0.5,
        n: 1
      }.to_json
    end

    parsed_response = JSON.parse(response.body)
    if parsed_response["choices"]
      generated_content = parsed_response["choices"][0]["message"]["content"]

      puts "-------#{generated_content}"
      #  lesson.update(content: generated_content)
      #  
      Turbo::StreamsChannel.broadcast_to(
            "ai_output_stream", 
            target: "ai_output", 
            partial: "open_ai/ai_output",
            locals: { lesson: lesson, generated_content: generated_content }
            )
    else
      Rails.logger.error "OpenAI Error: #{parsed_response['error']&.dig('message')}"
    end
  end
end
