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


module Google
  module Cloud
    module NetworkServices
      module V1
        # A single extension chain wrapper that contains the match conditions and
        # extensions to execute.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name for this extension chain.
        #     The name is logged as part of the HTTP request logs.
        #     The name must conform with RFC-1034, is restricted to lower-cased letters,
        #     numbers and hyphens, and can have a maximum length of 63 characters.
        #     Additionally, the first character must be a letter and the last a letter or
        #     a number.
        # @!attribute [rw] match_condition
        #   @return [::Google::Cloud::NetworkServices::V1::ExtensionChain::MatchCondition]
        #     Required. Conditions under which this chain is invoked for a request.
        # @!attribute [rw] extensions
        #   @return [::Array<::Google::Cloud::NetworkServices::V1::ExtensionChain::Extension>]
        #     Required. A set of extensions to execute for the matching request.
        #     At least one extension is required.
        #     Up to 3 extensions can be defined for each extension chain
        #     for `LbTrafficExtension` resource.
        #     `LbRouteExtension` chains are limited to 1 extension per extension chain.
        class ExtensionChain
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Conditions under which this chain is invoked for a request.
          # @!attribute [rw] cel_expression
          #   @return [::String]
          #     Required. A Common Expression Language (CEL) expression that is used to
          #     match requests for which the extension chain is executed.
          #
          #     For more information, see [CEL matcher language
          #     reference](https://cloud.google.com/service-extensions/docs/cel-matcher-language-reference).
          class MatchCondition
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A single extension in the chain to execute for the matching request.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name for this extension.
          #     The name is logged as part of the HTTP request logs.
          #     The name must conform with RFC-1034, is restricted to lower-cased
          #     letters, numbers and hyphens, and can have a maximum length of 63
          #     characters. Additionally, the first character must be a letter and the
          #     last a letter or a number.
          # @!attribute [rw] authority
          #   @return [::String]
          #     Optional. The `:authority` header in the gRPC request sent from Envoy
          #     to the extension service.
          #     Required for Callout extensions.
          # @!attribute [rw] service
          #   @return [::String]
          #     Required. The reference to the service that runs the extension.
          #
          #     Currently only callout extensions are supported here.
          #
          #     To configure a callout extension, `service` must be a fully-qualified
          #     reference
          #     to a [backend
          #     service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices)
          #     in the format:
          #     `https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`
          #     or
          #     `https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}`.
          # @!attribute [rw] supported_events
          #   @return [::Array<::Google::Cloud::NetworkServices::V1::EventType>]
          #     Optional. A set of events during request or response processing for which
          #     this extension is called. This field is required for the
          #     `LbTrafficExtension` resource. It must not be set for the
          #     `LbRouteExtension` resource.
          # @!attribute [rw] timeout
          #   @return [::Google::Protobuf::Duration]
          #     Optional. Specifies the timeout for each individual message on the
          #     stream. The timeout must be between 10-1000 milliseconds. Required for
          #     Callout extensions.
          # @!attribute [rw] fail_open
          #   @return [::Boolean]
          #     Optional. Determines how the proxy behaves if the call to the extension
          #     fails or times out.
          #
          #     When set to `TRUE`, request or response processing continues without
          #     error. Any subsequent extensions in the extension chain are also
          #     executed. When set to `FALSE` or the default setting of `FALSE` is used,
          #     one of the following happens:
          #
          #     * If response headers have not been delivered to the downstream client,
          #     a generic 500 error is returned to the client. The error response can be
          #     tailored by configuring a custom error response in the load balancer.
          #
          #     * If response headers have been delivered, then the HTTP stream to the
          #     downstream client is reset.
          # @!attribute [rw] forward_headers
          #   @return [::Array<::String>]
          #     Optional. List of the HTTP headers to forward to the extension
          #     (from the client or backend). If omitted, all headers are sent.
          #     Each element is a string indicating the header name.
          class Extension
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # `LbTrafficExtension` is a resource that lets the extension service modify the
        # headers and payloads of both requests and responses without impacting the
        # choice of backend services or any other security policies associated with the
        # backend service.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Identifier. Name of the `LbTrafficExtension` resource in the
        #     following format:
        #     `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A human-readable description of the resource.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Set of labels associated with the `LbTrafficExtension` resource.
        #
        #     The format must comply with [the requirements for
        #     labels](https://cloud.google.com/compute/docs/labeling-resources#requirements)
        #     for Google Cloud resources.
        # @!attribute [rw] forwarding_rules
        #   @return [::Array<::String>]
        #     Required. A list of references to the forwarding rules to which this
        #     service extension is attached to. At least one forwarding rule is required.
        #     There can be only one `LBTrafficExtension` resource per forwarding rule.
        # @!attribute [rw] extension_chains
        #   @return [::Array<::Google::Cloud::NetworkServices::V1::ExtensionChain>]
        #     Required. A set of ordered extension chains that contain the match
        #     conditions and extensions to execute. Match conditions for each extension
        #     chain are evaluated in sequence for a given request. The first extension
        #     chain that has a condition that matches the request is executed.
        #     Any subsequent extension chains do not execute.
        #     Limited to 5 extension chains per resource.
        # @!attribute [rw] load_balancing_scheme
        #   @return [::Google::Cloud::NetworkServices::V1::LoadBalancingScheme]
        #     Required. All backend services and forwarding rules referenced by this
        #     extension must share the same load balancing scheme. Supported values:
        #     `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to
        #     [Choosing a load
        #     balancer](https://cloud.google.com/load-balancing/docs/backend-service).
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Struct]
        #     Optional. The metadata provided here is included in the
        #     `ProcessingRequest.metadata_context.filter_metadata` map field. The
        #     metadata is available under the key
        #     `com.google.lb_traffic_extension.<resource_name>`.
        #     The following variables are supported in the metadata:
        #
        #     `{forwarding_rule_id}` - substituted with the forwarding rule's fully
        #       qualified resource name.
        class LbTrafficExtension
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

        # Message for requesting list of `LbTrafficExtension` resources.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location from which the `LbTrafficExtension`
        #     resources are listed, specified in the following format:
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. The server might return fewer items than
        #     requested. If unspecified, the server picks an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results that the server returns.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results.
        class ListLbTrafficExtensionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing `LbTrafficExtension` resources.
        # @!attribute [rw] lb_traffic_extensions
        #   @return [::Array<::Google::Cloud::NetworkServices::V1::LbTrafficExtension>]
        #     The list of `LbTrafficExtension` resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results that the server returns.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListLbTrafficExtensionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a `LbTrafficExtension` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the `LbTrafficExtension` resource to get. Must be in
        #     the format
        #     `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
        class GetLbTrafficExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a `LbTrafficExtension` resource.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the `LbTrafficExtension` resource. Must be
        #     in the format `projects/{project}/locations/{location}`.
        # @!attribute [rw] lb_traffic_extension_id
        #   @return [::String]
        #     Required. User-provided ID of the `LbTrafficExtension` resource to be
        #     created.
        # @!attribute [rw] lb_traffic_extension
        #   @return [::Google::Cloud::NetworkServices::V1::LbTrafficExtension]
        #     Required. `LbTrafficExtension` resource to be created.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server can ignore
        #     the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateLbTrafficExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a `LbTrafficExtension` resource.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Used to specify the fields to be overwritten in the
        #     `LbTrafficExtension` resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field is overwritten if it is in the mask. If the
        #     user does not specify a mask, then all fields are overwritten.
        # @!attribute [rw] lb_traffic_extension
        #   @return [::Google::Cloud::NetworkServices::V1::LbTrafficExtension]
        #     Required. `LbTrafficExtension` resource being updated.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server can ignore
        #     the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateLbTrafficExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a `LbTrafficExtension` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the `LbTrafficExtension` resource to delete. Must be
        #     in the format
        #     `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server can ignore
        #     the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteLbTrafficExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # `LbRouteExtension` is a resource that lets you control where traffic is
        # routed to for a given request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Identifier. Name of the `LbRouteExtension` resource in the
        #     following format:
        #     `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A human-readable description of the resource.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Set of labels associated with the `LbRouteExtension` resource.
        #
        #     The format must comply with [the requirements for
        #     labels](https://cloud.google.com/compute/docs/labeling-resources#requirements)
        #     for Google Cloud resources.
        # @!attribute [rw] forwarding_rules
        #   @return [::Array<::String>]
        #     Required. A list of references to the forwarding rules to which this
        #     service extension is attached to. At least one forwarding rule is required.
        #     There can be only one `LbRouteExtension` resource per forwarding rule.
        # @!attribute [rw] extension_chains
        #   @return [::Array<::Google::Cloud::NetworkServices::V1::ExtensionChain>]
        #     Required. A set of ordered extension chains that contain the match
        #     conditions and extensions to execute. Match conditions for each extension
        #     chain are evaluated in sequence for a given request. The first extension
        #     chain that has a condition that matches the request is executed.
        #     Any subsequent extension chains do not execute.
        #     Limited to 5 extension chains per resource.
        # @!attribute [rw] load_balancing_scheme
        #   @return [::Google::Cloud::NetworkServices::V1::LoadBalancingScheme]
        #     Required. All backend services and forwarding rules referenced by this
        #     extension must share the same load balancing scheme. Supported values:
        #     `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to
        #     [Choosing a load
        #     balancer](https://cloud.google.com/load-balancing/docs/backend-service).
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Struct]
        #     Optional. The metadata provided here is included as part of the
        #     `metadata_context` (of type `google.protobuf.Struct`) in the
        #     `ProcessingRequest` message sent to the extension
        #     server. The metadata is available under the namespace
        #     `com.google.lb_route_extension.<resource_name>`.
        #     The following variables are supported in the metadata Struct:
        #
        #     `{forwarding_rule_id}` - substituted with the forwarding rule's fully
        #       qualified resource name.
        class LbRouteExtension
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

        # Message for requesting list of `LbRouteExtension` resources.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location from which the `LbRouteExtension`
        #     resources are listed, specified in the following format:
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. The server might return fewer items than
        #     requested. If unspecified, the server picks an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results that the server returns.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results.
        class ListLbRouteExtensionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing `LbRouteExtension` resources.
        # @!attribute [rw] lb_route_extensions
        #   @return [::Array<::Google::Cloud::NetworkServices::V1::LbRouteExtension>]
        #     The list of `LbRouteExtension` resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results that the server returns.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListLbRouteExtensionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a `LbRouteExtension` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the `LbRouteExtension` resource to get. Must be in the
        #     format
        #     `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
        class GetLbRouteExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a `LbRouteExtension` resource.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the `LbRouteExtension` resource. Must be
        #     in the format `projects/{project}/locations/{location}`.
        # @!attribute [rw] lb_route_extension_id
        #   @return [::String]
        #     Required. User-provided ID of the `LbRouteExtension` resource to be
        #     created.
        # @!attribute [rw] lb_route_extension
        #   @return [::Google::Cloud::NetworkServices::V1::LbRouteExtension]
        #     Required. `LbRouteExtension` resource to be created.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server can ignore
        #     the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateLbRouteExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a `LbRouteExtension` resource.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Used to specify the fields to be overwritten in the
        #     `LbRouteExtension` resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field is overwritten if it is in the mask. If the
        #     user does not specify a mask, then all fields are overwritten.
        # @!attribute [rw] lb_route_extension
        #   @return [::Google::Cloud::NetworkServices::V1::LbRouteExtension]
        #     Required. `LbRouteExtension` resource being updated.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server can ignore
        #     the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateLbRouteExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a `LbRouteExtension` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the `LbRouteExtension` resource to delete. Must be in
        #     the format
        #     `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server can ignore
        #     the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteLbRouteExtensionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The part of the request or response for which the extension is called.
        module EventType
          # Unspecified value. Do not use.
          EVENT_TYPE_UNSPECIFIED = 0

          # If included in `supported_events`,
          # the extension is called when the HTTP request headers arrive.
          REQUEST_HEADERS = 1

          # If included in `supported_events`,
          # the extension is called when the HTTP request body arrives.
          REQUEST_BODY = 2

          # If included in `supported_events`,
          # the extension is called when the HTTP response headers arrive.
          RESPONSE_HEADERS = 3

          # If included in `supported_events`,
          # the extension is called when the HTTP response body arrives.
          RESPONSE_BODY = 4

          # If included in `supported_events`,
          # the extension is called when the HTTP request trailers arrives.
          REQUEST_TRAILERS = 5

          # If included in `supported_events`,
          # the extension is called when the HTTP response trailers arrives.
          RESPONSE_TRAILERS = 6
        end

        # Load balancing schemes supported by the `LbTrafficExtension` resource and
        # `LbRouteExtension` resource.
        # For more information, refer to [Choosing a load
        # balancer](https://cloud.google.com/load-balancing/docs/backend-service).
        module LoadBalancingScheme
          # Default value. Do not use.
          LOAD_BALANCING_SCHEME_UNSPECIFIED = 0

          # Signifies that this is used for Internal HTTP(S) Load Balancing.
          INTERNAL_MANAGED = 1

          # Signifies that this is used for External Managed HTTP(S) Load
          # Balancing.
          EXTERNAL_MANAGED = 2
        end
      end
    end
  end
end
