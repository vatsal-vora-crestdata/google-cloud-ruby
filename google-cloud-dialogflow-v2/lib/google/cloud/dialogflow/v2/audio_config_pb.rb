# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/audio_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'


descriptor_data = "\n-google/cloud/dialogflow/v2/audio_config.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\"9\n\rSpeechContext\x12\x14\n\x07phrases\x18\x01 \x03(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x62oost\x18\x02 \x01(\x02\x42\x03\xe0\x41\x01\"\x92\x01\n\x0eSpeechWordInfo\x12\x0c\n\x04word\x18\x03 \x01(\t\x12/\n\x0cstart_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12-\n\nend_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x12\n\nconfidence\x18\x04 \x01(\x02\"\xd0\x03\n\x10InputAudioConfig\x12\x46\n\x0e\x61udio_encoding\x18\x01 \x01(\x0e\x32).google.cloud.dialogflow.v2.AudioEncodingB\x03\xe0\x41\x02\x12\x1e\n\x11sample_rate_hertz\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x10\x65nable_word_info\x18\r \x01(\x08\x12\x18\n\x0cphrase_hints\x18\x04 \x03(\tB\x02\x18\x01\x12\x42\n\x0fspeech_contexts\x18\x0b \x03(\x0b\x32).google.cloud.dialogflow.v2.SpeechContext\x12\r\n\x05model\x18\x07 \x01(\t\x12\x45\n\rmodel_variant\x18\n \x01(\x0e\x32..google.cloud.dialogflow.v2.SpeechModelVariant\x12\x18\n\x10single_utterance\x18\x08 \x01(\x08\x12*\n\"disable_no_speech_recognized_event\x18\x0e \x01(\x08\x12$\n\x1c\x65nable_automatic_punctuation\x18\x11 \x01(\x08\"p\n\x14VoiceSelectionParams\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x0bssml_gender\x18\x02 \x01(\x0e\x32+.google.cloud.dialogflow.v2.SsmlVoiceGenderB\x03\xe0\x41\x01\"\xcc\x01\n\x16SynthesizeSpeechConfig\x12\x1a\n\rspeaking_rate\x18\x01 \x01(\x01\x42\x03\xe0\x41\x01\x12\x12\n\x05pitch\x18\x02 \x01(\x01\x42\x03\xe0\x41\x01\x12\x1b\n\x0evolume_gain_db\x18\x03 \x01(\x01\x42\x03\xe0\x41\x01\x12\x1f\n\x12\x65\x66\x66\x65\x63ts_profile_id\x18\x05 \x03(\tB\x03\xe0\x41\x01\x12\x44\n\x05voice\x18\x04 \x01(\x0b\x32\x30.google.cloud.dialogflow.v2.VoiceSelectionParamsB\x03\xe0\x41\x01\"\xd2\x01\n\x11OutputAudioConfig\x12L\n\x0e\x61udio_encoding\x18\x01 \x01(\x0e\x32/.google.cloud.dialogflow.v2.OutputAudioEncodingB\x03\xe0\x41\x02\x12\x19\n\x11sample_rate_hertz\x18\x02 \x01(\x05\x12T\n\x18synthesize_speech_config\x18\x03 \x01(\x0b\x32\x32.google.cloud.dialogflow.v2.SynthesizeSpeechConfig\"U\n\x13TelephonyDtmfEvents\x12>\n\x0b\x64tmf_events\x18\x01 \x03(\x0e\x32).google.cloud.dialogflow.v2.TelephonyDtmf\"\x98\x01\n\x12SpeechToTextConfig\x12L\n\x14speech_model_variant\x18\x01 \x01(\x0e\x32..google.cloud.dialogflow.v2.SpeechModelVariant\x12\r\n\x05model\x18\x02 \x01(\t\x12%\n\x1duse_timeout_based_endpointing\x18\x0b \x01(\x08*\x94\x02\n\rTelephonyDtmf\x12\x1e\n\x1aTELEPHONY_DTMF_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44TMF_ONE\x10\x01\x12\x0c\n\x08\x44TMF_TWO\x10\x02\x12\x0e\n\nDTMF_THREE\x10\x03\x12\r\n\tDTMF_FOUR\x10\x04\x12\r\n\tDTMF_FIVE\x10\x05\x12\x0c\n\x08\x44TMF_SIX\x10\x06\x12\x0e\n\nDTMF_SEVEN\x10\x07\x12\x0e\n\nDTMF_EIGHT\x10\x08\x12\r\n\tDTMF_NINE\x10\t\x12\r\n\tDTMF_ZERO\x10\n\x12\n\n\x06\x44TMF_A\x10\x0b\x12\n\n\x06\x44TMF_B\x10\x0c\x12\n\n\x06\x44TMF_C\x10\r\x12\n\n\x06\x44TMF_D\x10\x0e\x12\r\n\tDTMF_STAR\x10\x0f\x12\x0e\n\nDTMF_POUND\x10\x10*\xfb\x01\n\rAudioEncoding\x12\x1e\n\x1a\x41UDIO_ENCODING_UNSPECIFIED\x10\x00\x12\x1c\n\x18\x41UDIO_ENCODING_LINEAR_16\x10\x01\x12\x17\n\x13\x41UDIO_ENCODING_FLAC\x10\x02\x12\x18\n\x14\x41UDIO_ENCODING_MULAW\x10\x03\x12\x16\n\x12\x41UDIO_ENCODING_AMR\x10\x04\x12\x19\n\x15\x41UDIO_ENCODING_AMR_WB\x10\x05\x12\x1b\n\x17\x41UDIO_ENCODING_OGG_OPUS\x10\x06\x12)\n%AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE\x10\x07*v\n\x12SpeechModelVariant\x12$\n SPEECH_MODEL_VARIANT_UNSPECIFIED\x10\x00\x12\x16\n\x12USE_BEST_AVAILABLE\x10\x01\x12\x10\n\x0cUSE_STANDARD\x10\x02\x12\x10\n\x0cUSE_ENHANCED\x10\x03*\x8d\x01\n\x0fSsmlVoiceGender\x12!\n\x1dSSML_VOICE_GENDER_UNSPECIFIED\x10\x00\x12\x1a\n\x16SSML_VOICE_GENDER_MALE\x10\x01\x12\x1c\n\x18SSML_VOICE_GENDER_FEMALE\x10\x02\x12\x1d\n\x19SSML_VOICE_GENDER_NEUTRAL\x10\x03*\xec\x01\n\x13OutputAudioEncoding\x12%\n!OUTPUT_AUDIO_ENCODING_UNSPECIFIED\x10\x00\x12#\n\x1fOUTPUT_AUDIO_ENCODING_LINEAR_16\x10\x01\x12\x1d\n\x19OUTPUT_AUDIO_ENCODING_MP3\x10\x02\x12%\n!OUTPUT_AUDIO_ENCODING_MP3_64_KBPS\x10\x04\x12\"\n\x1eOUTPUT_AUDIO_ENCODING_OGG_OPUS\x10\x03\x12\x1f\n\x1bOUTPUT_AUDIO_ENCODING_MULAW\x10\x05\x42\xd6\x02\n\x1e\x63om.google.cloud.dialogflow.v2B\x10\x41udioConfigProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2\xea\x41U\n\x1b\x61utoml.googleapis.com/Model\x12\x36projects/{project}/locations/{location}/models/{model}\xea\x41\x62\n\x1fspeech.googleapis.com/PhraseSet\x12?projects/{project}/locations/{location}/phraseSets/{phrase_set}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
      module V2
        SpeechContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechContext").msgclass
        SpeechWordInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechWordInfo").msgclass
        InputAudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.InputAudioConfig").msgclass
        VoiceSelectionParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.VoiceSelectionParams").msgclass
        SynthesizeSpeechConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SynthesizeSpeechConfig").msgclass
        OutputAudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.OutputAudioConfig").msgclass
        TelephonyDtmfEvents = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.TelephonyDtmfEvents").msgclass
        SpeechToTextConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechToTextConfig").msgclass
        TelephonyDtmf = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.TelephonyDtmf").enummodule
        AudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AudioEncoding").enummodule
        SpeechModelVariant = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechModelVariant").enummodule
        SsmlVoiceGender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SsmlVoiceGender").enummodule
        OutputAudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.OutputAudioEncoding").enummodule
      end
    end
  end
end
