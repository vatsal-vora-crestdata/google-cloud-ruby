# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Bigquery
      module DataTransfer
        module V1
          # Represents preferences for sending email notifications for transfer run
          # events.
          # @!attribute [rw] enable_failure_email
          #   @return [::Boolean]
          #     If true, email notifications will be sent on transfer run failures.
          class EmailPreferences
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Options customizing the data transfer schedule.
          # @!attribute [rw] disable_auto_scheduling
          #   @return [::Boolean]
          #     If true, automatic scheduling of data transfer runs for this configuration
          #     will be disabled. The runs can be started on ad-hoc basis using
          #     StartManualTransferRuns API. When automatic scheduling is disabled, the
          #     TransferConfig.schedule field will be ignored.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Specifies time to start scheduling transfer runs. The first run will be
          #     scheduled at or after the start time according to a recurrence pattern
          #     defined in the schedule string. The start time can be changed at any
          #     moment. The time when a data transfer can be trigerred manually is not
          #     limited by this option.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Defines time to stop scheduling transfer runs. A transfer run cannot be
          #     scheduled at or after the end time. The end time can be changed at any
          #     moment. The time when a data transfer can be trigerred manually is not
          #     limited by this option.
          class ScheduleOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information about a user.
          # @!attribute [rw] email
          #   @return [::String]
          #     E-mail address of the user.
          class UserInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a data transfer configuration. A transfer configuration
          # contains all metadata needed to perform a data transfer. For example,
          # `destination_dataset_id` specifies where data should be stored.
          # When a new transfer configuration is created, the specified
          # `destination_dataset_id` is created when needed and shared with the
          # appropriate data source service account.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name of the transfer config.
          #     Transfer config names have the form either
          #     `projects/{project_id}/locations/{region}/transferConfigs/{config_id}` or
          #     `projects/{project_id}/transferConfigs/{config_id}`,
          #     where `config_id` is usually a UUID, even though it is not
          #     guaranteed or required. The name is ignored when creating a transfer
          #     config.
          # @!attribute [rw] destination_dataset_id
          #   @return [::String]
          #     The BigQuery target dataset id.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     User specified display name for the data transfer.
          # @!attribute [rw] data_source_id
          #   @return [::String]
          #     Data source ID. This cannot be changed once data transfer is created. The
          #     full list of available data source IDs can be returned through an API call:
          #     https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list
          # @!attribute [rw] params
          #   @return [::Google::Protobuf::Struct]
          #     Parameters specific to each data source. For more information see the
          #     bq tab in the 'Setting up a data transfer' section for each data source.
          #     For example the parameters for Cloud Storage transfers are listed here:
          #     https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
          # @!attribute [rw] schedule
          #   @return [::String]
          #     Data transfer schedule.
          #     If the data source does not support a custom schedule, this should be
          #     empty. If it is empty, the default value for the data source will be
          #     used.
          #     The specified times are in UTC.
          #     Examples of valid format:
          #     `1st,3rd monday of month 15:30`,
          #     `every wed,fri of jan,jun 13:15`, and
          #     `first sunday of quarter 00:00`.
          #     See more explanation about the format here:
          #     https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
          #
          #     NOTE: The minimum interval time between recurring transfers depends on the
          #     data source; refer to the documentation for your data source.
          # @!attribute [rw] schedule_options
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::ScheduleOptions]
          #     Options customizing the data transfer schedule.
          # @!attribute [rw] data_refresh_window_days
          #   @return [::Integer]
          #     The number of days to look back to automatically refresh the data.
          #     For example, if `data_refresh_window_days = 10`, then every day
          #     BigQuery reingests data for [today-10, today-1], rather than ingesting data
          #     for just [today-1].
          #     Only valid if the data source supports the feature. Set the value to  0
          #     to use the default value.
          # @!attribute [rw] disabled
          #   @return [::Boolean]
          #     Is this config disabled. When set to true, no runs are scheduled
          #     for a given transfer.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Data transfer modification time. Ignored by server on input.
          # @!attribute [r] next_run_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Next time when data transfer will run.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::TransferState]
          #     Output only. State of the most recently updated transfer run.
          # @!attribute [rw] user_id
          #   @return [::Integer]
          #     Deprecated. Unique ID of the user on whose behalf transfer is done.
          # @!attribute [r] dataset_region
          #   @return [::String]
          #     Output only. Region in which BigQuery dataset is located.
          # @!attribute [rw] notification_pubsub_topic
          #   @return [::String]
          #     Pub/Sub topic where notifications will be sent after transfer runs
          #     associated with this transfer config finish.
          #
          #     The format for specifying a pubsub topic is:
          #     `projects/{project}/topics/{topic}`
          # @!attribute [rw] email_preferences
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::EmailPreferences]
          #     Email notifications will be sent according to these preferences
          #     to the email address of the user who owns this transfer config.
          # @!attribute [r] owner_info
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::UserInfo]
          #     Output only. Information about the user whose credentials are used to
          #     transfer data. Populated only for `transferConfigs.get` requests. In case
          #     the user information is not available, this field will not be populated.
          # @!attribute [rw] encryption_configuration
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::EncryptionConfiguration]
          #     The encryption configuration part. Currently, it is only used for the
          #     optional KMS key name. The BigQuery service account of your project must be
          #     granted permissions to use the key. Read methods will return the key name
          #     applied in effect. Write methods will apply the key if it is present, or
          #     otherwise try to apply project default keys if it is absent.
          class TransferConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the encryption configuration for a transfer.
          # @!attribute [rw] kms_key_name
          #   @return [::Google::Protobuf::StringValue]
          #     The name of the KMS key used for encrypting BigQuery data.
          class EncryptionConfiguration
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a data transfer run.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name of the transfer run.
          #     Transfer run names have the form
          #     `projects/{project_id}/locations/{location}/transferConfigs/{config_id}/runs/{run_id}`.
          #     The name is ignored when creating a transfer run.
          # @!attribute [rw] schedule_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Minimum time after which a transfer run can be started.
          # @!attribute [rw] run_time
          #   @return [::Google::Protobuf::Timestamp]
          #     For batch transfer runs, specifies the date and time of the data should be
          #     ingested.
          # @!attribute [rw] error_status
          #   @return [::Google::Rpc::Status]
          #     Status of the transfer run.
          # @!attribute [r] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Time when transfer run was started.
          #     Parameter ignored by server for input requests.
          # @!attribute [r] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Time when transfer run ended.
          #     Parameter ignored by server for input requests.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Last time the data transfer run state was updated.
          # @!attribute [r] params
          #   @return [::Google::Protobuf::Struct]
          #     Output only. Parameters specific to each data source. For more information
          #     see the bq tab in the 'Setting up a data transfer' section for each data
          #     source. For example the parameters for Cloud Storage transfers are listed
          #     here:
          #     https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
          # @!attribute [r] destination_dataset_id
          #   @return [::String]
          #     Output only. The BigQuery target dataset id.
          # @!attribute [r] data_source_id
          #   @return [::String]
          #     Output only. Data source id.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::TransferState]
          #     Data transfer run state. Ignored for input requests.
          # @!attribute [rw] user_id
          #   @return [::Integer]
          #     Deprecated. Unique ID of the user on whose behalf transfer is done.
          # @!attribute [r] schedule
          #   @return [::String]
          #     Output only. Describes the schedule of this transfer run if it was
          #     created as part of a regular schedule. For batch transfer runs that are
          #     scheduled manually, this is empty.
          #     NOTE: the system might choose to delay the schedule depending on the
          #     current load, so `schedule_time` doesn't always match this.
          # @!attribute [r] notification_pubsub_topic
          #   @return [::String]
          #     Output only. Pub/Sub topic where a notification will be sent after this
          #     transfer run finishes.
          #
          #     The format for specifying a pubsub topic is:
          #     `projects/{project}/topics/{topic}`
          # @!attribute [r] email_preferences
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::EmailPreferences]
          #     Output only. Email notifications will be sent according to these
          #     preferences to the email address of the user who owns the transfer config
          #     this run was derived from.
          class TransferRun
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a user facing message for a particular data transfer run.
          # @!attribute [rw] message_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Time when message was logged.
          # @!attribute [rw] severity
          #   @return [::Google::Cloud::Bigquery::DataTransfer::V1::TransferMessage::MessageSeverity]
          #     Message severity.
          # @!attribute [rw] message_text
          #   @return [::String]
          #     Message text.
          class TransferMessage
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Represents data transfer user facing message severity.
            module MessageSeverity
              # No severity specified.
              MESSAGE_SEVERITY_UNSPECIFIED = 0

              # Informational message.
              INFO = 1

              # Warning message.
              WARNING = 2

              # Error message.
              ERROR = 3
            end
          end

          # DEPRECATED. Represents data transfer type.
          # @deprecated This enum is deprecated and may be removed in the next major version update.
          module TransferType
            # Invalid or Unknown transfer type placeholder.
            TRANSFER_TYPE_UNSPECIFIED = 0

            # Batch data transfer.
            BATCH = 1

            # Streaming data transfer. Streaming data source currently doesn't
            # support multiple transfer configs per project.
            STREAMING = 2
          end

          # Represents data transfer run state.
          module TransferState
            # State placeholder (0).
            TRANSFER_STATE_UNSPECIFIED = 0

            # Data transfer is scheduled and is waiting to be picked up by
            # data transfer backend (2).
            PENDING = 2

            # Data transfer is in progress (3).
            RUNNING = 3

            # Data transfer completed successfully (4).
            SUCCEEDED = 4

            # Data transfer failed (5).
            FAILED = 5

            # Data transfer is cancelled (6).
            CANCELLED = 6
          end
        end
      end
    end
  end
end
