# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/managedidentities/v1/managed_identities_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/managedidentities/v1/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\nBgoogle/cloud/managedidentities/v1/managed_identities_service.proto\x12!google.cloud.managedidentities.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/cloud/managedidentities/v1/resource.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdc\x01\n\nOpMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x06 \x01(\tB\x03\xe0\x41\x03\"\xbb\x01\n\x1e\x43reateMicrosoftAdDomainRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'managedidentities.googleapis.com/Domain\x12\x18\n\x0b\x64omain_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\x06\x64omain\x18\x03 \x01(\x0b\x32).google.cloud.managedidentities.v1.DomainB\x03\xe0\x41\x02\"Z\n\x19ResetAdminPasswordRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\".\n\x1aResetAdminPasswordResponse\x12\x10\n\x08password\x18\x01 \x01(\t\"\xb2\x01\n\x12ListDomainsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'managedidentities.googleapis.com/Domain\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x13ListDomainsResponse\x12:\n\x07\x64omains\x18\x01 \x03(\x0b\x32).google.cloud.managedidentities.v1.Domain\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x10GetDomainRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\"\x8b\x01\n\x13UpdateDomainRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12>\n\x06\x64omain\x18\x02 \x01(\x0b\x32).google.cloud.managedidentities.v1.DomainB\x03\xe0\x41\x02\"T\n\x13\x44\x65leteDomainRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\"\x91\x01\n\x12\x41ttachTrustRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\x12<\n\x05trust\x18\x02 \x01(\x0b\x32(.google.cloud.managedidentities.v1.TrustB\x03\xe0\x41\x02\"\x9f\x01\n\x17ReconfigureTrustRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\x12\x1f\n\x12target_domain_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12$\n\x17target_dns_ip_addresses\x18\x03 \x03(\tB\x03\xe0\x41\x02\"\x91\x01\n\x12\x44\x65tachTrustRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\x12<\n\x05trust\x18\x02 \x01(\x0b\x32(.google.cloud.managedidentities.v1.TrustB\x03\xe0\x41\x02\"\x93\x01\n\x14ValidateTrustRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'managedidentities.googleapis.com/Domain\x12<\n\x05trust\x18\x02 \x01(\x0b\x32(.google.cloud.managedidentities.v1.TrustB\x03\xe0\x41\x02\x32\xf2\x11\n\x18ManagedIdentitiesService\x12\xf0\x01\n\x17\x43reateMicrosoftAdDomain\x12\x41.google.cloud.managedidentities.v1.CreateMicrosoftAdDomainRequest\x1a\x1d.google.longrunning.Operation\"s\x82\xd3\xe4\x93\x02:\"0/v1/{parent=projects/*/locations/global}/domains:\x06\x64omain\xda\x41\x19parent,domain_name,domain\xca\x41\x14\n\x06\x44omain\x12\nOpMetadata\x12\xe8\x01\n\x12ResetAdminPassword\x12<.google.cloud.managedidentities.v1.ResetAdminPasswordRequest\x1a=.google.cloud.managedidentities.v1.ResetAdminPasswordResponse\"U\x82\xd3\xe4\x93\x02H\"C/v1/{name=projects/*/locations/global/domains/*}:resetAdminPassword:\x01*\xda\x41\x04name\x12\xbf\x01\n\x0bListDomains\x12\x35.google.cloud.managedidentities.v1.ListDomainsRequest\x1a\x36.google.cloud.managedidentities.v1.ListDomainsResponse\"A\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/global}/domains\xda\x41\x06parent\x12\xac\x01\n\tGetDomain\x12\x33.google.cloud.managedidentities.v1.GetDomainRequest\x1a).google.cloud.managedidentities.v1.Domain\"?\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/global/domains/*}\xda\x41\x04name\x12\xda\x01\n\x0cUpdateDomain\x12\x36.google.cloud.managedidentities.v1.UpdateDomainRequest\x1a\x1d.google.longrunning.Operation\"s\x82\xd3\xe4\x93\x02\x41\x32\x37/v1/{domain.name=projects/*/locations/global/domains/*}:\x06\x64omain\xda\x41\x12\x64omain,update_mask\xca\x41\x14\n\x06\x44omain\x12\nOpMetadata\x12\xcc\x01\n\x0c\x44\x65leteDomain\x12\x36.google.cloud.managedidentities.v1.DeleteDomainRequest\x1a\x1d.google.longrunning.Operation\"e\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/global/domains/*}\xda\x41\x04name\xca\x41#\n\x15google.protobuf.Empty\x12\nOpMetadata\x12\xd0\x01\n\x0b\x41ttachTrust\x12\x35.google.cloud.managedidentities.v1.AttachTrustRequest\x1a\x1d.google.longrunning.Operation\"k\x82\xd3\xe4\x93\x02\x41\"</v1/{name=projects/*/locations/global/domains/*}:attachTrust:\x01*\xda\x41\nname,trust\xca\x41\x14\n\x06\x44omain\x12\nOpMetadata\x12\x85\x02\n\x10ReconfigureTrust\x12:.google.cloud.managedidentities.v1.ReconfigureTrustRequest\x1a\x1d.google.longrunning.Operation\"\x95\x01\x82\xd3\xe4\x93\x02\x46\"A/v1/{name=projects/*/locations/global/domains/*}:reconfigureTrust:\x01*\xda\x41/name,target_domain_name,target_dns_ip_addresses\xca\x41\x14\n\x06\x44omain\x12\nOpMetadata\x12\xd0\x01\n\x0b\x44\x65tachTrust\x12\x35.google.cloud.managedidentities.v1.DetachTrustRequest\x1a\x1d.google.longrunning.Operation\"k\x82\xd3\xe4\x93\x02\x41\"</v1/{name=projects/*/locations/global/domains/*}:detachTrust:\x01*\xda\x41\nname,trust\xca\x41\x14\n\x06\x44omain\x12\nOpMetadata\x12\xd6\x01\n\rValidateTrust\x12\x37.google.cloud.managedidentities.v1.ValidateTrustRequest\x1a\x1d.google.longrunning.Operation\"m\x82\xd3\xe4\x93\x02\x43\">/v1/{name=projects/*/locations/global/domains/*}:validateTrust:\x01*\xda\x41\nname,trust\xca\x41\x14\n\x06\x44omain\x12\nOpMetadata\x1aT\xca\x41 managedidentities.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x93\x02\n%com.google.cloud.managedidentities.v1B\x1dManagedIdentitiesServiceProtoP\x01ZScloud.google.com/go/managedidentities/apiv1/managedidentitiespb;managedidentitiespb\xa2\x02\x04GCMI\xaa\x02!Google.Cloud.ManagedIdentities.V1\xca\x02!Google\\Cloud\\ManagedIdentities\\V1\xea\x02$Google::Cloud::ManagedIdentities::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.managedidentities.v1.Domain", "google/cloud/managedidentities/v1/resource.proto"],
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
    module ManagedIdentities
      module V1
        OpMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.OpMetadata").msgclass
        CreateMicrosoftAdDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.CreateMicrosoftAdDomainRequest").msgclass
        ResetAdminPasswordRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ResetAdminPasswordRequest").msgclass
        ResetAdminPasswordResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ResetAdminPasswordResponse").msgclass
        ListDomainsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ListDomainsRequest").msgclass
        ListDomainsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ListDomainsResponse").msgclass
        GetDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.GetDomainRequest").msgclass
        UpdateDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.UpdateDomainRequest").msgclass
        DeleteDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.DeleteDomainRequest").msgclass
        AttachTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.AttachTrustRequest").msgclass
        ReconfigureTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ReconfigureTrustRequest").msgclass
        DetachTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.DetachTrustRequest").msgclass
        ValidateTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ValidateTrustRequest").msgclass
      end
    end
  end
end
