# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/inline.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n*google/cloud/dialogflow/cx/v3/inline.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1fgoogle/api/field_behavior.proto\")\n\x11InlineDestination\x12\x14\n\x07\x63ontent\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x03\"\x1f\n\x0cInlineSource\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\x0c\x42\xb1\x01\n!com.google.cloud.dialogflow.cx.v3B\x0bInlineProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    module Dialogflow
      module CX
        module V3
          InlineDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.InlineDestination").msgclass
          InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.InlineSource").msgclass
        end
      end
    end
  end
end
