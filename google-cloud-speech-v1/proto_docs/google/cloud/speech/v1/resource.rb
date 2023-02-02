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
    module Speech
      module V1
        # A set of words or phrases that represents a common concept likely to appear
        # in your audio, for example a list of passenger ship names. CustomClass items
        # can be substituted into placeholders that you set in PhraseSet phrases.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the custom class.
        # @!attribute [rw] custom_class_id
        #   @return [::String]
        #     If this custom class is a resource, the custom_class_id is the resource id
        #     of the CustomClass. Case sensitive.
        # @!attribute [rw] items
        #   @return [::Array<::Google::Cloud::Speech::V1::CustomClass::ClassItem>]
        #     A collection of class items.
        class CustomClass
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # An item of the class.
          # @!attribute [rw] value
          #   @return [::String]
          #     The class item's value.
          class ClassItem
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Provides "hints" to the speech recognizer to favor specific words and phrases
        # in the results.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the phrase set.
        # @!attribute [rw] phrases
        #   @return [::Array<::Google::Cloud::Speech::V1::PhraseSet::Phrase>]
        #     A list of word and phrases.
        # @!attribute [rw] boost
        #   @return [::Float]
        #     Hint Boost. Positive value will increase the probability that a specific
        #     phrase will be recognized over other similar sounding phrases. The higher
        #     the boost, the higher the chance of false positive recognition as well.
        #     Negative boost values would correspond to anti-biasing. Anti-biasing is not
        #     enabled, so negative boost will simply be ignored. Though `boost` can
        #     accept a wide range of positive values, most use cases are best served with
        #     values between 0 (exclusive) and 20. We recommend using a binary search
        #     approach to finding the optimal value for your use case as well as adding
        #     phrases both with and without boost to your requests.
        class PhraseSet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A phrases containing words and phrase "hints" so that
          # the speech recognition is more likely to recognize them. This can be used
          # to improve the accuracy for specific words and phrases, for example, if
          # specific commands are typically spoken by the user. This can also be used
          # to add additional words to the vocabulary of the recognizer. See
          # [usage limits](https://cloud.google.com/speech-to-text/quotas#content).
          #
          # List items can also include pre-built or custom classes containing groups
          # of words that represent common concepts that occur in natural language. For
          # example, rather than providing a phrase hint for every month of the
          # year (e.g. "i was born in january", "i was born in febuary", ...), use the
          # pre-built `$MONTH` class improves the likelihood of correctly transcribing
          # audio that includes months (e.g. "i was born in $month").
          # To refer to pre-built classes, use the class' symbol prepended with `$`
          # e.g. `$MONTH`. To refer to custom classes that were defined inline in the
          # request, set the class's `custom_class_id` to a string unique to all class
          # resources and inline classes. Then use the class' id wrapped in $`{...}`
          # e.g. "$\\{my-months}". To refer to custom classes resources, use the class'
          # id wrapped in `${}` (e.g. `${my-months}`).
          #
          # Speech-to-Text supports three locations: `global`, `us` (US North America),
          # and `eu` (Europe). If you are calling the `speech.googleapis.com`
          # endpoint, use the `global` location. To specify a region, use a
          # [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints)
          # with matching `us` or `eu` location value.
          # @!attribute [rw] value
          #   @return [::String]
          #     The phrase itself.
          # @!attribute [rw] boost
          #   @return [::Float]
          #     Hint Boost. Overrides the boost set at the phrase set level.
          #     Positive value will increase the probability that a specific phrase will
          #     be recognized over other similar sounding phrases. The higher the boost,
          #     the higher the chance of false positive recognition as well. Negative
          #     boost will simply be ignored. Though `boost` can accept a wide range of
          #     positive values, most use cases are best served
          #     with values between 0 and 20. We recommend using a binary search approach
          #     to finding the optimal value for your use case as well as adding
          #     phrases both with and without boost to your requests.
          class Phrase
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Speech adaptation configuration.
        # @!attribute [rw] phrase_sets
        #   @return [::Array<::Google::Cloud::Speech::V1::PhraseSet>]
        #     A collection of phrase sets. To specify the hints inline, leave the
        #     phrase set's `name` blank and fill in the rest of its fields. Any
        #     phrase set can use any custom class.
        # @!attribute [rw] phrase_set_references
        #   @return [::Array<::String>]
        #     A collection of phrase set resource names to use.
        # @!attribute [rw] custom_classes
        #   @return [::Array<::Google::Cloud::Speech::V1::CustomClass>]
        #     A collection of custom classes. To specify the classes inline, leave the
        #     class' `name` blank and fill in the rest of its fields, giving it a unique
        #     `custom_class_id`. Refer to the inline defined class in phrase hints by its
        #     `custom_class_id`.
        # @!attribute [rw] abnf_grammar
        #   @return [::Google::Cloud::Speech::V1::SpeechAdaptation::ABNFGrammar]
        #     Augmented Backus-Naur form (ABNF) is a standardized grammar notation
        #     comprised by a set of derivation rules.
        #     See specifications: https://www.w3.org/TR/speech-grammar
        class SpeechAdaptation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] abnf_strings
          #   @return [::Array<::String>]
          #     All declarations and rules of an ABNF grammar broken up into multiple
          #     strings that will end up concatenated.
          class ABNFGrammar
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
