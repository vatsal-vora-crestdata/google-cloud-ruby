# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/evaluation.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1beta/search_service_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n4google/cloud/discoveryengine/v1beta/evaluation.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x38google/cloud/discoveryengine/v1beta/search_service.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xe3\x07\n\nEvaluation\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\\\n\x0f\x65valuation_spec\x18\x02 \x01(\x0b\x32>.google.cloud.discoveryengine.v1beta.Evaluation.EvaluationSpecB\x03\xe0\x41\x02\x12Q\n\x0fquality_metrics\x18\x03 \x01(\x0b\x32\x33.google.cloud.discoveryengine.v1beta.QualityMetricsB\x03\xe0\x41\x03\x12I\n\x05state\x18\x04 \x01(\x0e\x32\x35.google.cloud.discoveryengine.v1beta.Evaluation.StateB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\x05 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12.\n\rerror_samples\x18\x08 \x03(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x1a\xbd\x02\n\x0e\x45valuationSpec\x12Q\n\x0esearch_request\x18\x02 \x01(\x0b\x32\x32.google.cloud.discoveryengine.v1beta.SearchRequestB\x03\xe0\x41\x02H\x00\x12h\n\x0equery_set_spec\x18\x01 \x01(\x0b\x32K.google.cloud.discoveryengine.v1beta.Evaluation.EvaluationSpec.QuerySetSpecB\x03\xe0\x41\x02\x1a_\n\x0cQuerySetSpec\x12O\n\x10sample_query_set\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-discoveryengine.googleapis.com/SampleQuerySetB\r\n\x0bsearch_spec\"S\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04:p\xea\x41m\n)discoveryengine.googleapis.com/Evaluation\x12@projects/{project}/locations/{location}/evaluations/{evaluation}\"\x86\x04\n\x0eQualityMetrics\x12S\n\ndoc_recall\x18\x01 \x01(\x0b\x32?.google.cloud.discoveryengine.v1beta.QualityMetrics.TopkMetrics\x12V\n\rdoc_precision\x18\x02 \x01(\x0b\x32?.google.cloud.discoveryengine.v1beta.QualityMetrics.TopkMetrics\x12Q\n\x08\x64oc_ndcg\x18\x03 \x01(\x0b\x32?.google.cloud.discoveryengine.v1beta.QualityMetrics.TopkMetrics\x12T\n\x0bpage_recall\x18\x04 \x01(\x0b\x32?.google.cloud.discoveryengine.v1beta.QualityMetrics.TopkMetrics\x12R\n\tpage_ndcg\x18\x05 \x01(\x0b\x32?.google.cloud.discoveryengine.v1beta.QualityMetrics.TopkMetrics\x1aJ\n\x0bTopkMetrics\x12\r\n\x05top_1\x18\x01 \x01(\x01\x12\r\n\x05top_3\x18\x02 \x01(\x01\x12\r\n\x05top_5\x18\x03 \x01(\x01\x12\x0e\n\x06top_10\x18\x04 \x01(\x01\x42\x96\x02\n\'com.google.cloud.discoveryengine.v1betaB\x0f\x45valuationProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.discoveryengine.v1beta.SearchRequest", "google/cloud/discoveryengine/v1beta/search_service.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        Evaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Evaluation").msgclass
        Evaluation::EvaluationSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Evaluation.EvaluationSpec").msgclass
        Evaluation::EvaluationSpec::QuerySetSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Evaluation.EvaluationSpec.QuerySetSpec").msgclass
        Evaluation::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Evaluation.State").enummodule
        QualityMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.QualityMetrics").msgclass
        QualityMetrics::TopkMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.QualityMetrics.TopkMetrics").msgclass
      end
    end
  end
end
