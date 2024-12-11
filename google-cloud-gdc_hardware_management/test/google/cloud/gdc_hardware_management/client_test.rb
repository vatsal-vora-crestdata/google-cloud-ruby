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
require "google/cloud/gdc_hardware_management"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::GDCHardwareManagement::ClientConstructionMinitest < Minitest::Test
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

  def test_gdc_hardware_management_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::GDCHardwareManagement.gdc_hardware_management transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Client, client
    end
  end

  def test_gdc_hardware_management_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::GDCHardwareManagement.gdc_hardware_management transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::GDCHardwareManagement::V1alpha::GDCHardwareManagement::Rest::Client, client
    end
  end
end
