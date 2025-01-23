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
    module Eventarc
      module V1
        # A representation of the Pipeline resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the Pipeline. Must be unique within the
        #     location of the project and must be in
        #     `projects/{project}/locations/{location}/pipelines/{pipeline}` format.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        #     A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
        #     to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
        #     "2014-10-02T15:01:23.045123456Z".
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        #     A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
        #     to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
        #     "2014-10-02T15:01:23.045123456Z".
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. User labels attached to the Pipeline that can be used to group
        #     resources. An object containing a list of "key": value pairs. Example: {
        #     "name": "wrench", "mass": "1.3kg", "count": "3" }.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server-assigned unique identifier for the Pipeline. The value
        #     is a UUID4 string and guaranteed to remain unchanged until the resource is
        #     deleted.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. User-defined annotations. See
        #     https://google.aip.dev/128#annotations.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name of resource.
        # @!attribute [rw] destinations
        #   @return [::Array<::Google::Cloud::Eventarc::V1::Pipeline::Destination>]
        #     Required. List of destinations to which messages will be forwarded.
        #     Currently, exactly one destination is supported per Pipeline.
        # @!attribute [rw] mediations
        #   @return [::Array<::Google::Cloud::Eventarc::V1::Pipeline::Mediation>]
        #     Optional. List of mediation operations to be performed on the message.
        #     Currently, only one Transformation operation is allowed in each Pipeline.
        # @!attribute [rw] crypto_key_name
        #   @return [::String]
        #     Optional. Resource name of a KMS crypto key (managed by the user) used to
        #     encrypt/decrypt the event data. If not set, an internal Google-owned key
        #     will be used to encrypt messages. It must match the pattern
        #     "projects/\\{project}/locations/\\{location}/keyRings/\\{keyring}/cryptoKeys/\\{key}".
        # @!attribute [rw] input_payload_format
        #   @return [::Google::Cloud::Eventarc::V1::Pipeline::MessagePayloadFormat]
        #     Optional. The payload format expected for the messages received by the
        #     Pipeline. If input_payload_format is set then any messages not matching
        #     this format will be treated as persistent errors. If input_payload_format
        #     is not set, then the message data will be treated as an opaque binary and
        #     no output format can be set on the Pipeline through the
        #     Pipeline.Destination.output_payload_format field. Any Mediations on the
        #     Pipeline that involve access to the data field will fail as persistent
        #     errors.
        # @!attribute [rw] logging_config
        #   @return [::Google::Cloud::Eventarc::V1::LoggingConfig]
        #     Optional. Config to control Platform Logging for Pipelines.
        # @!attribute [rw] retry_policy
        #   @return [::Google::Cloud::Eventarc::V1::Pipeline::RetryPolicy]
        #     Optional. The retry policy to use in the pipeline.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Output only. This checksum is computed by the server based on the value of
        #     other fields, and might be sent only on create requests to ensure that the
        #     client has an up-to-date value before proceeding.
        class Pipeline
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents the format of message data.
          # @!attribute [rw] protobuf
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::MessagePayloadFormat::ProtobufFormat]
          #     Optional. Protobuf format.
          #
          #     Note: The following fields are mutually exclusive: `protobuf`, `avro`, `json`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] avro
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::MessagePayloadFormat::AvroFormat]
          #     Optional. Avro format.
          #
          #     Note: The following fields are mutually exclusive: `avro`, `protobuf`, `json`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] json
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::MessagePayloadFormat::JsonFormat]
          #     Optional. JSON format.
          #
          #     Note: The following fields are mutually exclusive: `json`, `protobuf`, `avro`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class MessagePayloadFormat
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The format of a JSON message payload.
            class JsonFormat
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The format of a Protobuf message payload.
            # @!attribute [rw] schema_definition
            #   @return [::String]
            #     Optional. The entire schema definition is stored in this field.
            class ProtobufFormat
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The format of an AVRO message payload.
            # @!attribute [rw] schema_definition
            #   @return [::String]
            #     Optional. The entire schema definition is stored in this field.
            class AvroFormat
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Represents a target of an invocation over HTTP.
          # @!attribute [rw] network_config
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::Destination::NetworkConfig]
          #     Optional. Network config is used to configure how Pipeline resolves and
          #     connects to a destination.
          # @!attribute [rw] http_endpoint
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::Destination::HttpEndpoint]
          #     Optional. An HTTP endpoint destination described by an URI.
          #     If a DNS FQDN is provided as the endpoint, Pipeline will create a
          #     peering zone to the consumer VPC and forward DNS requests to the VPC
          #     specified by network config to resolve the service endpoint. See:
          #     https://cloud.google.com/dns/docs/zones/zones-overview#peering_zones
          #
          #     Note: The following fields are mutually exclusive: `http_endpoint`, `workflow`, `message_bus`, `topic`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] workflow
          #   @return [::String]
          #     Optional. The resource name of the Workflow whose Executions are
          #     triggered by the events. The Workflow resource should be deployed in
          #     the same project as the Pipeline. Format:
          #     `projects/{project}/locations/{location}/workflows/{workflow}`
          #
          #     Note: The following fields are mutually exclusive: `workflow`, `http_endpoint`, `message_bus`, `topic`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] message_bus
          #   @return [::String]
          #     Optional. The resource name of the Message Bus to which events should
          #     be published. The Message Bus resource should exist in the same project
          #     as the Pipeline. Format:
          #     `projects/{project}/locations/{location}/messageBuses/{message_bus}`
          #
          #     Note: The following fields are mutually exclusive: `message_bus`, `http_endpoint`, `workflow`, `topic`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] topic
          #   @return [::String]
          #     Optional. The resource name of the Pub/Sub topic to which events should
          #     be published. Format:
          #     `projects/{project}/locations/{location}/topics/{topic}`
          #
          #     Note: The following fields are mutually exclusive: `topic`, `http_endpoint`, `workflow`, `message_bus`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] authentication_config
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::Destination::AuthenticationConfig]
          #     Optional. An authentication config used to authenticate message requests,
          #     such that destinations can verify the source. For example, this can be
          #     used with private GCP destinations that require GCP credentials to access
          #     like Cloud Run. This field is optional and should be set only by users
          #     interested in authenticated push
          # @!attribute [rw] output_payload_format
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::MessagePayloadFormat]
          #     Optional. The message format before it is delivered to the destination.
          #     If not set, the message will be delivered in the format it was originally
          #     delivered to the Pipeline. This field can only be set if
          #     Pipeline.input_payload_format is also set.
          class Destination
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Represents a network config to be used for destination resolution and
            # connectivity.
            # @!attribute [rw] network_attachment
            #   @return [::String]
            #     Required. Name of the NetworkAttachment that allows access to the
            #     consumer VPC. Format:
            #     `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
            class NetworkConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Represents a HTTP endpoint destination.
            # @!attribute [rw] uri
            #   @return [::String]
            #     Required. The URI of the HTTP enpdoint.
            #
            #     The value must be a RFC2396 URI string.
            #     Examples: `https://svc.us-central1.p.local:8080/route`.
            #     Only the HTTPS protocol is supported.
            # @!attribute [rw] message_binding_template
            #   @return [::String]
            #     Optional. The CEL expression used to modify how the destination-bound
            #     HTTP request is constructed.
            #
            #     If a binding expression is not specified here, the message
            #     is treated as a CloudEvent and is mapped to the HTTP request according
            #     to the CloudEvent HTTP Protocol Binding Binary Content Mode. In this
            #     representation, all fields except the `data` and `datacontenttype`
            #     field on the message are mapped to HTTP request headers with a prefix
            #     of `ce-`.
            #
            #     To construct the HTTP request payload and the value of the content-type
            #     HTTP header, the payload format is defined as follows:
            #     1) Use the output_payload_format_type on the Pipeline.Destination if it
            #        is set, else:
            #     2) Use the input_payload_format_type on the Pipeline if it is set,
            #        else:
            #     3) Treat the payload as opaque binary data.
            #
            #     The `data` field of the message is converted to the payload format or
            #     left as-is for case 3) and then attached as the payload of the HTTP
            #     request. The `content-type` header on the HTTP request is set to the
            #     payload format type or left empty for case 3). However, if a mediation
            #     has updated the `datacontenttype` field on the message so that it is
            #     not the same as the payload format type but it is still a prefix of the
            #     payload format type, then the `content-type` header on the HTTP request
            #     is set to this `datacontenttype` value. For example, if the
            #     `datacontenttype` is "application/json" and the payload format type is
            #     "application/json; charset=utf-8", then the `content-type` header on
            #     the HTTP request is set to "application/json; charset=utf-8".
            #
            #     If a non-empty binding expression is specified then this expression is
            #     used to modify the default CloudEvent HTTP Protocol Binding Binary
            #     Content representation.
            #     The result of the CEL expression must be a map of key/value pairs
            #     which is used as follows:
            #     - If a map named `headers` exists on the result of the expression,
            #     then its key/value pairs are directly mapped to the HTTP request
            #     headers. The headers values are constructed from the corresponding
            #     value type’s canonical representation. If the `headers` field doesn’t
            #     exist then the resulting HTTP request will be the headers of the
            #     CloudEvent HTTP Binding Binary Content Mode representation of the final
            #     message. Note: If the specified binding expression, has updated the
            #     `datacontenttype` field on the message so that it is not the same as
            #     the payload format type but it is still a prefix of the payload format
            #     type, then the `content-type` header in the `headers` map is set to
            #     this `datacontenttype` value.
            #     - If a field named `body` exists on the result of the expression then
            #     its value is directly mapped to the body of the request. If the value
            #     of the `body` field is of type bytes or string then it is used for
            #     the HTTP request body as-is, with no conversion. If the body field is
            #     of any other type then it is converted to a JSON string. If the body
            #     field does not exist then the resulting payload of the HTTP request
            #     will be data value of the CloudEvent HTTP Binding Binary Content Mode
            #     representation of the final message as described earlier.
            #     - Any other fields in the resulting expression will be ignored.
            #
            #     The CEL expression may access the incoming CloudEvent message in its
            #     definition, as follows:
            #     - The `data` field of the incoming CloudEvent message can be accessed
            #     using the `message.data` value. Subfields of `message.data` may also be
            #     accessed if an input_payload_format has been specified on the Pipeline.
            #     - Each attribute of the incoming CloudEvent message can be accessed
            #     using the `message.<key>` value, where <key> is replaced with the
            #     name of the attribute.
            #     - Existing headers can be accessed in the CEL expression using the
            #     `headers` variable. The `headers` variable defines a map of key/value
            #     pairs corresponding to the HTTP headers of the CloudEvent HTTP Binding
            #     Binary Content Mode representation of the final message as described
            #     earlier. For example, the following CEL expression can be used to
            #     construct an HTTP request by adding an additional header to the HTTP
            #     headers of the CloudEvent HTTP Binding Binary Content Mode
            #     representation of the final message and by overwriting the body of the
            #     request:
            #
            #     ```
            #     {
            #       "headers": headers.merge(\\{"new-header-key": "new-header-value"}),
            #       "body": "new-body"
            #     }
            #     ```
            #
            #     Additionally, the following CEL extension functions are provided for
            #     use in this CEL expression:
            #     - toBase64Url:
            #       map.toBase64Url() -> string
            #         - Converts a CelValue to a base64url encoded string
            #     - toJsonString: map.toJsonString() -> string
            #         - Converts a CelValue to a JSON string
            #     - merge:
            #       map1.merge(map2) -> map3
            #         - Merges the passed CEL map with the existing CEL map the
            #         function is applied to.
            #         - If the same key exists in both maps, if the key's value is type
            #         map both maps are merged else the value from the passed map is
            #         used.
            #     - denormalize:
            #       map.denormalize() -> map
            #         - Denormalizes a CEL map such that every value of type map or key
            #         in the map is expanded to return a single level map.
            #         - The resulting keys are "." separated indices of the map keys.
            #         - For example:
            #           {
            #             "a": 1,
            #             "b": {
            #               "c": 2,
            #               "d": 3
            #             }
            #             "e": [4, 5]
            #           }
            #           .denormalize()
            #           -> {
            #             "a": 1,
            #             "b.c": 2,
            #             "b.d": 3,
            #             "e.0": 4,
            #             "e.1": 5
            #           }
            #     - setField:
            #       map.setField(key, value) -> message
            #         - Sets the field of the message with the given key to the
            #         given value.
            #         - If the field is not present it will be added.
            #         - If the field is present it will be overwritten.
            #         - The key can be a dot separated path to set a field in a nested
            #         message.
            #         - Key must be of type string.
            #         - Value may be any valid type.
            #     - removeFields:
            #       map.removeFields([key1, key2, ...]) -> message
            #         - Removes the fields of the map with the given keys.
            #         - The keys can be a dot separated path to remove a field in a
            #         nested message.
            #         - If a key is not found it will be ignored.
            #         - Keys must be of type string.
            #     - toMap:
            #       [map1, map2, ...].toMap() -> map
            #         - Converts a CEL list of CEL maps to a single CEL map
            #     - toDestinationPayloadFormat():
            #       message.data.toDestinationPayloadFormat() -> string or bytes
            #         - Converts the message data to the destination payload format
            #         specified in Pipeline.Destination.output_payload_format
            #         - This function is meant to be applied to the message.data field.
            #         - If the destination payload format is not set, the function will
            #         return the message data unchanged.
            #     - toCloudEventJsonWithPayloadFormat:
            #       message.toCloudEventJsonWithPayloadFormat() -> map
            #         - Converts a message to the corresponding structure of JSON
            #         format for CloudEvents
            #         - This function applies toDestinationPayloadFormat() to the
            #         message data. It also sets the corresponding datacontenttype of
            #         the CloudEvent, as indicated by
            #         Pipeline.Destination.output_payload_format. If no
            #         output_payload_format is set it will use the existing
            #         datacontenttype on the CloudEvent if present, else leave
            #         datacontenttype absent.
            #         - This function expects that the content of the message will
            #         adhere to the standard CloudEvent format. If it doesn’t then this
            #         function will fail.
            #         - The result is a CEL map that corresponds to the JSON
            #         representation of the CloudEvent. To convert that data to a JSON
            #         string it can be chained with the toJsonString function.
            #
            #     The Pipeline expects that the message it receives adheres to the
            #     standard CloudEvent format. If it doesn’t then the outgoing message
            #     request may fail with a persistent error.
            class HttpEndpoint
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Represents a config used to authenticate message requests.
            # @!attribute [rw] google_oidc
            #   @return [::Google::Cloud::Eventarc::V1::Pipeline::Destination::AuthenticationConfig::OidcToken]
            #     Optional. This authenticate method will apply Google OIDC tokens
            #     signed by a GCP service account to the requests.
            #
            #     Note: The following fields are mutually exclusive: `google_oidc`, `oauth_token`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            # @!attribute [rw] oauth_token
            #   @return [::Google::Cloud::Eventarc::V1::Pipeline::Destination::AuthenticationConfig::OAuthToken]
            #     Optional. If specified, an [OAuth
            #     token](https://developers.google.com/identity/protocols/OAuth2) will
            #     be generated and attached as an `Authorization` header in the HTTP
            #     request.
            #
            #     This type of authorization should generally only be used when calling
            #     Google APIs hosted on *.googleapis.com.
            #
            #     Note: The following fields are mutually exclusive: `oauth_token`, `google_oidc`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            class AuthenticationConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Represents a config used to authenticate with a Google OIDC token using
              # a GCP service account. Use this authentication method to invoke your
              # Cloud Run and Cloud Functions destinations or HTTP endpoints that
              # support Google OIDC.
              # @!attribute [rw] service_account
              #   @return [::String]
              #     Required. Service account email used to generate the OIDC Token.
              #     The principal who calls this API must have
              #     iam.serviceAccounts.actAs permission in the service account. See
              #     https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common
              #     for more information. Eventarc service agents must have
              #     roles/roles/iam.serviceAccountTokenCreator role to allow the
              #     Pipeline to create OpenID tokens for authenticated requests.
              # @!attribute [rw] audience
              #   @return [::String]
              #     Optional. Audience to be used to generate the OIDC Token. The
              #     audience claim identifies the recipient that the JWT is intended for.
              #     If unspecified, the destination URI will be used.
              class OidcToken
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Contains information needed for generating an
              # [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
              # This type of authorization should generally only be used when calling
              # Google APIs hosted on *.googleapis.com.
              # @!attribute [rw] service_account
              #   @return [::String]
              #     Required. Service account email used to generate the [OAuth
              #     token](https://developers.google.com/identity/protocols/OAuth2).
              #     The principal who calls this API must have
              #     iam.serviceAccounts.actAs permission in the service account. See
              #     https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common
              #     for more information. Eventarc service agents must have
              #     roles/roles/iam.serviceAccountTokenCreator role to allow Pipeline
              #     to create OAuth2 tokens for authenticated requests.
              # @!attribute [rw] scope
              #   @return [::String]
              #     Optional. OAuth scope to be used for generating OAuth access token.
              #     If not specified, "https://www.googleapis.com/auth/cloud-platform"
              #     will be used.
              class OAuthToken
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # Mediation defines different ways to modify the Pipeline.
          # @!attribute [rw] transformation
          #   @return [::Google::Cloud::Eventarc::V1::Pipeline::Mediation::Transformation]
          #     Optional. How the Pipeline is to transform messages
          class Mediation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Transformation defines the way to transform an incoming message.
            # @!attribute [rw] transformation_template
            #   @return [::String]
            #     Optional. The CEL expression template to apply to transform messages.
            #     The following CEL extension functions are provided for
            #     use in this CEL expression:
            #     - merge:
            #       map1.merge(map2) -> map3
            #         - Merges the passed CEL map with the existing CEL map the
            #         function is applied to.
            #         - If the same key exists in both maps, if the key's value is type
            #         map both maps are merged else the value from the passed map is
            #         used.
            #     - denormalize:
            #       map.denormalize() -> map
            #         - Denormalizes a CEL map such that every value of type map or key
            #         in the map is expanded to return a single level map.
            #         - The resulting keys are "." separated indices of the map keys.
            #         - For example:
            #           {
            #             "a": 1,
            #             "b": {
            #               "c": 2,
            #               "d": 3
            #             }
            #             "e": [4, 5]
            #           }
            #           .denormalize()
            #           -> {
            #             "a": 1,
            #             "b.c": 2,
            #             "b.d": 3,
            #             "e.0": 4,
            #             "e.1": 5
            #           }
            #     - setField:
            #       map.setField(key, value) -> message
            #         - Sets the field of the message with the given key to the
            #         given value.
            #         - If the field is not present it will be added.
            #         - If the field is present it will be overwritten.
            #         - The key can be a dot separated path to set a field in a nested
            #         message.
            #         - Key must be of type string.
            #         - Value may be any valid type.
            #     - removeFields:
            #       map.removeFields([key1, key2, ...]) -> message
            #         - Removes the fields of the map with the given keys.
            #         - The keys can be a dot separated path to remove a field in a
            #         nested message.
            #         - If a key is not found it will be ignored.
            #         - Keys must be of type string.
            #     - toMap:
            #       [map1, map2, ...].toMap() -> map
            #         - Converts a CEL list of CEL maps to a single CEL map
            #     - toDestinationPayloadFormat():
            #       message.data.toDestinationPayloadFormat() -> string or bytes
            #         - Converts the message data to the destination payload format
            #         specified in Pipeline.Destination.output_payload_format
            #         - This function is meant to be applied to the message.data field.
            #         - If the destination payload format is not set, the function will
            #         return the message data unchanged.
            #     - toCloudEventJsonWithPayloadFormat:
            #       message.toCloudEventJsonWithPayloadFormat() -> map
            #         - Converts a message to the corresponding structure of JSON
            #         format for CloudEvents
            #         - This function applies toDestinationPayloadFormat() to the
            #         message data. It also sets the corresponding datacontenttype of
            #         the CloudEvent, as indicated by
            #         Pipeline.Destination.output_payload_format. If no
            #         output_payload_format is set it will use the existing
            #         datacontenttype on the CloudEvent if present, else leave
            #         datacontenttype absent.
            #         - This function expects that the content of the message will
            #         adhere to the standard CloudEvent format. If it doesn’t then this
            #         function will fail.
            #         - The result is a CEL map that corresponds to the JSON
            #         representation of the CloudEvent. To convert that data to a JSON
            #         string it can be chained with the toJsonString function.
            class Transformation
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The retry policy configuration for the Pipeline. The pipeline
          # exponentially backs off in case the destination is non responsive or
          # returns a retryable error code. The default semantics are as follows:
          # The backoff starts with a 5 second delay and doubles the
          # delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.).
          # The delay is capped at 60 seconds by default.
          # Please note that if you set the min_retry_delay and max_retry_delay fields
          # to the same value this will make the duration between retries constant.
          # @!attribute [rw] max_attempts
          #   @return [::Integer]
          #     Optional. The maximum number of delivery attempts for any message. The
          #     value must be between 1 and 100. The default value for this field is 5.
          # @!attribute [rw] min_retry_delay
          #   @return [::Google::Protobuf::Duration]
          #     Optional. The minimum amount of seconds to wait between retry attempts.
          #     The value must be between 1 and 600. The default value for this field
          #     is 5.
          # @!attribute [rw] max_retry_delay
          #   @return [::Google::Protobuf::Duration]
          #     Optional. The maximum amount of seconds to wait between retry attempts.
          #     The value must be between 1 and 600. The default value for this field
          #     is 60.
          class RetryPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
