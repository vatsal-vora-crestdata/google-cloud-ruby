# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/evaluation_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/aiplatform/v1/evaluation_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module EvaluationService
          # Vertex AI Online Evaluation Service.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.EvaluationService'

            # Evaluates instances based on a given metric.
            rpc :EvaluateInstances, ::Google::Cloud::AIPlatform::V1::EvaluateInstancesRequest, ::Google::Cloud::AIPlatform::V1::EvaluateInstancesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
