# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/schema.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n0google/cloud/discoveryengine/v1beta/schema.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xd9\x02\n\x06Schema\x12\x30\n\rstruct_schema\x18\x02 \x01(\x0b\x32\x17.google.protobuf.StructH\x00\x12\x15\n\x0bjson_schema\x18\x03 \x01(\tH\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05:\xe8\x01\xea\x41\xe4\x01\n%discoveryengine.googleapis.com/Schema\x12Pprojects/{project}/locations/{location}/dataStores/{data_store}/schemas/{schema}\x12iprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}B\x08\n\x06schemaB\x92\x02\n\'com.google.cloud.discoveryengine.v1betaB\x0bSchemaProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
        Schema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Schema").msgclass
      end
    end
  end
end
