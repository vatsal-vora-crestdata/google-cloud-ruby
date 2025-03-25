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


module Google
  module Cloud
    module NetworkManagement
      module V1
        # A Connectivity Test for a network reachability analysis.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Unique name of the resource using the form:
        #         `projects/{project_id}/locations/global/connectivityTests/{test_id}`
        # @!attribute [rw] description
        #   @return [::String]
        #     The user-supplied description of the Connectivity Test.
        #     Maximum of 512 characters.
        # @!attribute [rw] source
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint]
        #     Required. Source specification of the Connectivity Test.
        #
        #     You can use a combination of source IP address, URI of a supported
        #     endpoint, project ID, or VPC network to identify the source location.
        #
        #     Reachability analysis might proceed even if the source location is
        #     ambiguous. However, the test result might include endpoints or use a source
        #     that you don't intend to test.
        # @!attribute [rw] destination
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint]
        #     Required. Destination specification of the Connectivity Test.
        #
        #     You can use a combination of destination IP address, URI of a supported
        #     endpoint, project ID, or VPC network to identify the destination location.
        #
        #     Reachability analysis proceeds even if the destination location is
        #     ambiguous. However, the test result might include endpoints or use a
        #     destination that you don't intend to test.
        # @!attribute [rw] protocol
        #   @return [::String]
        #     IP Protocol of the test. When not provided, "TCP" is assumed.
        # @!attribute [rw] related_projects
        #   @return [::Array<::String>]
        #     Other projects that may be relevant for reachability analysis.
        #     This is applicable to scenarios where a test can cross project boundaries.
        # @!attribute [r] display_name
        #   @return [::String]
        #     Output only. The display name of a Connectivity Test.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user-provided metadata.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the test was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the test's configuration was updated.
        # @!attribute [r] reachability_details
        #   @return [::Google::Cloud::NetworkManagement::V1::ReachabilityDetails]
        #     Output only. The reachability details of this test from the latest run.
        #     The details are updated when creating a new test, updating an
        #     existing test, or triggering a one-time rerun of an existing test.
        # @!attribute [r] probing_details
        #   @return [::Google::Cloud::NetworkManagement::V1::ProbingDetails]
        #     Output only. The probing details of this test from the latest run, present
        #     for applicable tests only. The details are updated when creating a new
        #     test, updating an existing test, or triggering a one-time rerun of an
        #     existing test.
        # @!attribute [rw] round_trip
        #   @return [::Boolean]
        #     Whether run analysis for the return path from destination to source.
        #     Default value is false.
        # @!attribute [r] return_reachability_details
        #   @return [::Google::Cloud::NetworkManagement::V1::ReachabilityDetails]
        #     Output only. The reachability details of this test from the latest run for
        #     the return path. The details are updated when creating a new test,
        #     updating an existing test, or triggering a one-time rerun of an existing
        #     test.
        # @!attribute [rw] bypass_firewall_checks
        #   @return [::Boolean]
        #     Whether the analysis should skip firewall checking. Default value is false.
        class ConnectivityTest
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

        # Source or destination of the Connectivity Test.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     The IP address of the endpoint, which can be an external or internal IP.
        # @!attribute [rw] port
        #   @return [::Integer]
        #     The IP protocol port of the endpoint.
        #     Only applicable when protocol is TCP or UDP.
        # @!attribute [rw] instance
        #   @return [::String]
        #     A Compute Engine instance URI.
        # @!attribute [rw] forwarding_rule
        #   @return [::String]
        #     A forwarding rule and its corresponding IP address represent the frontend
        #     configuration of a Google Cloud load balancer. Forwarding rules are also
        #     used for protocol forwarding, Private Service Connect and other network
        #     services to provide forwarding information in the control plane. Applicable
        #     only to destination endpoint. Format:
        #      projects/\\{project}/global/forwardingRules/\\{id} or
        #      projects/\\{project}/regions/\\{region}/forwardingRules/\\{id}
        # @!attribute [r] forwarding_rule_target
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint::ForwardingRuleTarget]
        #     Output only. Specifies the type of the target of the forwarding rule.
        # @!attribute [r] load_balancer_id
        #   @return [::String]
        #     Output only. ID of the load balancer the forwarding rule points to. Empty
        #     for forwarding rules not related to load balancers.
        # @!attribute [r] load_balancer_type
        #   @return [::Google::Cloud::NetworkManagement::V1::LoadBalancerType]
        #     Output only. Type of the load balancer the forwarding rule points to.
        # @!attribute [rw] gke_master_cluster
        #   @return [::String]
        #     A cluster URI for [Google Kubernetes Engine cluster control
        #     plane](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
        # @!attribute [rw] fqdn
        #   @return [::String]
        #     DNS endpoint of [Google Kubernetes Engine cluster control
        #     plane](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
        #     Requires gke_master_cluster to be set, can't be used simultaneoulsly with
        #     ip_address or network. Applicable only to destination endpoint.
        # @!attribute [rw] cloud_sql_instance
        #   @return [::String]
        #     A [Cloud SQL](https://cloud.google.com/sql) instance URI.
        # @!attribute [rw] redis_instance
        #   @return [::String]
        #     A [Redis Instance](https://cloud.google.com/memorystore/docs/redis) URI.
        #     Applicable only to destination endpoint.
        # @!attribute [rw] redis_cluster
        #   @return [::String]
        #     A [Redis Cluster](https://cloud.google.com/memorystore/docs/cluster) URI.
        #     Applicable only to destination endpoint.
        # @!attribute [rw] cloud_function
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint::CloudFunctionEndpoint]
        #     A [Cloud Function](https://cloud.google.com/functions). Applicable only to
        #     source endpoint.
        # @!attribute [rw] app_engine_version
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint::AppEngineVersionEndpoint]
        #     An [App Engine](https://cloud.google.com/appengine) [service
        #     version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
        #     Applicable only to source endpoint.
        # @!attribute [rw] cloud_run_revision
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint::CloudRunRevisionEndpoint]
        #     A [Cloud Run](https://cloud.google.com/run)
        #     [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
        #     Applicable only to source endpoint.
        # @!attribute [rw] network
        #   @return [::String]
        #     A VPC network URI.
        # @!attribute [rw] network_type
        #   @return [::Google::Cloud::NetworkManagement::V1::Endpoint::NetworkType]
        #     Type of the network where the endpoint is located.
        #     Applicable only to source endpoint, as destination network type can be
        #     inferred from the source.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Project ID where the endpoint is located.
        #     The project ID can be derived from the URI if you provide a endpoint or
        #     network URI.
        #     The following are two cases where you may need to provide the project ID:
        #     1. Only the IP address is specified, and the IP address is within a Google
        #     Cloud project.
        #     2. When you are using Shared VPC and the IP address that you provide is
        #     from the service project. In this case, the network that the IP address
        #     resides in is defined in the host project.
        class Endpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Wrapper for Cloud Function attributes.
          # @!attribute [rw] uri
          #   @return [::String]
          #     A [Cloud Function](https://cloud.google.com/functions) name.
          class CloudFunctionEndpoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Wrapper for the App Engine service version attributes.
          # @!attribute [rw] uri
          #   @return [::String]
          #     An [App Engine](https://cloud.google.com/appengine) [service
          #     version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions)
          #     name.
          class AppEngineVersionEndpoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Wrapper for Cloud Run revision attributes.
          # @!attribute [rw] uri
          #   @return [::String]
          #     A [Cloud Run](https://cloud.google.com/run)
          #     [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
          #     URI. The format is:
          #     projects/\\{project}/locations/\\{location}/revisions/\\{revision}
          class CloudRunRevisionEndpoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The type definition of an endpoint's network. Use one of the
          # following choices:
          module NetworkType
            # Default type if unspecified.
            NETWORK_TYPE_UNSPECIFIED = 0

            # A network hosted within Google Cloud.
            # To receive more detailed output, specify the URI for the source or
            # destination network.
            GCP_NETWORK = 1

            # A network hosted outside of Google Cloud.
            # This can be an on-premises network, an internet resource or a network
            # hosted by another cloud provider.
            NON_GCP_NETWORK = 2
          end

          # Type of the target of a forwarding rule.
          module ForwardingRuleTarget
            # Forwarding rule target is unknown.
            FORWARDING_RULE_TARGET_UNSPECIFIED = 0

            # Compute Engine instance for protocol forwarding.
            INSTANCE = 1

            # Load Balancer. The specific type can be found from [load_balancer_type]
            # [google.cloud.networkmanagement.v1.Endpoint.load_balancer_type].
            LOAD_BALANCER = 2

            # Classic Cloud VPN Gateway.
            VPN_GATEWAY = 3

            # Forwarding Rule is a Private Service Connect endpoint.
            PSC = 4
          end
        end

        # Results of the configuration analysis from the last run of the test.
        # @!attribute [rw] result
        #   @return [::Google::Cloud::NetworkManagement::V1::ReachabilityDetails::Result]
        #     The overall result of the test's configuration analysis.
        # @!attribute [rw] verify_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time of the configuration analysis.
        # @!attribute [rw] error
        #   @return [::Google::Rpc::Status]
        #     The details of a failure or a cancellation of reachability analysis.
        # @!attribute [rw] traces
        #   @return [::Array<::Google::Cloud::NetworkManagement::V1::Trace>]
        #     Result may contain a list of traces if a test has multiple possible
        #     paths in the network, such as when destination endpoint is a load balancer
        #     with multiple backends.
        class ReachabilityDetails
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The overall result of the test's configuration analysis.
          module Result
            # No result was specified.
            RESULT_UNSPECIFIED = 0

            # Possible scenarios are:
            #
            # * The configuration analysis determined that a packet originating from
            #   the source is expected to reach the destination.
            # * The analysis didn't complete because the user lacks permission for
            #   some of the resources in the trace. However, at the time the user's
            #   permission became insufficient, the trace had been successful so far.
            REACHABLE = 1

            # A packet originating from the source is expected to be dropped before
            # reaching the destination.
            UNREACHABLE = 2

            # The source and destination endpoints do not uniquely identify
            # the test location in the network, and the reachability result contains
            # multiple traces. For some traces, a packet could be delivered, and for
            # others, it would not be. This result is also assigned to
            # configuration analysis of return path if on its own it should be
            # REACHABLE, but configuration analysis of forward path is AMBIGUOUS.
            AMBIGUOUS = 4

            # The configuration analysis did not complete. Possible reasons are:
            #
            # * A permissions error occurred--for example, the user might not have
            #   read permission for all of the resources named in the test.
            # * An internal error occurred.
            # * The analyzer received an invalid or unsupported argument or was unable
            #   to identify a known endpoint.
            UNDETERMINED = 5
          end
        end

        # Latency percentile rank and value.
        # @!attribute [rw] percent
        #   @return [::Integer]
        #     Percentage of samples this data point applies to.
        # @!attribute [rw] latency_micros
        #   @return [::Integer]
        #     percent-th percentile of latency observed, in microseconds.
        #     Fraction of percent/100 of samples have latency lower or
        #     equal to the value of this field.
        class LatencyPercentile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes measured latency distribution.
        # @!attribute [rw] latency_percentiles
        #   @return [::Array<::Google::Cloud::NetworkManagement::V1::LatencyPercentile>]
        #     Representative latency percentiles.
        class LatencyDistribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of active probing from the last run of the test.
        # @!attribute [rw] result
        #   @return [::Google::Cloud::NetworkManagement::V1::ProbingDetails::ProbingResult]
        #     The overall result of active probing.
        # @!attribute [rw] verify_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time that reachability was assessed through active probing.
        # @!attribute [rw] error
        #   @return [::Google::Rpc::Status]
        #     Details about an internal failure or the cancellation of active probing.
        # @!attribute [rw] abort_cause
        #   @return [::Google::Cloud::NetworkManagement::V1::ProbingDetails::ProbingAbortCause]
        #     The reason probing was aborted.
        # @!attribute [rw] sent_probe_count
        #   @return [::Integer]
        #     Number of probes sent.
        # @!attribute [rw] successful_probe_count
        #   @return [::Integer]
        #     Number of probes that reached the destination.
        # @!attribute [rw] endpoint_info
        #   @return [::Google::Cloud::NetworkManagement::V1::EndpointInfo]
        #     The source and destination endpoints derived from the test input and used
        #     for active probing.
        # @!attribute [rw] probing_latency
        #   @return [::Google::Cloud::NetworkManagement::V1::LatencyDistribution]
        #     Latency as measured by active probing in one direction:
        #     from the source to the destination endpoint.
        # @!attribute [rw] destination_egress_location
        #   @return [::Google::Cloud::NetworkManagement::V1::ProbingDetails::EdgeLocation]
        #     The EdgeLocation from which a packet destined for/originating from the
        #     internet will egress/ingress the Google network.
        #     This will only be populated for a connectivity test which has an internet
        #     destination/source address.
        #     The absence of this field *must not* be used as an indication that the
        #     destination/source is part of the Google network.
        class ProbingDetails
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Representation of a network edge location as per
          # https://cloud.google.com/vpc/docs/edge-locations.
          # @!attribute [rw] metropolitan_area
          #   @return [::String]
          #     Name of the metropolitan area.
          class EdgeLocation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Overall probing result of the test.
          module ProbingResult
            # No result was specified.
            PROBING_RESULT_UNSPECIFIED = 0

            # At least 95% of packets reached the destination.
            REACHABLE = 1

            # No packets reached the destination.
            UNREACHABLE = 2

            # Less than 95% of packets reached the destination.
            REACHABILITY_INCONSISTENT = 3

            # Reachability could not be determined. Possible reasons are:
            # * The user lacks permission to access some of the network resources
            #   required to run the test.
            # * No valid source endpoint could be derived from the request.
            # * An internal error occurred.
            UNDETERMINED = 4
          end

          # Abort cause types.
          module ProbingAbortCause
            # No reason was specified.
            PROBING_ABORT_CAUSE_UNSPECIFIED = 0

            # The user lacks permission to access some of the
            # network resources required to run the test.
            PERMISSION_DENIED = 1

            # No valid source endpoint could be derived from the request.
            NO_SOURCE_LOCATION = 2
          end
        end
      end
    end
  end
end
