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
require "google/cloud/managed_kafka"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::ManagedKafka::ClientConstructionMinitest < Minitest::Test
  class DummyStub
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

  def test_managed_kafka_grpc
    skip unless Google::Cloud::ManagedKafka.managed_kafka_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::ManagedKafka.managed_kafka transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::ManagedKafka::V1::ManagedKafka::Client, client
    end
  end

  def test_managed_kafka_rest
    skip unless Google::Cloud::ManagedKafka.managed_kafka_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::ManagedKafka.managed_kafka transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::ManagedKafka::V1::ManagedKafka::Rest::Client, client
    end
  end

  def test_managed_kafka_connect_grpc
    skip unless Google::Cloud::ManagedKafka.managed_kafka_connect_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::ManagedKafka.managed_kafka_connect transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::ManagedKafka::V1::ManagedKafkaConnect::Client, client
    end
  end

  def test_managed_kafka_connect_rest
    skip unless Google::Cloud::ManagedKafka.managed_kafka_connect_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::ManagedKafka.managed_kafka_connect transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::ManagedKafka::V1::ManagedKafkaConnect::Rest::Client, client
    end
  end
end
