# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/os_config/v1/os_config_service"

class ::Google::Cloud::OsConfig::V1::OsConfigService::ClientPathsTest < Minitest::Test
  def test_patch_deployment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.patch_deployment_path project: "value0", patch_deployment: "value1"
      assert_equal "projects/value0/patchDeployments/value1", path
    end
  end

  def test_patch_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.patch_job_path project: "value0", patch_job: "value1"
      assert_equal "projects/value0/patchJobs/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
