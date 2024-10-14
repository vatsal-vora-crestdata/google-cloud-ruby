# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module EssentialContacts
      module V1
        # A contact that will receive notifications from Google Cloud.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The identifier for the contact.
        #     Format: \\{resource_type}/\\{resource_id}/contacts/\\{contact_id}
        # @!attribute [rw] email
        #   @return [::String]
        #     Required. The email address to send notifications to. The email address
        #     does not need to be a Google Account.
        # @!attribute [rw] notification_category_subscriptions
        #   @return [::Array<::Google::Cloud::EssentialContacts::V1::NotificationCategory>]
        #     Required. The categories of notifications that the contact will receive
        #     communications for.
        # @!attribute [rw] language_tag
        #   @return [::String]
        #     Required. The preferred language for notifications, as a ISO 639-1 language
        #     code. See [Supported
        #     languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages)
        #     for a list of supported languages.
        # @!attribute [r] validation_state
        #   @return [::Google::Cloud::EssentialContacts::V1::ValidationState]
        #     Output only. The validity of the contact. A contact is considered valid if
        #     it is the correct recipient for notifications for a particular resource.
        # @!attribute [rw] validate_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The last time the validation_state was updated, either manually or
        #     automatically. A contact is considered stale if its validation state was
        #     updated more than 1 year ago.
        class Contact
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the ListContacts method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        #     Format: organizations/\\{organization_id}, folders/\\{folder_id} or
        #     projects/\\{project_id}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of results to return from this request.
        #     Non-positive values are ignored. The presence of `next_page_token` in the
        #     response indicates that more results might be available.
        #     If not specified, the default page_size is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If present, retrieves the next batch of results from the
        #     preceding call to this method. `page_token` must be the value of
        #     `next_page_token` from the previous response. The values of other method
        #     parameters should be identical to those in the previous call.
        class ListContactsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the ListContacts method.
        # @!attribute [rw] contacts
        #   @return [::Array<::Google::Cloud::EssentialContacts::V1::Contact>]
        #     The contacts for the specified resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than those appearing in this response, then
        #     `next_page_token` is included. To get the next set of results, call this
        #     method again using the value of `next_page_token` as `page_token` and the
        #     rest of the parameters the same as the original request.
        class ListContactsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the GetContact method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the contact to retrieve.
        #     Format: organizations/\\{organization_id}/contacts/\\{contact_id},
        #     folders/\\{folder_id}/contacts/\\{contact_id} or
        #     projects/\\{project_id}/contacts/\\{contact_id}
        class GetContactRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the DeleteContact method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the contact to delete.
        #     Format: organizations/\\{organization_id}/contacts/\\{contact_id},
        #     folders/\\{folder_id}/contacts/\\{contact_id} or
        #     projects/\\{project_id}/contacts/\\{contact_id}
        class DeleteContactRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the CreateContact method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource to save this contact for.
        #     Format: organizations/\\{organization_id}, folders/\\{folder_id} or
        #     projects/\\{project_id}
        # @!attribute [rw] contact
        #   @return [::Google::Cloud::EssentialContacts::V1::Contact]
        #     Required. The contact to create. Must specify an email address and language
        #     tag.
        class CreateContactRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the UpdateContact method.
        # @!attribute [rw] contact
        #   @return [::Google::Cloud::EssentialContacts::V1::Contact]
        #     Required. The contact resource to replace the existing saved contact. Note:
        #     the email address of the contact cannot be modified.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The update mask applied to the resource. For the `FieldMask`
        #     definition, see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        class UpdateContactRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the ComputeContacts method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the resource to compute contacts for.
        #     Format: organizations/\\{organization_id},
        #     folders/\\{folder_id} or projects/\\{project_id}
        # @!attribute [rw] notification_categories
        #   @return [::Array<::Google::Cloud::EssentialContacts::V1::NotificationCategory>]
        #     The categories of notifications to compute contacts for. If ALL is included
        #     in this list, contacts subscribed to any notification category will be
        #     returned.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of results to return from this request.
        #     Non-positive values are ignored. The presence of `next_page_token` in the
        #     response indicates that more results might be available.
        #     If not specified, the default page_size is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If present, retrieves the next batch of results from the
        #     preceding call to this method. `page_token` must be the value of
        #     `next_page_token` from the previous response. The values of other method
        #     parameters should be identical to those in the previous call.
        class ComputeContactsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the ComputeContacts method.
        # @!attribute [rw] contacts
        #   @return [::Array<::Google::Cloud::EssentialContacts::V1::Contact>]
        #     All contacts for the resource that are subscribed to the specified
        #     notification categories, including contacts inherited from any parent
        #     resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than those appearing in this response, then
        #     `next_page_token` is included. To get the next set of results, call this
        #     method again using the value of `next_page_token` as `page_token` and the
        #     rest of the parameters the same as the original request.
        class ComputeContactsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the SendTestMessage method.
        # @!attribute [rw] contacts
        #   @return [::Array<::String>]
        #     Required. The list of names of the contacts to send a test message to.
        #     Format: organizations/\\{organization_id}/contacts/\\{contact_id},
        #     folders/\\{folder_id}/contacts/\\{contact_id} or
        #     projects/\\{project_id}/contacts/\\{contact_id}
        # @!attribute [rw] resource
        #   @return [::String]
        #     Required. The name of the resource to send the test message for. All
        #     contacts must either be set directly on this resource or inherited from
        #     another resource that is an ancestor of this one. Format:
        #     organizations/\\{organization_id}, folders/\\{folder_id} or
        #     projects/\\{project_id}
        # @!attribute [rw] notification_category
        #   @return [::Google::Cloud::EssentialContacts::V1::NotificationCategory]
        #     Required. The notification category to send the test message for. All
        #     contacts must be subscribed to this category.
        class SendTestMessageRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
