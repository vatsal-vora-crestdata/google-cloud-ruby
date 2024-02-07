# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/agent.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/advanced_settings_pb'
require 'google/cloud/dialogflow/cx/v3/audio_config_pb'
require 'google/cloud/dialogflow/cx/v3/flow_pb'
require 'google/cloud/dialogflow/cx/v3/generative_settings_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n)google/cloud/dialogflow/cx/v3/agent.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x35google/cloud/dialogflow/cx/v3/advanced_settings.proto\x1a\x30google/cloud/dialogflow/cx/v3/audio_config.proto\x1a(google/cloud/dialogflow/cx/v3/flow.proto\x1a\x37google/cloud/dialogflow/cx/v3/generative_settings.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\"8\n\x14SpeechToTextSettings\x12 \n\x18\x65nable_speech_adaptation\x18\x01 \x01(\x08\"\xb4\x0b\n\x05\x41gent\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12%\n\x15\x64\x65\x66\x61ult_language_code\x18\x03 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12 \n\x18supported_language_codes\x18\x04 \x03(\t\x12\x16\n\ttime_zone\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x06 \x01(\t\x12\x12\n\navatar_uri\x18\x07 \x01(\t\x12T\n\x17speech_to_text_settings\x18\r \x01(\x0b\x32\x33.google.cloud.dialogflow.cx.v3.SpeechToTextSettings\x12:\n\nstart_flow\x18\x10 \x01(\tB&\xe0\x41\x05\xfa\x41 \n\x1e\x64ialogflow.googleapis.com/Flow\x12J\n\x11security_settings\x18\x11 \x01(\tB/\xfa\x41,\n*dialogflow.googleapis.com/SecuritySettings\x12&\n\x1a\x65nable_stackdriver_logging\x18\x12 \x01(\x08\x42\x02\x18\x01\x12\x1f\n\x17\x65nable_spell_correction\x18\x14 \x01(\x08\x12\x0e\n\x06locked\x18\x1b \x01(\x08\x12J\n\x11\x61\x64vanced_settings\x18\x16 \x01(\x0b\x32/.google.cloud.dialogflow.cx.v3.AdvancedSettings\x12]\n\x18git_integration_settings\x18\x1e \x01(\x0b\x32;.google.cloud.dialogflow.cx.v3.Agent.GitIntegrationSettings\x12T\n\x17text_to_speech_settings\x18\x1f \x01(\x0b\x32\x33.google.cloud.dialogflow.cx.v3.TextToSpeechSettings\x12\x61\n\x18gen_app_builder_settings\x18! \x01(\x0b\x32:.google.cloud.dialogflow.cx.v3.Agent.GenAppBuilderSettingsH\x00\x88\x01\x01\x12\x62\n\x18\x61nswer_feedback_settings\x18& \x01(\x0b\x32;.google.cloud.dialogflow.cx.v3.Agent.AnswerFeedbackSettingsB\x03\xe0\x41\x01\x1a\x90\x02\n\x16GitIntegrationSettings\x12\x65\n\x0fgithub_settings\x18\x01 \x01(\x0b\x32J.google.cloud.dialogflow.cx.v3.Agent.GitIntegrationSettings.GithubSettingsH\x00\x1a\x7f\n\x0eGithubSettings\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\t\x12\x16\n\x0erepository_uri\x18\x02 \x01(\t\x12\x17\n\x0ftracking_branch\x18\x03 \x01(\t\x12\x14\n\x0c\x61\x63\x63\x65ss_token\x18\x04 \x01(\t\x12\x10\n\x08\x62ranches\x18\x05 \x03(\tB\x0e\n\x0cgit_settings\x1a,\n\x15GenAppBuilderSettings\x12\x13\n\x06\x65ngine\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a=\n\x16\x41nswerFeedbackSettings\x12#\n\x16\x65nable_answer_feedback\x18\x01 \x01(\x08\x42\x03\xe0\x41\x01:\\\xea\x41Y\n\x1f\x64ialogflow.googleapis.com/Agent\x12\x36projects/{project}/locations/{location}/agents/{agent}B\x1b\n\x19_gen_app_builder_settings\"s\n\x11ListAgentsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x64ialogflow.googleapis.com/Agent\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"c\n\x12ListAgentsResponse\x12\x34\n\x06\x61gents\x18\x01 \x03(\x0b\x32$.google.cloud.dialogflow.cx.v3.Agent\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"H\n\x0fGetAgentRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\"\x87\x01\n\x12\x43reateAgentRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x64ialogflow.googleapis.com/Agent\x12\x38\n\x05\x61gent\x18\x02 \x01(\x0b\x32$.google.cloud.dialogflow.cx.v3.AgentB\x03\xe0\x41\x02\"\x7f\n\x12UpdateAgentRequest\x12\x38\n\x05\x61gent\x18\x01 \x01(\x0b\x32$.google.cloud.dialogflow.cx.v3.AgentB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"K\n\x12\x44\x65leteAgentRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\"\x98\x04\n\x12\x45xportAgentRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\x12\x16\n\tagent_uri\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12V\n\x0b\x64\x61ta_format\x18\x03 \x01(\x0e\x32<.google.cloud.dialogflow.cx.v3.ExportAgentRequest.DataFormatB\x03\xe0\x41\x01\x12\x42\n\x0b\x65nvironment\x18\x05 \x01(\tB-\xe0\x41\x01\xfa\x41\'\n%dialogflow.googleapis.com/Environment\x12^\n\x0fgit_destination\x18\x06 \x01(\x0b\x32@.google.cloud.dialogflow.cx.v3.ExportAgentRequest.GitDestinationB\x03\xe0\x41\x01\x12-\n include_bigquery_export_settings\x18\x07 \x01(\x08\x42\x03\xe0\x41\x01\x1a\x41\n\x0eGitDestination\x12\x17\n\x0ftracking_branch\x18\x01 \x01(\t\x12\x16\n\x0e\x63ommit_message\x18\x02 \x01(\t\"E\n\nDataFormat\x12\x1b\n\x17\x44\x41TA_FORMAT_UNSPECIFIED\x10\x00\x12\x08\n\x04\x42LOB\x10\x01\x12\x10\n\x0cJSON_PACKAGE\x10\x04\"b\n\x13\x45xportAgentResponse\x12\x13\n\tagent_uri\x18\x01 \x01(\tH\x00\x12\x17\n\ragent_content\x18\x02 \x01(\x0cH\x00\x12\x14\n\ncommit_sha\x18\x03 \x01(\tH\x00\x42\x07\n\x05\x61gent\"\xa0\x03\n\x13RestoreAgentRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\x12\x13\n\tagent_uri\x18\x02 \x01(\tH\x00\x12\x17\n\ragent_content\x18\x03 \x01(\x0cH\x00\x12R\n\ngit_source\x18\x06 \x01(\x0b\x32<.google.cloud.dialogflow.cx.v3.RestoreAgentRequest.GitSourceH\x00\x12X\n\x0erestore_option\x18\x05 \x01(\x0e\x32@.google.cloud.dialogflow.cx.v3.RestoreAgentRequest.RestoreOption\x1a$\n\tGitSource\x12\x17\n\x0ftracking_branch\x18\x01 \x01(\t\"G\n\rRestoreOption\x12\x1e\n\x1aRESTORE_OPTION_UNSPECIFIED\x10\x00\x12\x08\n\x04KEEP\x10\x01\x12\x0c\n\x08\x46\x41LLBACK\x10\x02\x42\x07\n\x05\x61gent\"d\n\x14ValidateAgentRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\"\x7f\n\x1fGetAgentValidationResultRequest\x12\x45\n\x04name\x18\x01 \x01(\tB7\xe0\x41\x02\xfa\x41\x31\n/dialogflow.googleapis.com/AgentValidationResult\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\"\xfa\x01\n\x15\x41gentValidationResult\x12\x0c\n\x04name\x18\x01 \x01(\t\x12T\n\x17\x66low_validation_results\x18\x02 \x03(\x0b\x32\x33.google.cloud.dialogflow.cx.v3.FlowValidationResult:}\xea\x41z\n/dialogflow.googleapis.com/AgentValidationResult\x12Gprojects/{project}/locations/{location}/agents/{agent}/validationResult\"\x83\x01\n\x1cGetGenerativeSettingsRequest\x12G\n\x04name\x18\x01 \x01(\tB9\xe0\x41\x02\xfa\x41\x33\n1dialogflow.googleapis.com/AgentGenerativeSettings\x12\x1a\n\rlanguage_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\xac\x01\n\x1fUpdateGenerativeSettingsRequest\x12S\n\x13generative_settings\x18\x01 \x01(\x0b\x32\x31.google.cloud.dialogflow.cx.v3.GenerativeSettingsB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x32\xa2\x12\n\x06\x41gents\x12\xae\x01\n\nListAgents\x12\x30.google.cloud.dialogflow.cx.v3.ListAgentsRequest\x1a\x31.google.cloud.dialogflow.cx.v3.ListAgentsResponse\";\xda\x41\x06parent\x82\xd3\xe4\x93\x02,\x12*/v3/{parent=projects/*/locations/*}/agents\x12\x9b\x01\n\x08GetAgent\x12..google.cloud.dialogflow.cx.v3.GetAgentRequest\x1a$.google.cloud.dialogflow.cx.v3.Agent\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v3/{name=projects/*/locations/*/agents/*}\x12\xb0\x01\n\x0b\x43reateAgent\x12\x31.google.cloud.dialogflow.cx.v3.CreateAgentRequest\x1a$.google.cloud.dialogflow.cx.v3.Agent\"H\xda\x41\x0cparent,agent\x82\xd3\xe4\x93\x02\x33\"*/v3/{parent=projects/*/locations/*}/agents:\x05\x61gent\x12\xbb\x01\n\x0bUpdateAgent\x12\x31.google.cloud.dialogflow.cx.v3.UpdateAgentRequest\x1a$.google.cloud.dialogflow.cx.v3.Agent\"S\xda\x41\x11\x61gent,update_mask\x82\xd3\xe4\x93\x02\x39\x32\x30/v3/{agent.name=projects/*/locations/*/agents/*}:\x05\x61gent\x12\x93\x01\n\x0b\x44\x65leteAgent\x12\x31.google.cloud.dialogflow.cx.v3.DeleteAgentRequest\x1a\x16.google.protobuf.Empty\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,**/v3/{name=projects/*/locations/*/agents/*}\x12\xcd\x01\n\x0b\x45xportAgent\x12\x31.google.cloud.dialogflow.cx.v3.ExportAgentRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41-\n\x13\x45xportAgentResponse\x12\x16google.protobuf.Struct\x82\xd3\xe4\x93\x02\x36\"1/v3/{name=projects/*/locations/*/agents/*}:export:\x01*\x12\xd2\x01\n\x0cRestoreAgent\x12\x32.google.cloud.dialogflow.cx.v3.RestoreAgentRequest\x1a\x1d.google.longrunning.Operation\"o\xca\x41/\n\x15google.protobuf.Empty\x12\x16google.protobuf.Struct\x82\xd3\xe4\x93\x02\x37\"2/v3/{name=projects/*/locations/*/agents/*}:restore:\x01*\x12\xba\x01\n\rValidateAgent\x12\x33.google.cloud.dialogflow.cx.v3.ValidateAgentRequest\x1a\x34.google.cloud.dialogflow.cx.v3.AgentValidationResult\">\x82\xd3\xe4\x93\x02\x38\"3/v3/{name=projects/*/locations/*/agents/*}:validate:\x01*\x12\xdc\x01\n\x18GetAgentValidationResult\x12>.google.cloud.dialogflow.cx.v3.GetAgentValidationResultRequest\x1a\x34.google.cloud.dialogflow.cx.v3.AgentValidationResult\"J\xda\x41\x04name\x82\xd3\xe4\x93\x02=\x12;/v3/{name=projects/*/locations/*/agents/*/validationResult}\x12\xe3\x01\n\x15GetGenerativeSettings\x12;.google.cloud.dialogflow.cx.v3.GetGenerativeSettingsRequest\x1a\x31.google.cloud.dialogflow.cx.v3.GenerativeSettings\"Z\xda\x41\x12name,language_code\x82\xd3\xe4\x93\x02?\x12=/v3/{name=projects/*/locations/*/agents/*/generativeSettings}\x12\xa0\x02\n\x18UpdateGenerativeSettings\x12>.google.cloud.dialogflow.cx.v3.UpdateGenerativeSettingsRequest\x1a\x31.google.cloud.dialogflow.cx.v3.GenerativeSettings\"\x90\x01\xda\x41\x1fgenerative_settings,update_mask\x82\xd3\xe4\x93\x02h2Q/v3/{generative_settings.name=projects/*/locations/*/agents/*/generativeSettings}:\x13generative_settings\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xb0\x01\n!com.google.cloud.dialogflow.cx.v3B\nAgentProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    ["google.cloud.dialogflow.cx.v3.AdvancedSettings", "google/cloud/dialogflow/cx/v3/advanced_settings.proto"],
    ["google.cloud.dialogflow.cx.v3.TextToSpeechSettings", "google/cloud/dialogflow/cx/v3/audio_config.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.dialogflow.cx.v3.FlowValidationResult", "google/cloud/dialogflow/cx/v3/flow.proto"],
    ["google.cloud.dialogflow.cx.v3.GenerativeSettings", "google/cloud/dialogflow/cx/v3/generative_settings.proto"],
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
          SpeechToTextSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SpeechToTextSettings").msgclass
          Agent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Agent").msgclass
          Agent::GitIntegrationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Agent.GitIntegrationSettings").msgclass
          Agent::GitIntegrationSettings::GithubSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Agent.GitIntegrationSettings.GithubSettings").msgclass
          Agent::GenAppBuilderSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Agent.GenAppBuilderSettings").msgclass
          Agent::AnswerFeedbackSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Agent.AnswerFeedbackSettings").msgclass
          ListAgentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListAgentsRequest").msgclass
          ListAgentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListAgentsResponse").msgclass
          GetAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetAgentRequest").msgclass
          CreateAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateAgentRequest").msgclass
          UpdateAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateAgentRequest").msgclass
          DeleteAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteAgentRequest").msgclass
          ExportAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ExportAgentRequest").msgclass
          ExportAgentRequest::GitDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ExportAgentRequest.GitDestination").msgclass
          ExportAgentRequest::DataFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ExportAgentRequest.DataFormat").enummodule
          ExportAgentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ExportAgentResponse").msgclass
          RestoreAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RestoreAgentRequest").msgclass
          RestoreAgentRequest::GitSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RestoreAgentRequest.GitSource").msgclass
          RestoreAgentRequest::RestoreOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RestoreAgentRequest.RestoreOption").enummodule
          ValidateAgentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ValidateAgentRequest").msgclass
          GetAgentValidationResultRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetAgentValidationResultRequest").msgclass
          AgentValidationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AgentValidationResult").msgclass
          GetGenerativeSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetGenerativeSettingsRequest").msgclass
          UpdateGenerativeSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateGenerativeSettingsRequest").msgclass
        end
      end
    end
  end
end
