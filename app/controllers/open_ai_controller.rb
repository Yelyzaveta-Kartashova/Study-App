class OpenAiController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ids

  def index; end

  def generate_content
    if ENV['SPOOF_AI_RESPONSE'] == 'true'
      @generated_content = 'SPOOFED RESPONSE'
    else
      conn = Faraday.new(url: 'https://api.openai.com/')
      response = conn.post do |req|
        req.url "v1/chat/completions"
        req.headers['Content-Type'] = 'application/json'
        req.headers['Authorization'] = "Bearer #{ENV['OPENAI_API_KEY']}"
        req.body = {
          model: "gpt-4",
          messages: [
            {
              role: "system",
              content: generate_content_params[:user_prompt]
            },
          ],
          max_tokens: 200,
          temperature: 0.5,
          n: 1
        }.to_json
      end

      parsed_response = JSON.parse(response.body)
      if parsed_response.has_key?('error')
        @ai_output_error = parsed_response['error']['message']
      else
        @generated_content = parsed_response["choices"][0]["message"]["content"]
      end
    end

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to subject_topic_lesson_path(@subject, @topic, @lesson), notice: 'Content generated successfully.' }
    end
  end

  private

  def generate_content_params
    params.require(:generate_content).permit(:user_prompt)
  end

  def set_ids
    @subject = Subject.friendly.find(params[:subject_id])
    @topic = @subject.topics.friendly.find(params[:topic_id])
    @lesson = params[:id].present? ? @topic.lessons.friendly.find(params[:id]) : @topic.lessons.build
  end
end
