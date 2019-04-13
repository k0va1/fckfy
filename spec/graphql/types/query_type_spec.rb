# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Types::QueryType do
  describe "tracks" do
    let!(:tracks) { create_pair(:track) }

    let(:query) do
      %(query {
        tracks {
          name
        }
      })
    end

    subject(:result) do
      FckfySchema.execute(query).as_json
    end

    it "returns all tracks" do
      expect(result.dig("data", "tracks")).to match_array(tracks.map { |track| { "name" => track.name } })
    end
  end 
end
