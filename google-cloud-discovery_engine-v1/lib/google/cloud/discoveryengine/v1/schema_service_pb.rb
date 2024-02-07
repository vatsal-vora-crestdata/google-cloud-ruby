# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/schema_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/schema_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/discoveryengine/v1/schema_service.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/discoveryengine/v1/schema.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"O\n\x10GetSchemaRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%discoveryengine.googleapis.com/Schema\"}\n\x12ListSchemasRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"h\n\x13ListSchemasResponse\x12\x38\n\x07schemas\x18\x01 \x03(\x0b\x32\'.google.cloud.discoveryengine.v1.Schema\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xad\x01\n\x13\x43reateSchemaRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12<\n\x06schema\x18\x02 \x01(\x0b\x32\'.google.cloud.discoveryengine.v1.SchemaB\x03\xe0\x41\x02\x12\x16\n\tschema_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"j\n\x13UpdateSchemaRequest\x12<\n\x06schema\x18\x01 \x01(\x0b\x32\'.google.cloud.discoveryengine.v1.SchemaB\x03\xe0\x41\x02\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\"R\n\x13\x44\x65leteSchemaRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%discoveryengine.googleapis.com/Schema\"x\n\x14\x43reateSchemaMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"x\n\x14UpdateSchemaMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"x\n\x14\x44\x65leteSchemaMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\xb1\r\n\rSchemaService\x12\xfc\x01\n\tGetSchema\x12\x31.google.cloud.discoveryengine.v1.GetSchemaRequest\x1a\'.google.cloud.discoveryengine.v1.Schema\"\x92\x01\xda\x41\x04name\x82\xd3\xe4\x93\x02\x84\x01\x12\x38/v1/{name=projects/*/locations/*/dataStores/*/schemas/*}ZH\x12\x46/v1/{name=projects/*/locations/*/collections/*/dataStores/*/schemas/*}\x12\x8f\x02\n\x0bListSchemas\x12\x33.google.cloud.discoveryengine.v1.ListSchemasRequest\x1a\x34.google.cloud.discoveryengine.v1.ListSchemasResponse\"\x94\x01\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x84\x01\x12\x38/v1/{parent=projects/*/locations/*/dataStores/*}/schemasZH\x12\x46/v1/{parent=projects/*/locations/*/collections/*/dataStores/*}/schemas\x12\xfc\x02\n\x0c\x43reateSchema\x12\x34.google.cloud.discoveryengine.v1.CreateSchemaRequest\x1a\x1d.google.longrunning.Operation\"\x96\x02\xca\x41^\n&google.cloud.discoveryengine.v1.Schema\x12\x34google.cloud.discoveryengine.v1.CreateSchemaMetadata\xda\x41\x17parent,schema,schema_id\x82\xd3\xe4\x93\x02\x94\x01\"8/v1/{parent=projects/*/locations/*/dataStores/*}/schemas:\x06schemaZP\"F/v1/{parent=projects/*/locations/*/collections/*/dataStores/*}/schemas:\x06schema\x12\xf0\x02\n\x0cUpdateSchema\x12\x34.google.cloud.discoveryengine.v1.UpdateSchemaRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x02\xca\x41^\n&google.cloud.discoveryengine.v1.Schema\x12\x34google.cloud.discoveryengine.v1.UpdateSchemaMetadata\x82\xd3\xe4\x93\x02\xa2\x01\x32?/v1/{schema.name=projects/*/locations/*/dataStores/*/schemas/*}:\x06schemaZW2M/v1/{schema.name=projects/*/locations/*/collections/*/dataStores/*/schemas/*}:\x06schema\x12\xc8\x02\n\x0c\x44\x65leteSchema\x12\x34.google.cloud.discoveryengine.v1.DeleteSchemaRequest\x1a\x1d.google.longrunning.Operation\"\xe2\x01\xca\x41M\n\x15google.protobuf.Empty\x12\x34google.cloud.discoveryengine.v1.DeleteSchemaMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x84\x01*8/v1/{name=projects/*/locations/*/dataStores/*/schemas/*}ZH*F/v1/{name=projects/*/locations/*/collections/*/dataStores/*/schemas/*}\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x85\x02\n#com.google.cloud.discoveryengine.v1B\x12SchemaServiceProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    ["google.cloud.discoveryengine.v1.Schema", "google/cloud/discoveryengine/v1/schema.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
      module V1
        GetSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.GetSchemaRequest").msgclass
        ListSchemasRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ListSchemasRequest").msgclass
        ListSchemasResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ListSchemasResponse").msgclass
        CreateSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CreateSchemaRequest").msgclass
        UpdateSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.UpdateSchemaRequest").msgclass
        DeleteSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.DeleteSchemaRequest").msgclass
        CreateSchemaMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CreateSchemaMetadata").msgclass
        UpdateSchemaMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.UpdateSchemaMetadata").msgclass
        DeleteSchemaMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.DeleteSchemaMetadata").msgclass
      end
    end
  end
end
