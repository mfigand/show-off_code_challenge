# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sessions routing' do
  let(:api) { 'api/v1' }
  let(:controller) { "#{api}/sessions" }

  it { expect(get: "#{api}/login").to route_to("#{controller}#new") }
  it { expect(post: "#{api}/login").to route_to("#{controller}#create") }
  it { expect(get: "#{api}/welcome").to route_to("#{controller}#welcome") }
end
