# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/livestream/v1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/video/livestream/v1/outputs_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/video/livestream/v1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.video.livestream.v1.Input" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :type, :enum, 5, "google.cloud.video.livestream.v1.Input.Type"
      optional :tier, :enum, 14, "google.cloud.video.livestream.v1.Input.Tier"
      optional :uri, :string, 6
      optional :preprocessing_config, :message, 9, "google.cloud.video.livestream.v1.PreprocessingConfig"
      optional :security_rules, :message, 12, "google.cloud.video.livestream.v1.Input.SecurityRule"
      optional :input_stream_property, :message, 15, "google.cloud.video.livestream.v1.InputStreamProperty"
    end
    add_message "google.cloud.video.livestream.v1.Input.SecurityRule" do
      repeated :ip_ranges, :string, 1
    end
    add_enum "google.cloud.video.livestream.v1.Input.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :RTMP_PUSH, 1
      value :SRT_PUSH, 2
    end
    add_enum "google.cloud.video.livestream.v1.Input.Tier" do
      value :TIER_UNSPECIFIED, 0
      value :SD, 1
      value :HD, 2
      value :UHD, 3
    end
    add_message "google.cloud.video.livestream.v1.Channel" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      repeated :input_attachments, :message, 16, "google.cloud.video.livestream.v1.InputAttachment"
      optional :active_input, :string, 6
      optional :output, :message, 9, "google.cloud.video.livestream.v1.Channel.Output"
      repeated :elementary_streams, :message, 10, "google.cloud.video.livestream.v1.ElementaryStream"
      repeated :mux_streams, :message, 11, "google.cloud.video.livestream.v1.MuxStream"
      repeated :manifests, :message, 12, "google.cloud.video.livestream.v1.Manifest"
      repeated :sprite_sheets, :message, 13, "google.cloud.video.livestream.v1.SpriteSheet"
      optional :streaming_state, :enum, 14, "google.cloud.video.livestream.v1.Channel.StreamingState"
      optional :streaming_error, :message, 18, "google.rpc.Status"
      optional :log_config, :message, 19, "google.cloud.video.livestream.v1.LogConfig"
      optional :timecode_config, :message, 21, "google.cloud.video.livestream.v1.TimecodeConfig"
      repeated :encryptions, :message, 24, "google.cloud.video.livestream.v1.Encryption"
      optional :input_config, :message, 25, "google.cloud.video.livestream.v1.InputConfig"
    end
    add_message "google.cloud.video.livestream.v1.Channel.Output" do
      optional :uri, :string, 1
    end
    add_enum "google.cloud.video.livestream.v1.Channel.StreamingState" do
      value :STREAMING_STATE_UNSPECIFIED, 0
      value :STREAMING, 1
      value :AWAITING_INPUT, 2
      value :STREAMING_ERROR, 4
      value :STREAMING_NO_INPUT, 5
      value :STOPPED, 6
      value :STARTING, 7
      value :STOPPING, 8
    end
    add_message "google.cloud.video.livestream.v1.InputConfig" do
      optional :input_switch_mode, :enum, 1, "google.cloud.video.livestream.v1.InputConfig.InputSwitchMode"
    end
    add_enum "google.cloud.video.livestream.v1.InputConfig.InputSwitchMode" do
      value :INPUT_SWITCH_MODE_UNSPECIFIED, 0
      value :FAILOVER_PREFER_PRIMARY, 1
      value :MANUAL, 3
    end
    add_message "google.cloud.video.livestream.v1.LogConfig" do
      optional :log_severity, :enum, 1, "google.cloud.video.livestream.v1.LogConfig.LogSeverity"
    end
    add_enum "google.cloud.video.livestream.v1.LogConfig.LogSeverity" do
      value :LOG_SEVERITY_UNSPECIFIED, 0
      value :OFF, 1
      value :DEBUG, 100
      value :INFO, 200
      value :WARNING, 400
      value :ERROR, 500
    end
    add_message "google.cloud.video.livestream.v1.InputStreamProperty" do
      optional :last_establish_time, :message, 1, "google.protobuf.Timestamp"
      repeated :video_streams, :message, 2, "google.cloud.video.livestream.v1.VideoStreamProperty"
      repeated :audio_streams, :message, 3, "google.cloud.video.livestream.v1.AudioStreamProperty"
    end
    add_message "google.cloud.video.livestream.v1.VideoStreamProperty" do
      optional :index, :int32, 1
      optional :video_format, :message, 2, "google.cloud.video.livestream.v1.VideoFormat"
    end
    add_message "google.cloud.video.livestream.v1.VideoFormat" do
      optional :codec, :string, 1
      optional :width_pixels, :int32, 2
      optional :height_pixels, :int32, 3
      optional :frame_rate, :double, 4
    end
    add_message "google.cloud.video.livestream.v1.AudioStreamProperty" do
      optional :index, :int32, 1
      optional :audio_format, :message, 2, "google.cloud.video.livestream.v1.AudioFormat"
    end
    add_message "google.cloud.video.livestream.v1.AudioFormat" do
      optional :codec, :string, 1
      optional :channel_count, :int32, 2
      repeated :channel_layout, :string, 3
    end
    add_message "google.cloud.video.livestream.v1.InputAttachment" do
      optional :key, :string, 1
      optional :input, :string, 2
      optional :automatic_failover, :message, 3, "google.cloud.video.livestream.v1.InputAttachment.AutomaticFailover"
    end
    add_message "google.cloud.video.livestream.v1.InputAttachment.AutomaticFailover" do
      repeated :input_keys, :string, 1
    end
    add_message "google.cloud.video.livestream.v1.Event" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :execute_now, :bool, 9
      optional :execution_time, :message, 10, "google.protobuf.Timestamp"
      optional :state, :enum, 11, "google.cloud.video.livestream.v1.Event.State"
      optional :error, :message, 12, "google.rpc.Status"
      oneof :task do
        optional :input_switch, :message, 5, "google.cloud.video.livestream.v1.Event.InputSwitchTask"
        optional :ad_break, :message, 6, "google.cloud.video.livestream.v1.Event.AdBreakTask"
        optional :return_to_program, :message, 13, "google.cloud.video.livestream.v1.Event.ReturnToProgramTask"
        optional :mute, :message, 15, "google.cloud.video.livestream.v1.Event.MuteTask"
        optional :unmute, :message, 16, "google.cloud.video.livestream.v1.Event.UnmuteTask"
      end
    end
    add_message "google.cloud.video.livestream.v1.Event.InputSwitchTask" do
      optional :input_key, :string, 1
    end
    add_message "google.cloud.video.livestream.v1.Event.AdBreakTask" do
      optional :duration, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.livestream.v1.Event.ReturnToProgramTask" do
    end
    add_message "google.cloud.video.livestream.v1.Event.MuteTask" do
      optional :duration, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.livestream.v1.Event.UnmuteTask" do
    end
    add_enum "google.cloud.video.livestream.v1.Event.State" do
      value :STATE_UNSPECIFIED, 0
      value :SCHEDULED, 1
      value :RUNNING, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
      value :PENDING, 5
      value :STOPPED, 6
    end
    add_message "google.cloud.video.livestream.v1.Encryption" do
      optional :id, :string, 1
      optional :drm_systems, :message, 3, "google.cloud.video.livestream.v1.Encryption.DrmSystems"
      oneof :secret_source do
        optional :secret_manager_key_source, :message, 7, "google.cloud.video.livestream.v1.Encryption.SecretManagerSource"
      end
      oneof :encryption_mode do
        optional :aes128, :message, 4, "google.cloud.video.livestream.v1.Encryption.Aes128Encryption"
        optional :sample_aes, :message, 5, "google.cloud.video.livestream.v1.Encryption.SampleAesEncryption"
        optional :mpeg_cenc, :message, 6, "google.cloud.video.livestream.v1.Encryption.MpegCommonEncryption"
      end
    end
    add_message "google.cloud.video.livestream.v1.Encryption.SecretManagerSource" do
      optional :secret_version, :string, 1
    end
    add_message "google.cloud.video.livestream.v1.Encryption.Widevine" do
    end
    add_message "google.cloud.video.livestream.v1.Encryption.Fairplay" do
    end
    add_message "google.cloud.video.livestream.v1.Encryption.Playready" do
    end
    add_message "google.cloud.video.livestream.v1.Encryption.Clearkey" do
    end
    add_message "google.cloud.video.livestream.v1.Encryption.DrmSystems" do
      optional :widevine, :message, 1, "google.cloud.video.livestream.v1.Encryption.Widevine"
      optional :fairplay, :message, 2, "google.cloud.video.livestream.v1.Encryption.Fairplay"
      optional :playready, :message, 3, "google.cloud.video.livestream.v1.Encryption.Playready"
      optional :clearkey, :message, 4, "google.cloud.video.livestream.v1.Encryption.Clearkey"
    end
    add_message "google.cloud.video.livestream.v1.Encryption.Aes128Encryption" do
    end
    add_message "google.cloud.video.livestream.v1.Encryption.SampleAesEncryption" do
    end
    add_message "google.cloud.video.livestream.v1.Encryption.MpegCommonEncryption" do
      optional :scheme, :string, 1
    end
  end
end

module Google
  module Cloud
    module Video
      module LiveStream
        module V1
          Input = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input").msgclass
          Input::SecurityRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input.SecurityRule").msgclass
          Input::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input.Type").enummodule
          Input::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input.Tier").enummodule
          Channel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Channel").msgclass
          Channel::Output = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Channel.Output").msgclass
          Channel::StreamingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Channel.StreamingState").enummodule
          InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputConfig").msgclass
          InputConfig::InputSwitchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputConfig.InputSwitchMode").enummodule
          LogConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.LogConfig").msgclass
          LogConfig::LogSeverity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.LogConfig.LogSeverity").enummodule
          InputStreamProperty = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputStreamProperty").msgclass
          VideoStreamProperty = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.VideoStreamProperty").msgclass
          VideoFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.VideoFormat").msgclass
          AudioStreamProperty = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.AudioStreamProperty").msgclass
          AudioFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.AudioFormat").msgclass
          InputAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputAttachment").msgclass
          InputAttachment::AutomaticFailover = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputAttachment.AutomaticFailover").msgclass
          Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event").msgclass
          Event::InputSwitchTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.InputSwitchTask").msgclass
          Event::AdBreakTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.AdBreakTask").msgclass
          Event::ReturnToProgramTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.ReturnToProgramTask").msgclass
          Event::MuteTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.MuteTask").msgclass
          Event::UnmuteTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.UnmuteTask").msgclass
          Event::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.State").enummodule
          Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption").msgclass
          Encryption::SecretManagerSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.SecretManagerSource").msgclass
          Encryption::Widevine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Widevine").msgclass
          Encryption::Fairplay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Fairplay").msgclass
          Encryption::Playready = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Playready").msgclass
          Encryption::Clearkey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Clearkey").msgclass
          Encryption::DrmSystems = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.DrmSystems").msgclass
          Encryption::Aes128Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Aes128Encryption").msgclass
          Encryption::SampleAesEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.SampleAesEncryption").msgclass
          Encryption::MpegCommonEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.MpegCommonEncryption").msgclass
        end
      end
    end
  end
end
