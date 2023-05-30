# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/alert_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/alert_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n(google/monitoring/v3/alert_service.proto\x12\x14google.monitoring.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/monitoring/v3/alert.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x95\x01\n\x18\x43reateAlertPolicyRequest\x12;\n\x04name\x18\x03 \x01(\tB-\xe0\x41\x02\xfa\x41\'\x12%monitoring.googleapis.com/AlertPolicy\x12<\n\x0c\x61lert_policy\x18\x02 \x01(\x0b\x32!.google.monitoring.v3.AlertPolicyB\x03\xe0\x41\x02\"T\n\x15GetAlertPolicyRequest\x12;\n\x04name\x18\x03 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%monitoring.googleapis.com/AlertPolicy\"\xa0\x01\n\x18ListAlertPoliciesRequest\x12;\n\x04name\x18\x04 \x01(\tB-\xe0\x41\x02\xfa\x41\'\x12%monitoring.googleapis.com/AlertPolicy\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\x12\x10\n\x08order_by\x18\x06 \x01(\t\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x83\x01\n\x19ListAlertPoliciesResponse\x12\x39\n\x0e\x61lert_policies\x18\x03 \x03(\x0b\x32!.google.monitoring.v3.AlertPolicy\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x04 \x01(\x05\"\x89\x01\n\x18UpdateAlertPolicyRequest\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12<\n\x0c\x61lert_policy\x18\x03 \x01(\x0b\x32!.google.monitoring.v3.AlertPolicyB\x03\xe0\x41\x02\"W\n\x18\x44\x65leteAlertPolicyRequest\x12;\n\x04name\x18\x03 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%monitoring.googleapis.com/AlertPolicy2\x9e\x08\n\x12\x41lertPolicyService\x12\xa8\x01\n\x11ListAlertPolicies\x12..google.monitoring.v3.ListAlertPoliciesRequest\x1a/.google.monitoring.v3.ListAlertPoliciesResponse\"2\x82\xd3\xe4\x93\x02%\x12#/v3/{name=projects/*}/alertPolicies\xda\x41\x04name\x12\x96\x01\n\x0eGetAlertPolicy\x12+.google.monitoring.v3.GetAlertPolicyRequest\x1a!.google.monitoring.v3.AlertPolicy\"4\x82\xd3\xe4\x93\x02\'\x12%/v3/{name=projects/*/alertPolicies/*}\xda\x41\x04name\x12\xb5\x01\n\x11\x43reateAlertPolicy\x12..google.monitoring.v3.CreateAlertPolicyRequest\x1a!.google.monitoring.v3.AlertPolicy\"M\x82\xd3\xe4\x93\x02\x33\"#/v3/{name=projects/*}/alertPolicies:\x0c\x61lert_policy\xda\x41\x11name,alert_policy\x12\x91\x01\n\x11\x44\x65leteAlertPolicy\x12..google.monitoring.v3.DeleteAlertPolicyRequest\x1a\x16.google.protobuf.Empty\"4\x82\xd3\xe4\x93\x02\'*%/v3/{name=projects/*/alertPolicies/*}\xda\x41\x04name\x12\xcb\x01\n\x11UpdateAlertPolicy\x12..google.monitoring.v3.UpdateAlertPolicyRequest\x1a!.google.monitoring.v3.AlertPolicy\"c\x82\xd3\xe4\x93\x02\x42\x32\x32/v3/{alert_policy.name=projects/*/alertPolicies/*}:\x0c\x61lert_policy\xda\x41\x18update_mask,alert_policy\x1a\xa9\x01\xca\x41\x19monitoring.googleapis.com\xd2\x41\x89\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/monitoring,https://www.googleapis.com/auth/monitoring.readB\xcc\x01\n\x18\x63om.google.monitoring.v3B\x11\x41lertServiceProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3b\x06proto3"

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
    ["google.monitoring.v3.AlertPolicy", "google/monitoring/v3/alert.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
        CreateAlertPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateAlertPolicyRequest").msgclass
        GetAlertPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetAlertPolicyRequest").msgclass
        ListAlertPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListAlertPoliciesRequest").msgclass
        ListAlertPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListAlertPoliciesResponse").msgclass
        UpdateAlertPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.UpdateAlertPolicyRequest").msgclass
        DeleteAlertPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DeleteAlertPolicyRequest").msgclass
      end
    end
  end
end
