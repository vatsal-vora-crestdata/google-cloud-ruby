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
require "google/cloud/documentai/v1beta3/document_service_pb"
require "google/cloud/document_ai/v1beta3/document_service/rest"


class ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ClientTest < Minitest::Test
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
  end

  def test_update_dataset
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    dataset = {}
    update_mask = {}

    update_dataset_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ServiceStub.stub :transcode_update_dataset_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_dataset_client_stub do
        # Create client
        client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_dataset({ dataset: dataset, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_dataset dataset: dataset, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_dataset ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetRequest.new(dataset: dataset, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_dataset({ dataset: dataset, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_dataset(::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetRequest.new(dataset: dataset, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_dataset_client_stub.call_count
      end
    end
  end

  def test_import_documents
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    dataset = "hello world"
    batch_documents_import_configs = [{}]

    import_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ServiceStub.stub :transcode_import_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_documents_client_stub do
        # Create client
        client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_documents({ dataset: dataset, batch_documents_import_configs: batch_documents_import_configs }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_documents dataset: dataset, batch_documents_import_configs: batch_documents_import_configs do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_documents ::Google::Cloud::DocumentAI::V1beta3::ImportDocumentsRequest.new(dataset: dataset, batch_documents_import_configs: batch_documents_import_configs) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_documents({ dataset: dataset, batch_documents_import_configs: batch_documents_import_configs }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_documents(::Google::Cloud::DocumentAI::V1beta3::ImportDocumentsRequest.new(dataset: dataset, batch_documents_import_configs: batch_documents_import_configs), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_documents_client_stub.call_count
      end
    end
  end

  def test_get_document
    # Create test objects.
    client_result = ::Google::Cloud::DocumentAI::V1beta3::GetDocumentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    dataset = "hello world"
    document_id = {}
    read_mask = {}
    page_range = {}

    get_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ServiceStub.stub :transcode_get_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_document_client_stub do
        # Create client
        client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_document({ dataset: dataset, document_id: document_id, read_mask: read_mask, page_range: page_range }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_document dataset: dataset, document_id: document_id, read_mask: read_mask, page_range: page_range do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_document ::Google::Cloud::DocumentAI::V1beta3::GetDocumentRequest.new(dataset: dataset, document_id: document_id, read_mask: read_mask, page_range: page_range) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_document({ dataset: dataset, document_id: document_id, read_mask: read_mask, page_range: page_range }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_document(::Google::Cloud::DocumentAI::V1beta3::GetDocumentRequest.new(dataset: dataset, document_id: document_id, read_mask: read_mask, page_range: page_range), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_document_client_stub.call_count
      end
    end
  end

  def test_batch_delete_documents
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    dataset = "hello world"
    dataset_documents = {}

    batch_delete_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ServiceStub.stub :transcode_batch_delete_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_delete_documents_client_stub do
        # Create client
        client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_delete_documents({ dataset: dataset, dataset_documents: dataset_documents }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_delete_documents dataset: dataset, dataset_documents: dataset_documents do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_delete_documents ::Google::Cloud::DocumentAI::V1beta3::BatchDeleteDocumentsRequest.new(dataset: dataset, dataset_documents: dataset_documents) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_delete_documents({ dataset: dataset, dataset_documents: dataset_documents }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_delete_documents(::Google::Cloud::DocumentAI::V1beta3::BatchDeleteDocumentsRequest.new(dataset: dataset, dataset_documents: dataset_documents), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_delete_documents_client_stub.call_count
      end
    end
  end

  def test_get_dataset_schema
    # Create test objects.
    client_result = ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    visible_fields_only = true

    get_dataset_schema_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ServiceStub.stub :transcode_get_dataset_schema_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_dataset_schema_client_stub do
        # Create client
        client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_dataset_schema({ name: name, visible_fields_only: visible_fields_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_dataset_schema name: name, visible_fields_only: visible_fields_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_dataset_schema ::Google::Cloud::DocumentAI::V1beta3::GetDatasetSchemaRequest.new(name: name, visible_fields_only: visible_fields_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_dataset_schema({ name: name, visible_fields_only: visible_fields_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_dataset_schema(::Google::Cloud::DocumentAI::V1beta3::GetDatasetSchemaRequest.new(name: name, visible_fields_only: visible_fields_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_dataset_schema_client_stub.call_count
      end
    end
  end

  def test_update_dataset_schema
    # Create test objects.
    client_result = ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    dataset_schema = {}
    update_mask = {}

    update_dataset_schema_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::ServiceStub.stub :transcode_update_dataset_schema_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_dataset_schema_client_stub do
        # Create client
        client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_dataset_schema({ dataset_schema: dataset_schema, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_dataset_schema dataset_schema: dataset_schema, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_dataset_schema ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetSchemaRequest.new(dataset_schema: dataset_schema, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_dataset_schema({ dataset_schema: dataset_schema, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_dataset_schema(::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetSchemaRequest.new(dataset_schema: dataset_schema, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_dataset_schema_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DocumentService::Rest::Client::Configuration, config
  end
end
