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
    module ParameterManager
      module V1
        # Message describing Parameter resource
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. [Output only] The resource name of the Parameter in the format
        #     `projects/*/locations/*/parameters/*`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. [Output only] Create time stamp
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. [Output only] Update time stamp
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels as key value pairs
        # @!attribute [rw] format
        #   @return [::Google::Cloud::ParameterManager::V1::ParameterFormat]
        #     Optional. Specifies the format of a Parameter.
        # @!attribute [r] policy_member
        #   @return [::Google::Iam::V1::ResourcePolicyMember]
        #     Output only. [Output-only] policy member strings of a Google Cloud
        #     resource.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Optional. Customer managed encryption key (CMEK) to use for encrypting the
        #     Parameter Versions. If not set, the default Google-managed encryption key
        #     will be used. Cloud KMS CryptoKeys must reside in the same location as the
        #     Parameter. The expected format is
        #     `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        class Parameter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Message for requesting list of Parameters
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value for ListParametersRequest in the format
        #     `projects/*/locations/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results
        class ListParametersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing Parameters
        # @!attribute [rw] parameters
        #   @return [::Array<::Google::Cloud::ParameterManager::V1::Parameter>]
        #     The list of Parameters
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Unordered list. Locations that could not be reached.
        class ListParametersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a Parameter
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource in the format
        #     `projects/*/locations/*/parameters/*`.
        class GetParameterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a Parameter
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Value for parent in the format
        #     `projects/*/locations/*`.
        # @!attribute [rw] parameter_id
        #   @return [::String]
        #     Required. Id of the Parameter resource
        # @!attribute [rw] parameter
        #   @return [::Google::Cloud::ParameterManager::V1::Parameter]
        #     Required. The Parameter resource being created
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateParameterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a Parameter
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask is used to specify the fields to be overwritten in the
        #     Parameter resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A mutable field will be overwritten if it is in the
        #     mask. If the user does not provide a mask then all mutable fields present
        #     in the request will be overwritten.
        # @!attribute [rw] parameter
        #   @return [::Google::Cloud::ParameterManager::V1::Parameter]
        #     Required. The Parameter resource being updated
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateParameterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a Parameter
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource in the format
        #     `projects/*/locations/*/parameters/*`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteParameterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message describing ParameterVersion resource
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. [Output only] The resource name of the ParameterVersion in the
        #     format `projects/*/locations/*/parameters/*/versions/*`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. [Output only] Create time stamp
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. [Output only] Update time stamp
        # @!attribute [rw] disabled
        #   @return [::Boolean]
        #     Optional. Disabled boolean to determine if a ParameterVersion acts as a
        #     metadata only resource (payload is never returned if disabled is true). If
        #     true any calls will always default to BASIC view even if the user
        #     explicitly passes FULL view as part of the request. A render call on a
        #     disabled resource fails with an error. Default value is False.
        # @!attribute [rw] payload
        #   @return [::Google::Cloud::ParameterManager::V1::ParameterVersionPayload]
        #     Required. Immutable. Payload content of a ParameterVersion resource.  This
        #     is only returned when the request provides the View value of FULL (default
        #     for GET request).
        # @!attribute [r] kms_key_version
        #   @return [::String]
        #     Optional. Output only. [Output only] The resource name of the KMS key
        #     version used to encrypt the ParameterVersion payload. This field is
        #     populated only if the Parameter resource has customer managed encryption
        #     key (CMEK) configured.
        class ParameterVersion
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for storing a ParameterVersion resource's payload data
        # @!attribute [rw] data
        #   @return [::String]
        #     Required. bytes data for storing payload.
        class ParameterVersionPayload
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for requesting list of ParameterVersions
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value for ListParameterVersionsRequest in the format
        #     `projects/*/locations/*/parameters/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results
        class ListParameterVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing ParameterVersions
        # @!attribute [rw] parameter_versions
        #   @return [::Array<::Google::Cloud::ParameterManager::V1::ParameterVersion>]
        #     The list of ParameterVersions
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Unordered list. Locations that could not be reached.
        class ListParameterVersionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a ParameterVersion
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource in the format
        #     `projects/*/locations/*/parameters/*/versions/*`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ParameterManager::V1::View]
        #     Optional. View of the ParameterVersion.
        #     In the default FULL view, all metadata & payload associated with the
        #     ParameterVersion will be returned.
        class GetParameterVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a ParameterVersionRender
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource
        class RenderParameterVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message describing RenderParameterVersionResponse resource
        # @!attribute [r] parameter_version
        #   @return [::String]
        #     Output only. Resource identifier of a ParameterVersion in the format
        #     `projects/*/locations/*/parameters/*/versions/*`.
        # @!attribute [rw] payload
        #   @return [::Google::Cloud::ParameterManager::V1::ParameterVersionPayload]
        #     Payload content of a ParameterVersion resource.
        # @!attribute [r] rendered_payload
        #   @return [::String]
        #     Output only. Server generated rendered version of the user provided payload
        #     data (ParameterVersionPayload) which has substitutions of all (if any)
        #     references to a SecretManager SecretVersion resources. This substitution
        #     only works for a Parameter which is in JSON or YAML format.
        class RenderParameterVersionResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a ParameterVersion
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Value for parent in the format
        #     `projects/*/locations/*/parameters/*`.
        # @!attribute [rw] parameter_version_id
        #   @return [::String]
        #     Required. Id of the ParameterVersion resource
        # @!attribute [rw] parameter_version
        #   @return [::Google::Cloud::ParameterManager::V1::ParameterVersion]
        #     Required. The ParameterVersion resource being created
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateParameterVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a ParameterVersion
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask is used to specify the fields to be overwritten in the
        #     ParameterVersion resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A mutable field will be overwritten if it is in the
        #     mask. If the user does not provide a mask then all mutable fields present
        #     in the request will be overwritten.
        # @!attribute [rw] parameter_version
        #   @return [::Google::Cloud::ParameterManager::V1::ParameterVersion]
        #     Required. The ParameterVersion resource being updated
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateParameterVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a ParameterVersion
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource in the format
        #     `projects/*/locations/*/parameters/*/versions/*`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteParameterVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Option to specify the format of a Parameter resource (UNFORMATTED / YAML /
        # JSON). This option is user specified at the time of creation of the resource
        # and is immutable.
        module ParameterFormat
          # The default / unset value.
          # The API will default to the UNFORMATTED format.
          PARAMETER_FORMAT_UNSPECIFIED = 0

          # Unformatted.
          UNFORMATTED = 1

          # YAML format.
          YAML = 2

          # JSON format.
          JSON = 3
        end

        # Option for requesting only metadata, or user provided payload
        # of a ParameterVersion resource.
        module View
          # The default / unset value.
          # The API will default to the FULL view..
          VIEW_UNSPECIFIED = 0

          # Include only the metadata for the resource.
          BASIC = 1

          # Include metadata & other relevant payload data as well.
          # This is the default view.
          FULL = 2
        end
      end
    end
  end
end
