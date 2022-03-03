# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/resource.proto

require 'google/api/field_behavior_pb'
require 'google/cloud/securitycenter/v1/folder_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/resource.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.Resource" do
      optional :name, :string, 1
      optional :project, :string, 2
      optional :project_display_name, :string, 3
      optional :parent, :string, 4
      optional :parent_display_name, :string, 5
      optional :type, :string, 6
      repeated :folders, :message, 7, "google.cloud.securitycenter.v1.Folder"
      optional :display_name, :string, 8
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Resource").msgclass
      end
    end
  end
end
