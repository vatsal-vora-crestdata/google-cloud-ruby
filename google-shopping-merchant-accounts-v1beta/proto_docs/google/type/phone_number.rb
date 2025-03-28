# frozen_string_literal: true

# Copyright 2024 Google LLC
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
  module Type
    # An object representing a phone number, suitable as an API wire format.
    #
    # This representation:
    #
    #  - should not be used for locale-specific formatting of a phone number, such
    #    as "+1 (650) 253-0000 ext. 123"
    #
    #  - is not designed for efficient storage
    #  - may not be suitable for dialing - specialized libraries (see references)
    #    should be used to parse the number for that purpose
    #
    # To do something meaningful with this number, such as format it for various
    # use-cases, convert it to an `i18n.phonenumbers.PhoneNumber` object first.
    #
    # For instance, in Java this would be:
    #
    #    com.google.type.PhoneNumber wireProto =
    #        com.google.type.PhoneNumber.newBuilder().build();
    #    com.google.i18n.phonenumbers.Phonenumber.PhoneNumber phoneNumber =
    #        PhoneNumberUtil.getInstance().parse(wireProto.getE164Number(), "ZZ");
    #    if (!wireProto.getExtension().isEmpty()) {
    #      phoneNumber.setExtension(wireProto.getExtension());
    #    }
    #
    #  Reference(s):
    #   - https://github.com/google/libphonenumber
    # @!attribute [rw] e164_number
    #   @return [::String]
    #     The phone number, represented as a leading plus sign ('+'), followed by a
    #     phone number that uses a relaxed ITU E.164 format consisting of the
    #     country calling code (1 to 3 digits) and the subscriber number, with no
    #     additional spaces or formatting, e.g.:
    #      - correct: "+15552220123"
    #      - incorrect: "+1 (555) 222-01234 x123".
    #
    #     The ITU E.164 format limits the latter to 12 digits, but in practice not
    #     all countries respect that, so we relax that restriction here.
    #     National-only numbers are not allowed.
    #
    #     References:
    #      - https://www.itu.int/rec/T-REC-E.164-201011-I
    #      - https://en.wikipedia.org/wiki/E.164.
    #      - https://en.wikipedia.org/wiki/List_of_country_calling_codes
    #
    #     Note: The following fields are mutually exclusive: `e164_number`, `short_code`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] short_code
    #   @return [::Google::Type::PhoneNumber::ShortCode]
    #     A short code.
    #
    #     Reference(s):
    #      - https://en.wikipedia.org/wiki/Short_code
    #
    #     Note: The following fields are mutually exclusive: `short_code`, `e164_number`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] extension
    #   @return [::String]
    #     The phone number's extension. The extension is not standardized in ITU
    #     recommendations, except for being defined as a series of numbers with a
    #     maximum length of 40 digits. Other than digits, some other dialing
    #     characters such as ',' (indicating a wait) or '#' may be stored here.
    #
    #     Note that no regions currently use extensions with short codes, so this
    #     field is normally only set in conjunction with an E.164 number. It is held
    #     separately from the E.164 number to allow for short code extensions in the
    #     future.
    class PhoneNumber
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # An object representing a short code, which is a phone number that is
      # typically much shorter than regular phone numbers and can be used to
      # address messages in MMS and SMS systems, as well as for abbreviated dialing
      # (e.g. "Text 611 to see how many minutes you have remaining on your plan.").
      #
      # Short codes are restricted to a region and are not internationally
      # dialable, which means the same short code can exist in different regions,
      # with different usage and pricing, even if those regions share the same
      # country calling code (e.g. US and CA).
      # @!attribute [rw] region_code
      #   @return [::String]
      #     Required. The BCP-47 region code of the location where calls to this
      #     short code can be made, such as "US" and "BB".
      #
      #     Reference(s):
      #      - http://www.unicode.org/reports/tr35/#unicode_region_subtag
      # @!attribute [rw] number
      #   @return [::String]
      #     Required. The short code digits, without a leading plus ('+') or country
      #     calling code, e.g. "611".
      class ShortCode
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end
