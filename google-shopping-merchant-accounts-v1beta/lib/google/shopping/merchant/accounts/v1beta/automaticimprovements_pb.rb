# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/accounts/v1beta/automaticimprovements.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\nDgoogle/shopping/merchant/accounts/v1beta/automaticimprovements.proto\x12(google.shopping.merchant.accounts.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\"\xac\x04\n\x15\x41utomaticImprovements\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12Y\n\x0citem_updates\x18\x02 \x01(\x0b\x32>.google.shopping.merchant.accounts.v1beta.AutomaticItemUpdatesH\x00\x88\x01\x01\x12\x65\n\x12image_improvements\x18\x03 \x01(\x0b\x32\x44.google.shopping.merchant.accounts.v1beta.AutomaticImageImprovementsH\x01\x88\x01\x01\x12k\n\x15shipping_improvements\x18\x04 \x01(\x0b\x32G.google.shopping.merchant.accounts.v1beta.AutomaticShippingImprovementsH\x02\x88\x01\x01:\x8e\x01\xea\x41\x8a\x01\n0merchantapi.googleapis.com/AutomaticImprovements\x12(accounts/{account}/automaticImprovements*\x15\x61utomaticImprovements2\x15\x61utomaticImprovementsB\x0f\n\r_item_updatesB\x15\n\x13_image_improvementsB\x18\n\x16_shipping_improvements\"\xaa\x05\n\x14\x41utomaticItemUpdates\x12\x8a\x01\n\x1d\x61\x63\x63ount_item_updates_settings\x18\x01 \x01(\x0b\x32^.google.shopping.merchant.accounts.v1beta.AutomaticItemUpdates.ItemUpdatesAccountLevelSettingsB\x03\xe0\x41\x01\x12*\n\x1d\x65\x66\x66\x65\x63tive_allow_price_updates\x18\x02 \x01(\x08\x42\x03\xe0\x41\x03\x12\x31\n$effective_allow_availability_updates\x18\x03 \x01(\x08\x42\x03\xe0\x41\x03\x12\x38\n+effective_allow_strict_availability_updates\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\x12.\n!effective_allow_condition_updates\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x1a\xbb\x02\n\x1fItemUpdatesAccountLevelSettings\x12 \n\x13\x61llow_price_updates\x18\x01 \x01(\x08H\x00\x88\x01\x01\x12\'\n\x1a\x61llow_availability_updates\x18\x02 \x01(\x08H\x01\x88\x01\x01\x12.\n!allow_strict_availability_updates\x18\x03 \x01(\x08H\x02\x88\x01\x01\x12$\n\x17\x61llow_condition_updates\x18\x04 \x01(\x08H\x03\x88\x01\x01\x42\x16\n\x14_allow_price_updatesB\x1d\n\x1b_allow_availability_updatesB$\n\"_allow_strict_availability_updatesB\x1a\n\x18_allow_condition_updates\"\xa4\x03\n\x1a\x41utomaticImageImprovements\x12\xa1\x01\n#account_image_improvements_settings\x18\x01 \x01(\x0b\x32j.google.shopping.merchant.accounts.v1beta.AutomaticImageImprovements.ImageImprovementsAccountLevelSettingsB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x39\n,effective_allow_automatic_image_improvements\x18\x02 \x01(\x08\x42\x03\xe0\x41\x03\x1a\x7f\n%ImageImprovementsAccountLevelSettings\x12/\n\"allow_automatic_image_improvements\x18\x01 \x01(\x08H\x00\x88\x01\x01\x42%\n#_allow_automatic_image_improvementsB&\n$_account_image_improvements_settings\"i\n\x1d\x41utomaticShippingImprovements\x12(\n\x1b\x61llow_shipping_improvements\x18\x01 \x01(\x08H\x00\x88\x01\x01\x42\x1e\n\x1c_allow_shipping_improvements\"i\n\x1fGetAutomaticImprovementsRequest\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0merchantapi.googleapis.com/AutomaticImprovements\"\xc0\x01\n\"UpdateAutomaticImprovementsRequest\x12\x64\n\x16\x61utomatic_improvements\x18\x01 \x01(\x0b\x32?.google.shopping.merchant.accounts.v1beta.AutomaticImprovementsB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x32\x9f\x05\n\x1c\x41utomaticImprovementsService\x12\xef\x01\n\x18GetAutomaticImprovements\x12I.google.shopping.merchant.accounts.v1beta.GetAutomaticImprovementsRequest\x1a?.google.shopping.merchant.accounts.v1beta.AutomaticImprovements\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/accounts/v1beta/{name=accounts/*/automaticImprovements}\x12\xc3\x02\n\x1bUpdateAutomaticImprovements\x12L.google.shopping.merchant.accounts.v1beta.UpdateAutomaticImprovementsRequest\x1a?.google.shopping.merchant.accounts.v1beta.AutomaticImprovements\"\x94\x01\xda\x41\"automatic_improvements,update_mask\x82\xd3\xe4\x93\x02i2O/accounts/v1beta/{automatic_improvements.name=accounts/*/automaticImprovements}:\x16\x61utomatic_improvements\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x9c\x01\n,com.google.shopping.merchant.accounts.v1betaB\x1a\x41utomaticImprovementsProtoP\x01ZNcloud.google.com/go/shopping/merchant/accounts/apiv1beta/accountspb;accountspbb\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          AutomaticImprovements = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.AutomaticImprovements").msgclass
          AutomaticItemUpdates = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.AutomaticItemUpdates").msgclass
          AutomaticItemUpdates::ItemUpdatesAccountLevelSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.AutomaticItemUpdates.ItemUpdatesAccountLevelSettings").msgclass
          AutomaticImageImprovements = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.AutomaticImageImprovements").msgclass
          AutomaticImageImprovements::ImageImprovementsAccountLevelSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.AutomaticImageImprovements.ImageImprovementsAccountLevelSettings").msgclass
          AutomaticShippingImprovements = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.AutomaticShippingImprovements").msgclass
          GetAutomaticImprovementsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.GetAutomaticImprovementsRequest").msgclass
          UpdateAutomaticImprovementsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.UpdateAutomaticImprovementsRequest").msgclass
        end
      end
    end
  end
end
