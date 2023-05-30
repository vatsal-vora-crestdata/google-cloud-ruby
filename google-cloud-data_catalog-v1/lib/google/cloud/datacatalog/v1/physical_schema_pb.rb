# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/physical_schema.proto

require 'google/protobuf'


descriptor_data = "\n1google/cloud/datacatalog/v1/physical_schema.proto\x12\x1bgoogle.cloud.datacatalog.v1\"\xdd\x04\n\x0ePhysicalSchema\x12\x46\n\x04\x61vro\x18\x01 \x01(\x0b\x32\x36.google.cloud.datacatalog.v1.PhysicalSchema.AvroSchemaH\x00\x12J\n\x06thrift\x18\x02 \x01(\x0b\x32\x38.google.cloud.datacatalog.v1.PhysicalSchema.ThriftSchemaH\x00\x12N\n\x08protobuf\x18\x03 \x01(\x0b\x32:.google.cloud.datacatalog.v1.PhysicalSchema.ProtobufSchemaH\x00\x12L\n\x07parquet\x18\x04 \x01(\x0b\x32\x39.google.cloud.datacatalog.v1.PhysicalSchema.ParquetSchemaH\x00\x12\x44\n\x03orc\x18\x05 \x01(\x0b\x32\x35.google.cloud.datacatalog.v1.PhysicalSchema.OrcSchemaH\x00\x12\x44\n\x03\x63sv\x18\x06 \x01(\x0b\x32\x35.google.cloud.datacatalog.v1.PhysicalSchema.CsvSchemaH\x00\x1a\x1a\n\nAvroSchema\x12\x0c\n\x04text\x18\x01 \x01(\t\x1a\x1c\n\x0cThriftSchema\x12\x0c\n\x04text\x18\x01 \x01(\t\x1a\x1e\n\x0eProtobufSchema\x12\x0c\n\x04text\x18\x01 \x01(\t\x1a\x0f\n\rParquetSchema\x1a\x0b\n\tOrcSchema\x1a\x0b\n\tCsvSchemaB\x08\n\x06schemaB\xdb\x01\n\x1f\x63om.google.cloud.datacatalog.v1B\x13PhysicalSchemaProtoP\x01ZAcloud.google.com/go/datacatalog/apiv1/datacatalogpb;datacatalogpb\xf8\x01\x01\xaa\x02\x1bGoogle.Cloud.DataCatalog.V1\xca\x02\x1bGoogle\\Cloud\\DataCatalog\\V1\xea\x02\x1eGoogle::Cloud::DataCatalog::V1b\x06proto3"

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
    module DataCatalog
      module V1
        PhysicalSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema").msgclass
        PhysicalSchema::AvroSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema.AvroSchema").msgclass
        PhysicalSchema::ThriftSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema.ThriftSchema").msgclass
        PhysicalSchema::ProtobufSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema.ProtobufSchema").msgclass
        PhysicalSchema::ParquetSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema.ParquetSchema").msgclass
        PhysicalSchema::OrcSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema.OrcSchema").msgclass
        PhysicalSchema::CsvSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.PhysicalSchema.CsvSchema").msgclass
      end
    end
  end
end
