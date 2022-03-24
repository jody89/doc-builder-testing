# frozen_string_literal: true

require 'spec_helper'

describe 'DocumentBuilder licensing' do
  it 'running docbuilder will not create temp license' do
    skip('This test only for Desktop Builder') if ENV['BUILDER_PLATFORM'] == 'WEB'
    expect(Dir["#{builder.license_path}/*.lickey"]).to be_empty
  end
end
