# frozen_string_literal: true

# Copyright 2025 Google LLC
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


module Google
  module Cloud
    module AIPlatform
      module V1
        # ReasoningEngine configurations
        # @!attribute [rw] package_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ReasoningEngineSpec::PackageSpec]
        #     Optional. User provided package spec of the ReasoningEngine.
        #     Ignored when users directly specify a deployment image through
        #     `deployment_spec.first_party_image_override`, but keeping the
        #     field_behavior to avoid introducing breaking changes.
        # @!attribute [rw] deployment_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ReasoningEngineSpec::DeploymentSpec]
        #     Optional. The specification of a Reasoning Engine deployment.
        # @!attribute [rw] class_methods
        #   @return [::Array<::Google::Protobuf::Struct>]
        #     Optional. Declarations for object class methods in OpenAPI specification
        #     format.
        # @!attribute [rw] agent_framework
        #   @return [::String]
        #     Optional. The OSS agent framework used to develop the agent.
        #     Currently supported values: "langchain", "langgraph", "ag2", "custom".
        class ReasoningEngineSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # User provided package spec like pickled object and package requirements.
          # @!attribute [rw] pickle_object_gcs_uri
          #   @return [::String]
          #     Optional. The Cloud Storage URI of the pickled python object.
          # @!attribute [rw] dependency_files_gcs_uri
          #   @return [::String]
          #     Optional. The Cloud Storage URI of the dependency files in tar.gz format.
          # @!attribute [rw] requirements_gcs_uri
          #   @return [::String]
          #     Optional. The Cloud Storage URI of the `requirements.txt` file
          # @!attribute [rw] python_version
          #   @return [::String]
          #     Optional. The Python version. Currently support 3.8, 3.9, 3.10, 3.11.
          #     If not specified, default value is 3.10.
          class PackageSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The specification of a Reasoning Engine deployment.
          # @!attribute [rw] env
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::EnvVar>]
          #     Optional. Environment variables to be set with the Reasoning Engine
          #     deployment. The environment variables can be updated through the
          #     UpdateReasoningEngine API.
          # @!attribute [rw] secret_env
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::SecretEnvVar>]
          #     Optional. Environment variables where the value is a secret in Cloud
          #     Secret Manager.
          #     To use this feature, add 'Secret Manager Secret Accessor' role
          #     (roles/secretmanager.secretAccessor) to AI Platform Reasoning Engine
          #     Service Agent.
          class DeploymentSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # ReasoningEngine provides a customizable runtime for models to determine
        # which actions to take and in which order.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the ReasoningEngine.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the ReasoningEngine.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the ReasoningEngine.
        # @!attribute [rw] spec
        #   @return [::Google::Cloud::AIPlatform::V1::ReasoningEngineSpec]
        #     Optional. Configurations of the ReasoningEngine
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this ReasoningEngine was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this ReasoningEngine was most recently updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Used to perform consistent read-modify-write updates. If not set,
        #     a blind "overwrite" update happens.
        class ReasoningEngine
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
