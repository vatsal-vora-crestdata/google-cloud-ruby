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

require "gapic/grpc/service_stub"

require "google/cloud/gdc_hardware_management/v1alpha/gdc_hardware_management"

class ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::ClientPathsTest < Minitest::Test
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

  def test_change_log_entry_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.change_log_entry_path project: "value0", location: "value1", order: "value2", change_log_entry: "value3"
      assert_equal "projects/value0/locations/value1/orders/value2/changeLogEntries/value3", path
    end
  end

  def test_comment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.comment_path project: "value0", location: "value1", order: "value2", comment: "value3"
      assert_equal "projects/value0/locations/value1/orders/value2/comments/value3", path
    end
  end

  def test_hardware_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.hardware_path project: "value0", location: "value1", hardware: "value2"
      assert_equal "projects/value0/locations/value1/hardware/value2", path
    end
  end

  def test_hardware_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.hardware_group_path project: "value0", location: "value1", order: "value2", hardware_group: "value3"
      assert_equal "projects/value0/locations/value1/orders/value2/hardwareGroups/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_order_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.order_path project: "value0", location: "value1", order: "value2"
      assert_equal "projects/value0/locations/value1/orders/value2", path
    end
  end

  def test_site_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.site_path project: "value0", location: "value1", site: "value2"
      assert_equal "projects/value0/locations/value1/sites/value2", path
    end
  end

  def test_sku_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.sku_path project: "value0", location: "value1", sku: "value2"
      assert_equal "projects/value0/locations/value1/skus/value2", path
    end
  end

  def test_zone_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.zone_path project: "value0", location: "value1", zone: "value2"
      assert_equal "projects/value0/locations/value1/zones/value2", path
    end
  end
end
