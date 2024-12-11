# frozen_string_literal: true

# Copyright 2023 Google LLC
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
require "google/cloud/gkehub/v1/service_pb"
require "google/cloud/gke_hub/v1/gke_hub/rest"


class ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
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

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_list_memberships
    # Create test objects.
    client_result = ::Google::Cloud::GkeHub::V1::ListMembershipsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_memberships_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_list_memberships_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_memberships_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_memberships({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_memberships parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_memberships ::Google::Cloud::GkeHub::V1::ListMembershipsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_memberships({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_memberships(::Google::Cloud::GkeHub::V1::ListMembershipsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_memberships_client_stub.call_count
      end
    end
  end

  def test_list_features
    # Create test objects.
    client_result = ::Google::Cloud::GkeHub::V1::ListFeaturesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_features_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_list_features_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_features_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_features({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_features parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_features ::Google::Cloud::GkeHub::V1::ListFeaturesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_features({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_features(::Google::Cloud::GkeHub::V1::ListFeaturesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_features_client_stub.call_count
      end
    end
  end

  def test_get_membership
    # Create test objects.
    client_result = ::Google::Cloud::GkeHub::V1::Membership.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_membership_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_get_membership_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_membership_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_membership({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_membership name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_membership ::Google::Cloud::GkeHub::V1::GetMembershipRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_membership({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_membership(::Google::Cloud::GkeHub::V1::GetMembershipRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_membership_client_stub.call_count
      end
    end
  end

  def test_get_feature
    # Create test objects.
    client_result = ::Google::Cloud::GkeHub::V1::Feature.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_get_feature_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_feature_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_feature({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_feature name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_feature ::Google::Cloud::GkeHub::V1::GetFeatureRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_feature({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_feature(::Google::Cloud::GkeHub::V1::GetFeatureRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_feature_client_stub.call_count
      end
    end
  end

  def test_create_membership
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    membership_id = "hello world"
    resource = {}
    request_id = "hello world"

    create_membership_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_create_membership_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_membership_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_membership({ parent: parent, membership_id: membership_id, resource: resource, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_membership parent: parent, membership_id: membership_id, resource: resource, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_membership ::Google::Cloud::GkeHub::V1::CreateMembershipRequest.new(parent: parent, membership_id: membership_id, resource: resource, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_membership({ parent: parent, membership_id: membership_id, resource: resource, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_membership(::Google::Cloud::GkeHub::V1::CreateMembershipRequest.new(parent: parent, membership_id: membership_id, resource: resource, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_membership_client_stub.call_count
      end
    end
  end

  def test_create_feature
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    feature_id = "hello world"
    resource = {}
    request_id = "hello world"

    create_feature_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_create_feature_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_feature_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_feature({ parent: parent, feature_id: feature_id, resource: resource, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_feature parent: parent, feature_id: feature_id, resource: resource, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_feature ::Google::Cloud::GkeHub::V1::CreateFeatureRequest.new(parent: parent, feature_id: feature_id, resource: resource, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_feature({ parent: parent, feature_id: feature_id, resource: resource, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_feature(::Google::Cloud::GkeHub::V1::CreateFeatureRequest.new(parent: parent, feature_id: feature_id, resource: resource, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_feature_client_stub.call_count
      end
    end
  end

  def test_delete_membership
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"
    force = true

    delete_membership_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_delete_membership_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_membership_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_membership({ name: name, request_id: request_id, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_membership name: name, request_id: request_id, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_membership ::Google::Cloud::GkeHub::V1::DeleteMembershipRequest.new(name: name, request_id: request_id, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_membership({ name: name, request_id: request_id, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_membership(::Google::Cloud::GkeHub::V1::DeleteMembershipRequest.new(name: name, request_id: request_id, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_membership_client_stub.call_count
      end
    end
  end

  def test_delete_feature
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true
    request_id = "hello world"

    delete_feature_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_delete_feature_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_feature_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_feature({ name: name, force: force, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_feature name: name, force: force, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_feature ::Google::Cloud::GkeHub::V1::DeleteFeatureRequest.new(name: name, force: force, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_feature({ name: name, force: force, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_feature(::Google::Cloud::GkeHub::V1::DeleteFeatureRequest.new(name: name, force: force, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_feature_client_stub.call_count
      end
    end
  end

  def test_update_membership
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    update_mask = {}
    resource = {}
    request_id = "hello world"

    update_membership_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_update_membership_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_membership_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_membership({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_membership name: name, update_mask: update_mask, resource: resource, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_membership ::Google::Cloud::GkeHub::V1::UpdateMembershipRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_membership({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_membership(::Google::Cloud::GkeHub::V1::UpdateMembershipRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_membership_client_stub.call_count
      end
    end
  end

  def test_update_feature
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    update_mask = {}
    resource = {}
    request_id = "hello world"

    update_feature_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_update_feature_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_feature_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_feature({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_feature name: name, update_mask: update_mask, resource: resource, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_feature ::Google::Cloud::GkeHub::V1::UpdateFeatureRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_feature({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_feature(::Google::Cloud::GkeHub::V1::UpdateFeatureRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_feature_client_stub.call_count
      end
    end
  end

  def test_generate_connect_manifest
    # Create test objects.
    client_result = ::Google::Cloud::GkeHub::V1::GenerateConnectManifestResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    namespace = "hello world"
    proxy = "hello world"
    version = "hello world"
    is_upgrade = true
    registry = "hello world"
    image_pull_secret_content = "hello world"

    generate_connect_manifest_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::GkeHub::V1::GkeHub::Rest::ServiceStub.stub :transcode_generate_connect_manifest_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, generate_connect_manifest_client_stub do
        # Create client
        client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.generate_connect_manifest({ name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.generate_connect_manifest name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.generate_connect_manifest ::Google::Cloud::GkeHub::V1::GenerateConnectManifestRequest.new(name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.generate_connect_manifest({ name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.generate_connect_manifest(::Google::Cloud::GkeHub::V1::GenerateConnectManifestRequest.new(name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, generate_connect_manifest_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client::Configuration, config
  end
end
