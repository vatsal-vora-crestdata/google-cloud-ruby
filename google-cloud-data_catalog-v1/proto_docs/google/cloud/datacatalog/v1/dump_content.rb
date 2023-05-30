# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module DataCatalog
      module V1
        # Wrapper containing Entry and information about Tags
        # that should and should not be attached to it.
        # @!attribute [rw] v1_entry
        #   @return [::Google::Cloud::DataCatalog::V1::Entry]
        #     Non-encrypted Data Catalog v1 Entry.
        # @!attribute [rw] present_tags
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::Tag>]
        #     Optional. Tags that should be ingested into the Data Catalog.
        #     Caller should populate template name, column and fields.
        # @!attribute [rw] absent_tags
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::Tag>]
        #     Optional. Tags that should be deleted from the Data Catalog.
        #     Caller should populate template name and column only.
        class TaggedEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Wrapper for any item that can be contained in the dump.
        # @!attribute [rw] tagged_entry
        #   @return [::Google::Cloud::DataCatalog::V1::TaggedEntry]
        #     Entry and its tags.
        class DumpItem
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
