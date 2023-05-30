# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/alert.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/common_pb'
require 'google/monitoring/v3/mutation_record_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n google/monitoring/v3/alert.proto\x12\x14google.monitoring.v3\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a!google/monitoring/v3/common.proto\x1a*google/monitoring/v3/mutation_record.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x17google/rpc/status.proto\"\xdb\x1a\n\x0b\x41lertPolicy\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x46\n\rdocumentation\x18\r \x01(\x0b\x32/.google.monitoring.v3.AlertPolicy.Documentation\x12\x46\n\x0buser_labels\x18\x10 \x03(\x0b\x32\x31.google.monitoring.v3.AlertPolicy.UserLabelsEntry\x12?\n\nconditions\x18\x0c \x03(\x0b\x32+.google.monitoring.v3.AlertPolicy.Condition\x12I\n\x08\x63ombiner\x18\x06 \x01(\x0e\x32\x37.google.monitoring.v3.AlertPolicy.ConditionCombinerType\x12+\n\x07\x65nabled\x18\x11 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12$\n\x08validity\x18\x12 \x01(\x0b\x32\x12.google.rpc.Status\x12\x1d\n\x15notification_channels\x18\x0e \x03(\t\x12=\n\x0f\x63reation_record\x18\n \x01(\x0b\x32$.google.monitoring.v3.MutationRecord\x12=\n\x0fmutation_record\x18\x0b \x01(\x0b\x32$.google.monitoring.v3.MutationRecord\x12G\n\x0e\x61lert_strategy\x18\x15 \x01(\x0b\x32/.google.monitoring.v3.AlertPolicy.AlertStrategy\x1a\x33\n\rDocumentation\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\t\x12\x11\n\tmime_type\x18\x02 \x01(\t\x1a\xce\x10\n\tCondition\x12\x0c\n\x04name\x18\x0c \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x06 \x01(\t\x12Z\n\x13\x63ondition_threshold\x18\x01 \x01(\x0b\x32;.google.monitoring.v3.AlertPolicy.Condition.MetricThresholdH\x00\x12U\n\x10\x63ondition_absent\x18\x02 \x01(\x0b\x32\x39.google.monitoring.v3.AlertPolicy.Condition.MetricAbsenceH\x00\x12U\n\x15\x63ondition_matched_log\x18\x14 \x01(\x0b\x32\x34.google.monitoring.v3.AlertPolicy.Condition.LogMatchH\x00\x12{\n#condition_monitoring_query_language\x18\x13 \x01(\x0b\x32L.google.monitoring.v3.AlertPolicy.Condition.MonitoringQueryLanguageConditionH\x00\x1a\x35\n\x07Trigger\x12\x0f\n\x05\x63ount\x18\x01 \x01(\x05H\x00\x12\x11\n\x07percent\x18\x02 \x01(\x01H\x00\x42\x06\n\x04type\x1a\xea\x03\n\x0fMetricThreshold\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\x0c\x61ggregations\x18\x08 \x03(\x0b\x32!.google.monitoring.v3.Aggregation\x12\x1a\n\x12\x64\x65nominator_filter\x18\t \x01(\t\x12\x43\n\x18\x64\x65nominator_aggregations\x18\n \x03(\x0b\x32!.google.monitoring.v3.Aggregation\x12\x38\n\ncomparison\x18\x04 \x01(\x0e\x32$.google.monitoring.v3.ComparisonType\x12\x17\n\x0fthreshold_value\x18\x05 \x01(\x01\x12+\n\x08\x64uration\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x44\n\x07trigger\x18\x07 \x01(\x0b\x32\x33.google.monitoring.v3.AlertPolicy.Condition.Trigger\x12\x62\n\x17\x65valuation_missing_data\x18\x0b \x01(\x0e\x32\x41.google.monitoring.v3.AlertPolicy.Condition.EvaluationMissingData\x1a\xd0\x01\n\rMetricAbsence\x12\x13\n\x06\x66ilter\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\x0c\x61ggregations\x18\x05 \x03(\x0b\x32!.google.monitoring.v3.Aggregation\x12+\n\x08\x64uration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x44\n\x07trigger\x18\x03 \x01(\x0b\x32\x33.google.monitoring.v3.AlertPolicy.Condition.Trigger\x1a\xbc\x01\n\x08LogMatch\x12\x13\n\x06\x66ilter\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x63\n\x10label_extractors\x18\x02 \x03(\x0b\x32I.google.monitoring.v3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry\x1a\x36\n\x14LabelExtractorsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x88\x02\n MonitoringQueryLanguageCondition\x12\r\n\x05query\x18\x01 \x01(\t\x12+\n\x08\x64uration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x44\n\x07trigger\x18\x03 \x01(\x0b\x32\x33.google.monitoring.v3.AlertPolicy.Condition.Trigger\x12\x62\n\x17\x65valuation_missing_data\x18\x04 \x01(\x0e\x32\x41.google.monitoring.v3.AlertPolicy.Condition.EvaluationMissingData\"\xad\x01\n\x15\x45valuationMissingData\x12\'\n#EVALUATION_MISSING_DATA_UNSPECIFIED\x10\x00\x12$\n EVALUATION_MISSING_DATA_INACTIVE\x10\x01\x12\"\n\x1e\x45VALUATION_MISSING_DATA_ACTIVE\x10\x02\x12!\n\x1d\x45VALUATION_MISSING_DATA_NO_OP\x10\x03:\x97\x02\xea\x41\x93\x02\n.monitoring.googleapis.com/AlertPolicyCondition\x12\x46projects/{project}/alertPolicies/{alert_policy}/conditions/{condition}\x12Porganizations/{organization}/alertPolicies/{alert_policy}/conditions/{condition}\x12\x44\x66olders/{folder}/alertPolicies/{alert_policy}/conditions/{condition}\x12\x01*B\x0b\n\tcondition\x1a\xea\x01\n\rAlertStrategy\x12\x66\n\x17notification_rate_limit\x18\x01 \x01(\x0b\x32\x45.google.monitoring.v3.AlertPolicy.AlertStrategy.NotificationRateLimit\x12-\n\nauto_close\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\x42\n\x15NotificationRateLimit\x12)\n\x06period\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\x31\n\x0fUserLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"a\n\x15\x43onditionCombinerType\x12\x17\n\x13\x43OMBINE_UNSPECIFIED\x10\x00\x12\x07\n\x03\x41ND\x10\x01\x12\x06\n\x02OR\x10\x02\x12\x1e\n\x1a\x41ND_WITH_MATCHING_RESOURCE\x10\x03:\xc9\x01\xea\x41\xc5\x01\n%monitoring.googleapis.com/AlertPolicy\x12/projects/{project}/alertPolicies/{alert_policy}\x12\x39organizations/{organization}/alertPolicies/{alert_policy}\x12-folders/{folder}/alertPolicies/{alert_policy}\x12\x01*B\xc5\x01\n\x18\x63om.google.monitoring.v3B\nAlertProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.BoolValue", "google/protobuf/wrappers.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.monitoring.v3.MutationRecord", "google/monitoring/v3/mutation_record.proto"],
    ["google.monitoring.v3.Aggregation", "google/monitoring/v3/common.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Monitoring
      module V3
        AlertPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy").msgclass
        AlertPolicy::Documentation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Documentation").msgclass
        AlertPolicy::Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition").msgclass
        AlertPolicy::Condition::Trigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.Trigger").msgclass
        AlertPolicy::Condition::MetricThreshold = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.MetricThreshold").msgclass
        AlertPolicy::Condition::MetricAbsence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.MetricAbsence").msgclass
        AlertPolicy::Condition::LogMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.LogMatch").msgclass
        AlertPolicy::Condition::MonitoringQueryLanguageCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.MonitoringQueryLanguageCondition").msgclass
        AlertPolicy::Condition::EvaluationMissingData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.Condition.EvaluationMissingData").enummodule
        AlertPolicy::AlertStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.AlertStrategy").msgclass
        AlertPolicy::AlertStrategy::NotificationRateLimit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.AlertStrategy.NotificationRateLimit").msgclass
        AlertPolicy::ConditionCombinerType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.AlertPolicy.ConditionCombinerType").enummodule
      end
    end
  end
end
