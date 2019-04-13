# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::Tracks::Create, type: :request do
  subject { post '/graphql', params: { query: query }, headers: headers }

  let(:headers) { { 'Authorization' => "Token #{JwtHelper.encode({ user_id: user.id })}" } }
  let(:user) { create(:user) }
  let(:track) { attributes_for(:track) }
  let(:track_data) { '{\"id\":\"17d77ef9cc3594fdf8653067ea5c2e5a.mp3\",\"storage\":\"cache\",\"metadata\":{\"filename\":\"song.mp3\",\"size\":0,\"mime_type\":\"application/octet-stream\"}}' }
  let(:query) { build_query('createTrack', name: 'Blur 2') }

  it 'creates a track' do
    expect do
      subject
    end.to change { Track.count }.by(1)
  end


  it 'returns a track' do
    subject
    data = JSON.parse(response.body)['data']['createTrack']
    expect(data).to include('name' => 'Blur 2', 'trackUrl' => Track.last.track.url)
  end

  def build_query(name, **attrs)
    params = attrs.map do |key, value|
      %(#{key}: "#{value}")
    end.join('/n')

    <<~QUERY
      mutation {
        #{name}(
          #{params}
          trackData: "#{track_data}"
        ) {
          id
          name
          duration
          trackUrl
        }
      }
    QUERY
  end
end
