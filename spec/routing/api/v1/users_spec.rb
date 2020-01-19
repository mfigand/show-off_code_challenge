# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users routing' do
  let(:users_path) { 'api/v1/users' }
  let(:controller) { 'api/v1/users' }
  let(:id) { '1' }

  it '#index' do
    expect(get: users_path.to_s).to route_to(controller: controller,
                                             action: 'index')
  end

  it '#create' do
    expect(post: users_path.to_s).to route_to(controller: controller,
                                              action: 'create')
  end

  it '#new' do
    expect(get: "#{users_path}/new").to route_to(controller: controller,
                                                 action: 'new')
  end

  it '#edit' do
    expect(get: "#{users_path}/#{id}/edit").to route_to(controller: controller,
                                                        id: id,
                                                        action: 'edit')
  end

  it '#show' do
    expect(get: "#{users_path}/#{id}").to route_to(controller: controller,
                                                   id: id,
                                                   action: 'show')
  end

  it '#update' do
    expect(patch: "#{users_path}/#{id}").to route_to(controller: controller,
                                                     id: id,
                                                     action: 'update')
    expect(put: "#{users_path}/#{id}").to route_to(controller: controller,
                                                   id: id,
                                                   action: 'update')
  end

  it '#destroy' do
    expect(delete: "#{users_path}/#{id}").to route_to(controller: controller,
                                                      id: id,
                                                      action: 'destroy')
  end
  # api_v1_user_widgets GET /api/v1/users/:user_id/widgets(.:format)     api/v1/widgets#index
  # api_v1_user_widget  GET /api/v1/users/:user_id/widgets/:id(.:format) api/v1/widgets#show
end
