# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/source.proto

require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/source.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.Source" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :canonical_name, :string, 14
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Source = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Source").msgclass
      end
    end
  end
end
