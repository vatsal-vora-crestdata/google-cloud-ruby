# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1beta1/environment.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/notebooks/v1beta1/environment.proto\x12\x1egoogle.cloud.notebooks.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8e\x03\n\x0b\x45nvironment\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12;\n\x08vm_image\x18\x06 \x01(\x0b\x32\'.google.cloud.notebooks.v1beta1.VmImageH\x00\x12I\n\x0f\x63ontainer_image\x18\x07 \x01(\x0b\x32..google.cloud.notebooks.v1beta1.ContainerImageH\x00\x12\x1b\n\x13post_startup_script\x18\x08 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:X\xea\x41U\n$notebooks.googleapis.com/Environment\x12-projects/{project}/environments/{environment}B\x0c\n\nimage_type\"V\n\x07VmImage\x12\x14\n\x07project\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\nimage_name\x18\x02 \x01(\tH\x00\x12\x16\n\x0cimage_family\x18\x03 \x01(\tH\x00\x42\x07\n\x05image\"6\n\x0e\x43ontainerImage\x12\x17\n\nrepository\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0b\n\x03tag\x18\x02 \x01(\tB\xe0\x01\n\"com.google.cloud.notebooks.v1beta1B\x10\x45nvironmentProtoP\x01Z@cloud.google.com/go/notebooks/apiv1beta1/notebookspb;notebookspb\xaa\x02\x1eGoogle.Cloud.Notebooks.V1Beta1\xca\x02\x1eGoogle\\Cloud\\Notebooks\\V1beta1\xea\x02!Google::Cloud::Notebooks::V1beta1b\x06proto3"

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
    module Notebooks
      module V1beta1
        Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1beta1.Environment").msgclass
        VmImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1beta1.VmImage").msgclass
        ContainerImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1beta1.ContainerImage").msgclass
      end
    end
  end
end
