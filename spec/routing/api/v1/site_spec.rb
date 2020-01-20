# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'site routing' do
  subject { { get: 'api/v1/' } }
  let(:controller) { 'api/v1/site' }

  it { expect(get: '/').to route_to('api/v1/site#home') }
  it { expect(get: 'api/v1/').to route_to('api/v1/site#home') }
  it do
    is_expected.to route_to(controller: controller,
                            action: 'home')
  end
end
