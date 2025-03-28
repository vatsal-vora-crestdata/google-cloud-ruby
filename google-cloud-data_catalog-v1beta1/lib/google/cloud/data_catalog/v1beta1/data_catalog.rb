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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/data_catalog/v1beta1/version"

require "google/cloud/data_catalog/v1beta1/data_catalog/credentials"
require "google/cloud/data_catalog/v1beta1/data_catalog/paths"
require "google/cloud/data_catalog/v1beta1/data_catalog/client"
require "google/cloud/data_catalog/v1beta1/data_catalog/rest"

module Google
  module Cloud
    module DataCatalog
      module V1beta1
        ##
        # Deprecated: Please use Dataplex Catalog instead.
        #
        # Data Catalog API service allows clients to discover, understand, and manage
        # their data.
        #
        # @deprecated This service is deprecated and may be removed in the next major version update.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/data_catalog/v1beta1/data_catalog"
        #     client = ::Google::Cloud::DataCatalog::V1beta1::DataCatalog::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/data_catalog/v1beta1/data_catalog/rest"
        #     client = ::Google::Cloud::DataCatalog::V1beta1::DataCatalog::Rest::Client.new
        #
        module DataCatalog
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "data_catalog", "helpers.rb"
require "google/cloud/data_catalog/v1beta1/data_catalog/helpers" if ::File.file? helper_path
