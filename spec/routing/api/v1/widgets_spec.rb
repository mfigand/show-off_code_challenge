# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'widgets routing' do
  let(:widgets_path) { 'api/v1/widgets' }
  let(:controller) { 'api/v1/widgets' }
  let(:id) { '1' }

  it '#index' do
    expect(get: widgets_path.to_s).to route_to(controller: controller,
                                               action: 'index')
  end

  it '#create' do
    expect(post: widgets_path.to_s).to route_to(controller: controller,
                                                action: 'create')
  end

  it '#new' do
    expect(get: "#{widgets_path}/new").to route_to(controller: controller,
                                                   action: 'new')
  end

  it '#edit' do
    expect(get: "#{widgets_path}/#{id}/edit").to route_to(controller: controller,
                                                          id: id,
                                                          action: 'edit')
  end

  it '#show' do
    expect(get: "#{widgets_path}/#{id}").to route_to(controller: controller,
                                                     id: id,
                                                     action: 'show')
  end

  it '#update' do
    expect(patch: "#{widgets_path}/#{id}").to route_to(controller: controller,
                                                       id: id,
                                                       action: 'update')
    expect(put: "#{widgets_path}/#{id}").to route_to(controller: controller,
                                                     id: id,
                                                     action: 'update')
  end

  it '#destroy' do
    expect(delete: "#{widgets_path}/#{id}").to route_to(controller: controller,
                                                        id: id,
                                                        action: 'destroy')
  end
end
