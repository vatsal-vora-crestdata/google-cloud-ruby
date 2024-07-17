# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"
require "gapic/rest"
require "google/cloud/discoveryengine/v1beta/sample_query_service_pb"
require "google/cloud/discovery_engine/v1beta/sample_query_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_get_sample_query
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuery.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_sample_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ServiceStub.stub :transcode_get_sample_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_sample_query_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_sample_query({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_sample_query name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_sample_query ::Google::Cloud::DiscoveryEngine::V1beta::GetSampleQueryRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_sample_query({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_sample_query(::Google::Cloud::DiscoveryEngine::V1beta::GetSampleQueryRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_sample_query_client_stub.call_count
      end
    end
  end

  def test_list_sample_queries
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQueriesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_sample_queries_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ServiceStub.stub :transcode_list_sample_queries_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_sample_queries_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_sample_queries({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_sample_queries parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_sample_queries ::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQueriesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_sample_queries({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_sample_queries(::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQueriesRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_sample_queries_client_stub.call_count
      end
    end
  end

  def test_create_sample_query
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuery.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    sample_query = {}
    sample_query_id = "hello world"

    create_sample_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ServiceStub.stub :transcode_create_sample_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_sample_query_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_sample_query({ parent: parent, sample_query: sample_query, sample_query_id: sample_query_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_sample_query parent: parent, sample_query: sample_query, sample_query_id: sample_query_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_sample_query ::Google::Cloud::DiscoveryEngine::V1beta::CreateSampleQueryRequest.new(parent: parent, sample_query: sample_query, sample_query_id: sample_query_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_sample_query({ parent: parent, sample_query: sample_query, sample_query_id: sample_query_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_sample_query(::Google::Cloud::DiscoveryEngine::V1beta::CreateSampleQueryRequest.new(parent: parent, sample_query: sample_query, sample_query_id: sample_query_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_sample_query_client_stub.call_count
      end
    end
  end

  def test_update_sample_query
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuery.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    sample_query = {}
    update_mask = {}

    update_sample_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ServiceStub.stub :transcode_update_sample_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_sample_query_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_sample_query({ sample_query: sample_query, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_sample_query sample_query: sample_query, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_sample_query ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSampleQueryRequest.new(sample_query: sample_query, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_sample_query({ sample_query: sample_query, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_sample_query(::Google::Cloud::DiscoveryEngine::V1beta::UpdateSampleQueryRequest.new(sample_query: sample_query, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_sample_query_client_stub.call_count
      end
    end
  end

  def test_delete_sample_query
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_sample_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ServiceStub.stub :transcode_delete_sample_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_sample_query_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_sample_query({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_sample_query name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_sample_query ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSampleQueryRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_sample_query({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_sample_query(::Google::Cloud::DiscoveryEngine::V1beta::DeleteSampleQueryRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_sample_query_client_stub.call_count
      end
    end
  end

  def test_import_sample_queries
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    inline_source = {}
    parent = "hello world"
    error_config = {}

    import_sample_queries_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::ServiceStub.stub :transcode_import_sample_queries_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_sample_queries_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_sample_queries({ inline_source: inline_source, parent: parent, error_config: error_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_sample_queries inline_source: inline_source, parent: parent, error_config: error_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_sample_queries ::Google::Cloud::DiscoveryEngine::V1beta::ImportSampleQueriesRequest.new(inline_source: inline_source, parent: parent, error_config: error_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_sample_queries({ inline_source: inline_source, parent: parent, error_config: error_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_sample_queries(::Google::Cloud::DiscoveryEngine::V1beta::ImportSampleQueriesRequest.new(inline_source: inline_source, parent: parent, error_config: error_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_sample_queries_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client::Configuration, config
  end
end
