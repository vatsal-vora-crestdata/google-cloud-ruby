# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/lifesciences/v2beta/workflows.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/code_pb'


descriptor_data = "\n0google/cloud/lifesciences/v2beta/workflows.proto\x12 google.cloud.lifesciences.v2beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x15google/rpc/code.proto\"\xff\x01\n\x12RunPipelineRequest\x12\x0e\n\x06parent\x18\x04 \x01(\t\x12\x41\n\x08pipeline\x18\x01 \x01(\x0b\x32*.google.cloud.lifesciences.v2beta.PipelineB\x03\xe0\x41\x02\x12P\n\x06labels\x18\x02 \x03(\x0b\x32@.google.cloud.lifesciences.v2beta.RunPipelineRequest.LabelsEntry\x12\x15\n\rpub_sub_topic\x18\x03 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x15\n\x13RunPipelineResponse\"\x80\x03\n\x08Pipeline\x12\x39\n\x07\x61\x63tions\x18\x01 \x03(\x0b\x32(.google.cloud.lifesciences.v2beta.Action\x12>\n\tresources\x18\x02 \x01(\x0b\x32+.google.cloud.lifesciences.v2beta.Resources\x12P\n\x0b\x65nvironment\x18\x03 \x03(\x0b\x32;.google.cloud.lifesciences.v2beta.Pipeline.EnvironmentEntry\x12G\n\x15\x65ncrypted_environment\x18\x05 \x01(\x0b\x32(.google.cloud.lifesciences.v2beta.Secret\x12*\n\x07timeout\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\x32\n\x10\x45nvironmentEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xca\x07\n\x06\x41\x63tion\x12\x16\n\x0e\x63ontainer_name\x18\x01 \x01(\t\x12\x16\n\timage_uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x08\x63ommands\x18\x03 \x03(\t\x12\x12\n\nentrypoint\x18\x04 \x01(\t\x12N\n\x0b\x65nvironment\x18\x05 \x03(\x0b\x32\x39.google.cloud.lifesciences.v2beta.Action.EnvironmentEntry\x12G\n\x15\x65ncrypted_environment\x18\x15 \x01(\x0b\x32(.google.cloud.lifesciences.v2beta.Secret\x12\x15\n\rpid_namespace\x18\x06 \x01(\t\x12Q\n\rport_mappings\x18\x08 \x03(\x0b\x32:.google.cloud.lifesciences.v2beta.Action.PortMappingsEntry\x12\x37\n\x06mounts\x18\t \x03(\x0b\x32\'.google.cloud.lifesciences.v2beta.Mount\x12\x44\n\x06labels\x18\n \x03(\x0b\x32\x34.google.cloud.lifesciences.v2beta.Action.LabelsEntry\x12=\n\x0b\x63redentials\x18\x0b \x01(\x0b\x32(.google.cloud.lifesciences.v2beta.Secret\x12*\n\x07timeout\x18\x0c \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x1a\n\x12ignore_exit_status\x18\r \x01(\x08\x12\x19\n\x11run_in_background\x18\x0e \x01(\x08\x12\x12\n\nalways_run\x18\x0f \x01(\x08\x12\x13\n\x0b\x65nable_fuse\x18\x10 \x01(\x08\x12\x1d\n\x15publish_exposed_ports\x18\x11 \x01(\x08\x12\x1e\n\x16\x64isable_image_prefetch\x18\x12 \x01(\x08\x12&\n\x1e\x64isable_standard_error_capture\x18\x13 \x01(\x08\x12\x1e\n\x16\x62lock_external_network\x18\x14 \x01(\x08\x1a\x32\n\x10\x45nvironmentEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x33\n\x11PortMappingsEntry\x12\x0b\n\x03key\x18\x01 \x01(\x05\x12\r\n\x05value\x18\x02 \x01(\x05:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"/\n\x06Secret\x12\x10\n\x08key_name\x18\x01 \x01(\t\x12\x13\n\x0b\x63ipher_text\x18\x02 \x01(\t\"6\n\x05Mount\x12\x0c\n\x04\x64isk\x18\x01 \x01(\t\x12\x0c\n\x04path\x18\x02 \x01(\t\x12\x11\n\tread_only\x18\x03 \x01(\x08\"v\n\tResources\x12\x0f\n\x07regions\x18\x02 \x03(\t\x12\r\n\x05zones\x18\x03 \x03(\t\x12I\n\x0fvirtual_machine\x18\x04 \x01(\x0b\x32\x30.google.cloud.lifesciences.v2beta.VirtualMachine\"\xbc\x05\n\x0eVirtualMachine\x12\x19\n\x0cmachine_type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0bpreemptible\x18\x02 \x01(\x08\x12L\n\x06labels\x18\x03 \x03(\x0b\x32<.google.cloud.lifesciences.v2beta.VirtualMachine.LabelsEntry\x12\x35\n\x05\x64isks\x18\x04 \x03(\x0b\x32&.google.cloud.lifesciences.v2beta.Disk\x12:\n\x07network\x18\x05 \x01(\x0b\x32).google.cloud.lifesciences.v2beta.Network\x12\x43\n\x0c\x61\x63\x63\x65lerators\x18\x06 \x03(\x0b\x32-.google.cloud.lifesciences.v2beta.Accelerator\x12I\n\x0fservice_account\x18\x07 \x01(\x0b\x32\x30.google.cloud.lifesciences.v2beta.ServiceAccount\x12\x19\n\x11\x62oot_disk_size_gb\x18\x08 \x01(\x05\x12\x14\n\x0c\x63pu_platform\x18\t \x01(\t\x12\x12\n\nboot_image\x18\n \x01(\t\x12!\n\x15nvidia_driver_version\x18\x0b \x01(\tB\x02\x18\x01\x12%\n\x1d\x65nable_stackdriver_monitoring\x18\x0c \x01(\x08\x12\x1b\n\x13\x64ocker_cache_images\x18\r \x03(\t\x12\x39\n\x07volumes\x18\x0e \x03(\x0b\x32(.google.cloud.lifesciences.v2beta.Volume\x12\x13\n\x0breservation\x18\x0f \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"/\n\x0eServiceAccount\x12\r\n\x05\x65mail\x18\x01 \x01(\t\x12\x0e\n\x06scopes\x18\x02 \x03(\t\"*\n\x0b\x41\x63\x63\x65lerator\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\r\n\x05\x63ount\x18\x02 \x01(\x03\"K\n\x07Network\x12\x0f\n\x07network\x18\x01 \x01(\t\x12\x1b\n\x13use_private_address\x18\x02 \x01(\x08\x12\x12\n\nsubnetwork\x18\x03 \x01(\t\"I\n\x04\x44isk\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07size_gb\x18\x02 \x01(\x05\x12\x0c\n\x04type\x18\x03 \x01(\t\x12\x14\n\x0csource_image\x18\x04 \x01(\t\"\xfa\x01\n\x06Volume\x12\x0e\n\x06volume\x18\x01 \x01(\t\x12K\n\x0fpersistent_disk\x18\x02 \x01(\x0b\x32\x30.google.cloud.lifesciences.v2beta.PersistentDiskH\x00\x12G\n\rexisting_disk\x18\x03 \x01(\x0b\x32..google.cloud.lifesciences.v2beta.ExistingDiskH\x00\x12?\n\tnfs_mount\x18\x04 \x01(\x0b\x32*.google.cloud.lifesciences.v2beta.NFSMountH\x00\x42\t\n\x07storage\"E\n\x0ePersistentDisk\x12\x0f\n\x07size_gb\x18\x01 \x01(\x05\x12\x0c\n\x04type\x18\x02 \x01(\t\x12\x14\n\x0csource_image\x18\x03 \x01(\t\"\x1c\n\x0c\x45xistingDisk\x12\x0c\n\x04\x64isk\x18\x01 \x01(\t\"\x1a\n\x08NFSMount\x12\x0e\n\x06target\x18\x01 \x01(\t\"\x9e\x03\n\x08Metadata\x12<\n\x08pipeline\x18\x01 \x01(\x0b\x32*.google.cloud.lifesciences.v2beta.Pipeline\x12\x46\n\x06labels\x18\x02 \x03(\x0b\x32\x36.google.cloud.lifesciences.v2beta.Metadata.LabelsEntry\x12\x37\n\x06\x65vents\x18\x03 \x03(\x0b\x32\'.google.cloud.lifesciences.v2beta.Event\x12/\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12.\n\nstart_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rpub_sub_topic\x18\x07 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xf5\x06\n\x05\x45vent\x12-\n\ttimestamp\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x41\n\x07\x64\x65layed\x18\x11 \x01(\x0b\x32..google.cloud.lifesciences.v2beta.DelayedEventH\x00\x12P\n\x0fworker_assigned\x18\x12 \x01(\x0b\x32\x35.google.cloud.lifesciences.v2beta.WorkerAssignedEventH\x00\x12P\n\x0fworker_released\x18\x13 \x01(\x0b\x32\x35.google.cloud.lifesciences.v2beta.WorkerReleasedEventH\x00\x12J\n\x0cpull_started\x18\x14 \x01(\x0b\x32\x32.google.cloud.lifesciences.v2beta.PullStartedEventH\x00\x12J\n\x0cpull_stopped\x18\x15 \x01(\x0b\x32\x32.google.cloud.lifesciences.v2beta.PullStoppedEventH\x00\x12T\n\x11\x63ontainer_started\x18\x16 \x01(\x0b\x32\x37.google.cloud.lifesciences.v2beta.ContainerStartedEventH\x00\x12T\n\x11\x63ontainer_stopped\x18\x17 \x01(\x0b\x32\x37.google.cloud.lifesciences.v2beta.ContainerStoppedEventH\x00\x12R\n\x10\x63ontainer_killed\x18\x18 \x01(\x0b\x32\x36.google.cloud.lifesciences.v2beta.ContainerKilledEventH\x00\x12]\n\x16unexpected_exit_status\x18\x19 \x01(\x0b\x32;.google.cloud.lifesciences.v2beta.UnexpectedExitStatusEventH\x00\x12?\n\x06\x66\x61iled\x18\x1a \x01(\x0b\x32-.google.cloud.lifesciences.v2beta.FailedEventH\x00\x42\t\n\x07\x64\x65tails\".\n\x0c\x44\x65layedEvent\x12\r\n\x05\x63\x61use\x18\x01 \x01(\t\x12\x0f\n\x07metrics\x18\x02 \x03(\t\"K\n\x13WorkerAssignedEvent\x12\x0c\n\x04zone\x18\x01 \x01(\t\x12\x10\n\x08instance\x18\x02 \x01(\t\x12\x14\n\x0cmachine_type\x18\x03 \x01(\t\"5\n\x13WorkerReleasedEvent\x12\x0c\n\x04zone\x18\x01 \x01(\t\x12\x10\n\x08instance\x18\x02 \x01(\t\"%\n\x10PullStartedEvent\x12\x11\n\timage_uri\x18\x01 \x01(\t\"%\n\x10PullStoppedEvent\x12\x11\n\timage_uri\x18\x01 \x01(\t\"\xd5\x01\n\x15\x43ontainerStartedEvent\x12\x11\n\taction_id\x18\x01 \x01(\x05\x12`\n\rport_mappings\x18\x02 \x03(\x0b\x32I.google.cloud.lifesciences.v2beta.ContainerStartedEvent.PortMappingsEntry\x12\x12\n\nip_address\x18\x03 \x01(\t\x1a\x33\n\x11PortMappingsEntry\x12\x0b\n\x03key\x18\x01 \x01(\x05\x12\r\n\x05value\x18\x02 \x01(\x05:\x02\x38\x01\"O\n\x15\x43ontainerStoppedEvent\x12\x11\n\taction_id\x18\x01 \x01(\x05\x12\x13\n\x0b\x65xit_status\x18\x02 \x01(\x05\x12\x0e\n\x06stderr\x18\x03 \x01(\t\"C\n\x19UnexpectedExitStatusEvent\x12\x11\n\taction_id\x18\x01 \x01(\x05\x12\x13\n\x0b\x65xit_status\x18\x02 \x01(\x05\")\n\x14\x43ontainerKilledEvent\x12\x11\n\taction_id\x18\x01 \x01(\x05\"<\n\x0b\x46\x61iledEvent\x12\x1e\n\x04\x63ode\x18\x01 \x01(\x0e\x32\x10.google.rpc.Code\x12\r\n\x05\x63\x61use\x18\x02 \x01(\t2\xb2\x02\n\x16WorkflowsServiceV2Beta\x12\xc6\x01\n\x0bRunPipeline\x12\x34.google.cloud.lifesciences.v2beta.RunPipelineRequest\x1a\x1d.google.longrunning.Operation\"b\x82\xd3\xe4\x93\x02:\"5/v2beta/{parent=projects/*/locations/*}/pipelines:run:\x01*\xca\x41\x1f\n\x13RunPipelineResponse\x12\x08Metadata\x1aO\xca\x41\x1blifesciences.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xf5\x01\n$com.google.cloud.lifesciences.v2betaB\x0eWorkflowsProtoP\x01ZHcloud.google.com/go/lifesciences/apiv2beta/lifesciencespb;lifesciencespb\xa2\x02\x04\x43LSW\xaa\x02 Google.Cloud.LifeSciences.V2Beta\xca\x02 Google\\Cloud\\LifeSciences\\V2beta\xea\x02#Google::Cloud::LifeSciences::V2betab\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module LifeSciences
      module V2beta
        RunPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.RunPipelineRequest").msgclass
        RunPipelineResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.RunPipelineResponse").msgclass
        Pipeline = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Pipeline").msgclass
        Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Action").msgclass
        Secret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Secret").msgclass
        Mount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Mount").msgclass
        Resources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Resources").msgclass
        VirtualMachine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.VirtualMachine").msgclass
        ServiceAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.ServiceAccount").msgclass
        Accelerator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Accelerator").msgclass
        Network = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Network").msgclass
        Disk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Disk").msgclass
        Volume = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Volume").msgclass
        PersistentDisk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.PersistentDisk").msgclass
        ExistingDisk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.ExistingDisk").msgclass
        NFSMount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.NFSMount").msgclass
        Metadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Metadata").msgclass
        Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.Event").msgclass
        DelayedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.DelayedEvent").msgclass
        WorkerAssignedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.WorkerAssignedEvent").msgclass
        WorkerReleasedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.WorkerReleasedEvent").msgclass
        PullStartedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.PullStartedEvent").msgclass
        PullStoppedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.PullStoppedEvent").msgclass
        ContainerStartedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.ContainerStartedEvent").msgclass
        ContainerStoppedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.ContainerStoppedEvent").msgclass
        UnexpectedExitStatusEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.UnexpectedExitStatusEvent").msgclass
        ContainerKilledEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.ContainerKilledEvent").msgclass
        FailedEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.lifesciences.v2beta.FailedEvent").msgclass
      end
    end
  end
end
