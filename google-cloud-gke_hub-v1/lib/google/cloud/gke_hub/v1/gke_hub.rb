# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/gke_hub/v1/version"

require "google/cloud/gke_hub/v1/gke_hub/credentials"
require "google/cloud/gke_hub/v1/gke_hub/paths"
require "google/cloud/gke_hub/v1/gke_hub/operations"
require "google/cloud/gke_hub/v1/gke_hub/client"
require "google/cloud/gke_hub/v1/gke_hub/rest"

module Google
  module Cloud
    module GkeHub
      module V1
        ##
        # The GKE Hub service handles the registration of many Kubernetes clusters to
        # Google Cloud, and the management of multi-cluster features over those
        # clusters.
        #
        # The GKE Hub service operates on the following resources:
        #
        # * {::Google::Cloud::GkeHub::V1::Membership Membership}
        # * {::Google::Cloud::GkeHub::V1::Feature Feature}
        #
        # GKE Hub is currently available in the global region and all regions in
        # https://cloud.google.com/compute/docs/regions-zones. Feature is only
        # available in global region while membership is global region and all the
        # regions.
        #
        # **Membership management may be non-trivial:** it is recommended to use one
        # of the Google-provided client libraries or tools where possible when working
        # with Membership resources.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/gke_hub/v1/gke_hub"
        #     client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/gke_hub/v1/gke_hub/rest"
        #     client = ::Google::Cloud::GkeHub::V1::GkeHub::Rest::Client.new
        #
        module GkeHub
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "gke_hub", "helpers.rb"
require "google/cloud/gke_hub/v1/gke_hub/helpers" if ::File.file? helper_path
