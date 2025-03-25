# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/products/v1beta/productinputs.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/shopping/merchant/products/v1beta/products_common_pb'
require 'google/shopping/type/types_pb'


descriptor_data = "\n<google/shopping/merchant/products/v1beta/productinputs.proto\x12(google.shopping.merchant.products.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a>google/shopping/merchant/products/v1beta/products_common.proto\x1a google/shopping/type/types.proto\"\x97\x04\n\x0cProductInput\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x14\n\x07product\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12?\n\x07\x63hannel\x18\x03 \x01(\x0e\x32).google.shopping.type.Channel.ChannelEnumB\x03\xe0\x41\x05\x12\x18\n\x08offer_id\x18\x04 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12 \n\x10\x63ontent_language\x18\x05 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x1a\n\nfeed_label\x18\x06 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12 \n\x0eversion_number\x18\x07 \x01(\x03\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\x12M\n\nattributes\x18\x08 \x01(\x0b\x32\x34.google.shopping.merchant.products.v1beta.AttributesB\x03\xe0\x41\x01\x12\x45\n\x11\x63ustom_attributes\x18\t \x03(\x0b\x32%.google.shopping.type.CustomAttributeB\x03\xe0\x41\x01:z\xea\x41w\n\'merchantapi.googleapis.com/ProductInput\x12/accounts/{account}/productInputs/{productinput}*\rproductInputs2\x0cproductInputB\x11\n\x0f_version_number\"\xc5\x01\n\x19InsertProductInputRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"merchantapi.googleapis.com/Product\x12R\n\rproduct_input\x18\x02 \x01(\x0b\x32\x36.google.shopping.merchant.products.v1beta.ProductInputB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x61ta_source\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\xbf\x01\n\x19UpdateProductInputRequest\x12R\n\rproduct_input\x18\x01 \x01(\x0b\x32\x36.google.shopping.merchant.products.v1beta.ProductInputB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x61ta_source\x18\x03 \x01(\tB\x03\xe0\x41\x02\"t\n\x19\x44\x65leteProductInputRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'merchantapi.googleapis.com/ProductInput\x12\x18\n\x0b\x64\x61ta_source\x18\x02 \x01(\tB\x03\xe0\x41\x02\x32\x85\x06\n\x14ProductInputsService\x12\xe3\x01\n\x12InsertProductInput\x12\x43.google.shopping.merchant.products.v1beta.InsertProductInputRequest\x1a\x36.google.shopping.merchant.products.v1beta.ProductInput\"P\x82\xd3\xe4\x93\x02J\"9/products/v1beta/{parent=accounts/*}/productInputs:insert:\rproduct_input\x12\x86\x02\n\x12UpdateProductInput\x12\x43.google.shopping.merchant.products.v1beta.UpdateProductInputRequest\x1a\x36.google.shopping.merchant.products.v1beta.ProductInput\"s\xda\x41\x19product_input,update_mask\x82\xd3\xe4\x93\x02Q2@/products/v1beta/{product_input.name=accounts/*/productInputs/*}:\rproduct_input\x12\xb4\x01\n\x12\x44\x65leteProductInput\x12\x43.google.shopping.merchant.products.v1beta.DeleteProductInputRequest\x1a\x16.google.protobuf.Empty\"A\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34*2/products/v1beta/{name=accounts/*/productInputs/*}\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x94\x01\n,com.google.shopping.merchant.products.v1betaB\x12ProductInputsProtoP\x01ZNcloud.google.com/go/shopping/merchant/products/apiv1beta/productspb;productspbb\x06proto3"

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
    ["google.shopping.merchant.products.v1beta.Attributes", "google/shopping/merchant/products/v1beta/products_common.proto"],
    ["google.shopping.type.CustomAttribute", "google/shopping/type/types.proto"],
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
      module Products
        module V1beta
          ProductInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.products.v1beta.ProductInput").msgclass
          InsertProductInputRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.products.v1beta.InsertProductInputRequest").msgclass
          UpdateProductInputRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.products.v1beta.UpdateProductInputRequest").msgclass
          DeleteProductInputRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.products.v1beta.DeleteProductInputRequest").msgclass
        end
      end
    end
  end
end
