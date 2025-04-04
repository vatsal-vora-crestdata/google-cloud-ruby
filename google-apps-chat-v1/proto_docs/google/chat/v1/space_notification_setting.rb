# frozen_string_literal: true

# Copyright 2025 Google LLC
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
  module Apps
    module Chat
      module V1
        # The notification setting of a user in a space.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the space notification setting.
        #     Format: `users/{user}/spaces/{space}/spaceNotificationSetting`.
        # @!attribute [rw] notification_setting
        #   @return [::Google::Apps::Chat::V1::SpaceNotificationSetting::NotificationSetting]
        #     The notification setting.
        # @!attribute [rw] mute_setting
        #   @return [::Google::Apps::Chat::V1::SpaceNotificationSetting::MuteSetting]
        #     The space notification mute setting.
        class SpaceNotificationSetting
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The notification setting types. Other types might be supported in the
          # future.
          module NotificationSetting
            # Reserved.
            NOTIFICATION_SETTING_UNSPECIFIED = 0

            # Notifications are triggered by @mentions, followed threads, first
            # message of new threads. All new threads are automatically followed,
            # unless manually unfollowed by the user.
            ALL = 1

            # The notification is triggered by @mentions, followed threads, first
            # message of new threads. Not available for 1:1 direct messages.
            MAIN_CONVERSATIONS = 2

            # The notification is triggered by @mentions, followed threads. Not
            # available for 1:1 direct messages.
            FOR_YOU = 3

            # Notification is off.
            OFF = 4
          end

          # The space notification mute setting types.
          module MuteSetting
            # Reserved.
            MUTE_SETTING_UNSPECIFIED = 0

            # The user will receive notifications for the space based on the
            # notification setting.
            UNMUTED = 1

            # The user will not receive any notifications for the space, regardless of
            # the notification setting.
            MUTED = 2
          end
        end

        # Request message to get space notification setting.
        # Only supports getting notification setting for the calling user.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format: users/\\{user}/spaces/\\{space}/spaceNotificationSetting
        #
        #     - `users/me/spaces/{space}/spaceNotificationSetting`, OR
        #     - `users/user@example.com/spaces/{space}/spaceNotificationSetting`, OR
        #     - `users/123456789/spaces/{space}/spaceNotificationSetting`.
        #     Note: Only the caller's user id or email is allowed in the path.
        class GetSpaceNotificationSettingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to update the space notification settings.
        # Only supports updating notification setting for the calling user.
        # @!attribute [rw] space_notification_setting
        #   @return [::Google::Apps::Chat::V1::SpaceNotificationSetting]
        #     Required. The resource name for the space notification settings must be
        #     populated in the form of
        #     `users/{user}/spaces/{space}/spaceNotificationSetting`. Only fields
        #     specified by `update_mask` are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Supported field paths:
        #
        #     - `notification_setting`
        #
        #     - `mute_setting`
        class UpdateSpaceNotificationSettingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
