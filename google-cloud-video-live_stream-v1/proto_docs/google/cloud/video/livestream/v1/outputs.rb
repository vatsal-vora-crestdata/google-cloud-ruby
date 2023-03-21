# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Video
      module LiveStream
        module V1
          # Encoding of an input element such as an audio, video, or text track.
          # Elementary streams must be packaged before mapping and sharing between
          # different output formats.
          # @!attribute [rw] key
          #   @return [::String]
          #     A unique key for this elementary stream.
          # @!attribute [rw] video_stream
          #   @return [::Google::Cloud::Video::LiveStream::V1::VideoStream]
          #     Encoding of a video stream.
          # @!attribute [rw] audio_stream
          #   @return [::Google::Cloud::Video::LiveStream::V1::AudioStream]
          #     Encoding of an audio stream.
          # @!attribute [rw] text_stream
          #   @return [::Google::Cloud::Video::LiveStream::V1::TextStream]
          #     Encoding of a text stream. For example, closed captions or subtitles.
          class ElementaryStream
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Multiplexing settings for output stream.
          # @!attribute [rw] key
          #   @return [::String]
          #     A unique key for this multiplexed stream.
          # @!attribute [rw] container
          #   @return [::String]
          #     The container format. The default is `fmp4`.
          #
          #     Supported container formats:
          #
          #     - `fmp4` - the corresponding file extension is `.m4s`
          #     - `ts` - the corresponding file extension is `.ts`
          # @!attribute [rw] elementary_streams
          #   @return [::Array<::String>]
          #     List of `ElementaryStream`
          #     {::Google::Cloud::Video::LiveStream::V1::ElementaryStream#key key}s multiplexed
          #     in this stream.
          #
          #     - For `fmp4` container, must contain either one video or one audio stream.
          #     - For `ts` container, must contain exactly one audio stream and up to one
          #     video stream.
          # @!attribute [rw] segment_settings
          #   @return [::Google::Cloud::Video::LiveStream::V1::SegmentSettings]
          #     Segment settings for `fmp4` and `ts`.
          # @!attribute [rw] encryption_id
          #   @return [::String]
          #     Identifier of the encryption configuration to use. If omitted, output
          #     will be unencrypted.
          class MuxStream
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Manifest configuration.
          # @!attribute [rw] file_name
          #   @return [::String]
          #     The name of the generated file. The default is `manifest` with the
          #     extension suffix corresponding to the `Manifest`
          #     {::Google::Cloud::Video::LiveStream::V1::Manifest#type type}. If multiple
          #     manifests are added to the channel, each must have a unique file name.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Video::LiveStream::V1::Manifest::ManifestType]
          #     Required. Type of the manifest, can be `HLS` or `DASH`.
          # @!attribute [rw] mux_streams
          #   @return [::Array<::String>]
          #     Required. List of `MuxStream`
          #     {::Google::Cloud::Video::LiveStream::V1::MuxStream#key key}s that should appear
          #     in this manifest.
          #
          #     - For HLS, either `fmp4` or `ts` mux streams can be specified but not
          #     mixed.
          #     - For DASH, only `fmp4` mux streams can be specified.
          # @!attribute [rw] max_segment_count
          #   @return [::Integer]
          #     Maximum number of segments that this manifest holds. Once the manifest
          #     reaches this maximum number of segments, whenever a new segment is added to
          #     the manifest, the oldest segment will be removed from the manifest.
          #     The minimum value is 3 and the default value is 5.
          # @!attribute [rw] segment_keep_duration
          #   @return [::Google::Protobuf::Duration]
          #     How long to keep a segment on the output Google Cloud Storage bucket after
          #     it is removed from the manifest. This field should be large enough to cover
          #     the manifest propagation delay. Otherwise, a player could receive 404
          #     errors while accessing segments which are listed in the manifest that the
          #     player has, but were already deleted from the output Google Cloud Storage
          #     bucket. Default value is `60s`.
          # @!attribute [rw] use_timecode_as_timeline
          #   @return [::Boolean]
          #     Whether to use the timecode, as specified in timecode config, when setting:
          #
          #     - `availabilityStartTime` attribute in DASH manifests.
          #     - `#EXT-X-PROGRAM-DATE-TIME` tag in HLS manifests.
          #
          #     If false, ignore the input timecode and use the time from system clock
          #     when the manifest is first generated. This is the default behavior.
          class Manifest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The manifest type can be either `HLS` or `DASH`.
            module ManifestType
              # The manifest type is not specified.
              MANIFEST_TYPE_UNSPECIFIED = 0

              # Create an `HLS` manifest. The corresponding file extension is `.m3u8`.
              HLS = 1

              # Create a `DASH` manifest. The corresponding file extension is `.mpd`.
              DASH = 2
            end
          end

          # Sprite sheet configuration.
          # @!attribute [rw] format
          #   @return [::String]
          #     Format type. The default is `jpeg`.
          #
          #     Supported formats:
          #
          #     - `jpeg`
          # @!attribute [rw] file_prefix
          #   @return [::String]
          #     Required. File name prefix for the generated sprite sheets. If multiple
          #     sprite sheets are added to the channel, each must have a unique file
          #     prefix.
          #     Each sprite sheet has an incremental 10-digit zero-padded suffix starting
          #     from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
          # @!attribute [rw] sprite_width_pixels
          #   @return [::Integer]
          #     Required. The width of the sprite in pixels. Must be an even integer.
          # @!attribute [rw] sprite_height_pixels
          #   @return [::Integer]
          #     Required. The height of the sprite in pixels. Must be an even integer.
          # @!attribute [rw] column_count
          #   @return [::Integer]
          #     The maximum number of sprites per row in a sprite sheet. Valid range is
          #     [1, 10] and the default value is 1.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     The maximum number of rows per sprite sheet. When the sprite sheet is full,
          #     a new sprite sheet is created. Valid range is [1, 10] and the default value
          #     is 1.
          # @!attribute [rw] interval
          #   @return [::Google::Protobuf::Duration]
          #     Create sprites at regular intervals. Valid range is [1 second, 1 hour] and
          #     the default value is `10s`.
          # @!attribute [rw] quality
          #   @return [::Integer]
          #     The quality of the generated sprite sheet. Enter a value between 1
          #     and 100, where 1 is the lowest quality and 100 is the highest quality.
          #     The default is 100. A high quality value corresponds to a low image data
          #     compression ratio.
          class SpriteSheet
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Preprocessing configurations.
          # @!attribute [rw] audio
          #   @return [::Google::Cloud::Video::LiveStream::V1::PreprocessingConfig::Audio]
          #     Audio preprocessing configuration.
          # @!attribute [rw] crop
          #   @return [::Google::Cloud::Video::LiveStream::V1::PreprocessingConfig::Crop]
          #     Specify the video cropping configuration.
          # @!attribute [rw] pad
          #   @return [::Google::Cloud::Video::LiveStream::V1::PreprocessingConfig::Pad]
          #     Specify the video pad filter configuration.
          class PreprocessingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Audio preprocessing configuration.
            # @!attribute [rw] lufs
            #   @return [::Float]
            #     Specify audio loudness normalization in loudness units relative to full
            #     scale (LUFS). Enter a value between -24 and 0 according to the following:
            #
            #     - -24 is the Advanced Television Systems Committee (ATSC A/85)
            #     - -23 is the EU R128 broadcast standard
            #     - -19 is the prior standard for online mono audio
            #     - -18 is the ReplayGain standard
            #     - -16 is the prior standard for stereo audio
            #     - -14 is the new online audio standard recommended by Spotify, as well as
            #     Amazon Echo
            #     - 0 disables normalization. The default is 0.
            class Audio
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Video cropping configuration for the input video. The cropped input video
            # is scaled to match the output resolution.
            # @!attribute [rw] top_pixels
            #   @return [::Integer]
            #     The number of pixels to crop from the top. The default is 0.
            # @!attribute [rw] bottom_pixels
            #   @return [::Integer]
            #     The number of pixels to crop from the bottom. The default is 0.
            # @!attribute [rw] left_pixels
            #   @return [::Integer]
            #     The number of pixels to crop from the left. The default is 0.
            # @!attribute [rw] right_pixels
            #   @return [::Integer]
            #     The number of pixels to crop from the right. The default is 0.
            class Crop
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Pad filter configuration for the input video. The padded input video
            # is scaled after padding with black to match the output resolution.
            # @!attribute [rw] top_pixels
            #   @return [::Integer]
            #     The number of pixels to add to the top. The default is 0.
            # @!attribute [rw] bottom_pixels
            #   @return [::Integer]
            #     The number of pixels to add to the bottom. The default is 0.
            # @!attribute [rw] left_pixels
            #   @return [::Integer]
            #     The number of pixels to add to the left. The default is 0.
            # @!attribute [rw] right_pixels
            #   @return [::Integer]
            #     The number of pixels to add to the right. The default is 0.
            class Pad
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Video stream resource.
          # @!attribute [rw] h264
          #   @return [::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings]
          #     H264 codec settings.
          class VideoStream
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # H264 codec settings.
            # @!attribute [rw] width_pixels
            #   @return [::Integer]
            #     Required. The width of the video in pixels. Must be an even integer.
            #     Valid range is [320, 1920].
            # @!attribute [rw] height_pixels
            #   @return [::Integer]
            #     Required. The height of the video in pixels. Must be an even integer.
            #     Valid range is [180, 1080].
            # @!attribute [rw] frame_rate
            #   @return [::Float]
            #     Required. The target video frame rate in frames per second (FPS). Must be
            #     less than or equal to 60. Will default to the input frame rate if larger
            #     than the input frame rate. The API will generate an output FPS that is
            #     divisible by the input FPS, and smaller or equal to the target FPS. See
            #     [Calculating frame
            #     rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for
            #     more information.
            # @!attribute [rw] bitrate_bps
            #   @return [::Integer]
            #     Required. The video bitrate in bits per second. Minimum value is 10,000.
            #
            #     - For SD resolution (< 720p), must be <= 3,000,000 (3 Mbps).
            #     - For HD resolution (<= 1080p), must be <= 15,000,000 (15 Mbps).
            # @!attribute [rw] allow_open_gop
            #   @return [::Boolean]
            #     Specifies whether an open Group of Pictures (GOP) structure should be
            #     allowed or not. The default is `false`.
            # @!attribute [rw] gop_frame_count
            #   @return [::Integer]
            #     Select the GOP size based on the specified frame count.
            #     If GOP frame count is set instead of GOP duration, GOP duration will be
            #     calculated by `gopFrameCount`/`frameRate`. The calculated GOP duration
            #     must satisfy the limitations on `gopDuration` as well.
            #     Valid range is [60, 600].
            # @!attribute [rw] gop_duration
            #   @return [::Google::Protobuf::Duration]
            #     Select the GOP size based on the specified duration. The default is
            #     `2s`. Note that `gopDuration` must be less than or equal to
            #     {::Google::Cloud::Video::LiveStream::V1::SegmentSettings#segment_duration segment_duration},
            #     and
            #     {::Google::Cloud::Video::LiveStream::V1::SegmentSettings#segment_duration segment_duration}
            #     must be divisible by `gopDuration`. Valid range is [2s, 20s].
            #
            #     All video streams in the same channel must have the same GOP size.
            # @!attribute [rw] vbv_size_bits
            #   @return [::Integer]
            #     Size of the Video Buffering Verifier (VBV) buffer in bits. Must be
            #     greater than zero. The default is equal to
            #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings#bitrate_bps bitrate_bps}.
            # @!attribute [rw] vbv_fullness_bits
            #   @return [::Integer]
            #     Initial fullness of the Video Buffering Verifier (VBV) buffer in bits.
            #     Must be greater than zero. The default is equal to 90% of
            #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings#vbv_size_bits vbv_size_bits}.
            # @!attribute [rw] entropy_coder
            #   @return [::String]
            #     The entropy coder to use. The default is `cabac`.
            #
            #     Supported entropy coders:
            #
            #     - `cavlc`
            #     - `cabac`
            # @!attribute [rw] b_pyramid
            #   @return [::Boolean]
            #     Allow B-pyramid for reference frame selection. This may not be supported
            #     on all decoders. The default is `false`.
            # @!attribute [rw] b_frame_count
            #   @return [::Integer]
            #     The number of consecutive B-frames. Must be greater than or equal to
            #     zero. Must be less than
            #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings#gop_frame_count gop_frame_count}
            #     if set. The default is 0.
            # @!attribute [rw] aq_strength
            #   @return [::Float]
            #     Specify the intensity of the adaptive quantizer (AQ). Must be between 0
            #     and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A
            #     higher value equals a lower bitrate but smoother image. The default is 0.
            # @!attribute [rw] profile
            #   @return [::String]
            #     Enforces the specified codec profile. The following profiles are
            #     supported:
            #
            #     *   `baseline`
            #     *   `main` (default)
            #     *   `high`
            #
            #     The available options are [FFmpeg-compatible Profile
            #     Options](https://trac.ffmpeg.org/wiki/Encode/H.264#Profile).
            #     Note that certain values for this field may cause the
            #     transcoder to override other fields you set in the
            #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings H264CodecSettings}
            #     message.
            # @!attribute [rw] tune
            #   @return [::String]
            #     Enforces the specified codec tune. The available options are
            #     [FFmpeg-compatible Encode
            #     Options](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune)
            #     Note that certain values for this field may cause the transcoder to
            #     override other fields you set in the
            #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings H264CodecSettings}
            #     message.
            class H264CodecSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Audio stream resource.
          # @!attribute [rw] transmux
          #   @return [::Boolean]
          #     Specifies whether pass through (transmuxing) is enabled or not.
          #     If set to `true`, the rest of the settings, other than `mapping`, will be
          #     ignored. The default is `false`.
          # @!attribute [rw] codec
          #   @return [::String]
          #     The codec for this audio stream. The default is `aac`.
          #
          #     Supported audio codecs:
          #
          #     - `aac`
          # @!attribute [rw] bitrate_bps
          #   @return [::Integer]
          #     Required. Audio bitrate in bits per second. Must be between 1 and
          #     10,000,000.
          # @!attribute [rw] channel_count
          #   @return [::Integer]
          #     Number of audio channels. Must be between 1 and 6. The default is 2.
          # @!attribute [rw] channel_layout
          #   @return [::Array<::String>]
          #     A list of channel names specifying layout of the audio channels.
          #     This only affects the metadata embedded in the container headers, if
          #     supported by the specified format. The default is `[fl, fr]`.
          #
          #     Supported channel names:
          #
          #     - `fl` - Front left channel
          #     - `fr` - Front right channel
          #     - `sl` - Side left channel
          #     - `sr` - Side right channel
          #     - `fc` - Front center channel
          #     - `lfe` - Low frequency
          # @!attribute [rw] mapping
          #   @return [::Array<::Google::Cloud::Video::LiveStream::V1::AudioStream::AudioMapping>]
          #     The mapping for the input streams and audio channels.
          # @!attribute [rw] sample_rate_hertz
          #   @return [::Integer]
          #     The audio sample rate in Hertz. The default is 48000 Hertz.
          class AudioStream
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The mapping for the input streams and audio channels.
            # @!attribute [rw] input_key
            #   @return [::String]
            #     Required. The `Channel`
            #     {::Google::Cloud::Video::LiveStream::V1::InputAttachment#key InputAttachment.key}
            #     that identifies the input that this audio mapping applies to. If an
            #     active input doesn't have an audio mapping, the primary audio track in
            #     the input stream will be selected.
            # @!attribute [rw] input_track
            #   @return [::Integer]
            #     Required. The zero-based index of the track in the input stream.
            #     All {::Google::Cloud::Video::LiveStream::V1::AudioStream#mapping mapping}s in
            #     the same {::Google::Cloud::Video::LiveStream::V1::AudioStream AudioStream} must
            #     have the same input track.
            # @!attribute [rw] input_channel
            #   @return [::Integer]
            #     Required. The zero-based index of the channel in the input stream.
            # @!attribute [rw] output_channel
            #   @return [::Integer]
            #     Required. The zero-based index of the channel in the output audio stream.
            #     Must be consistent with the
            #     {::Google::Cloud::Video::LiveStream::V1::AudioStream::AudioMapping#input_channel input_channel}.
            # @!attribute [rw] gain_db
            #   @return [::Float]
            #     Audio volume control in dB. Negative values decrease volume,
            #     positive values increase. The default is 0.
            class AudioMapping
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Encoding of a text stream. For example, closed captions or subtitles.
          # @!attribute [rw] codec
          #   @return [::String]
          #     Required. The codec for this text stream.
          #
          #     Supported text codecs:
          #
          #     - `cea608`
          #     - `cea708`
          class TextStream
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Segment settings for `fmp4` and `ts`.
          # @!attribute [rw] segment_duration
          #   @return [::Google::Protobuf::Duration]
          #     Duration of the segments in seconds. The default is `6s`. Note that
          #     `segmentDuration` must be greater than or equal to
          #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings#gop_duration gop_duration},
          #     and `segmentDuration` must be divisible by
          #     {::Google::Cloud::Video::LiveStream::V1::VideoStream::H264CodecSettings#gop_duration gop_duration}.
          #     Valid range is [2s, 20s].
          #
          #     All {::Google::Cloud::Video::LiveStream::V1::Manifest#mux_streams mux_streams} in
          #     the same manifest must have the same segment duration.
          class SegmentSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Timecode configuration.
          # @!attribute [rw] source
          #   @return [::Google::Cloud::Video::LiveStream::V1::TimecodeConfig::TimecodeSource]
          #     The source of the timecode that will later be used in outputs/manifests.
          #     It determines the initial timecode/timestamp (first frame) of output
          #     streams.
          # @!attribute [rw] utc_offset
          #   @return [::Google::Protobuf::Duration]
          #     UTC offset. Must be whole seconds, between -18 hours and +18 hours.
          # @!attribute [rw] time_zone
          #   @return [::Google::Type::TimeZone]
          #     Time zone e.g. "America/Los_Angeles".
          class TimecodeConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The source of timecode.
            module TimecodeSource
              # The timecode source is not specified.
              TIMECODE_SOURCE_UNSPECIFIED = 0

              # Use input media timestamp.
              MEDIA_TIMESTAMP = 1

              # Use input embedded timecode e.g. picture timing SEI message.
              EMBEDDED_TIMECODE = 2
            end
          end
        end
      end
    end
  end
end
