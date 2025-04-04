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
    module OsConfig
      module V1
        # This API resource represents the available inventory data for a
        # Compute Engine virtual machine (VM) instance at a given point in time.
        #
        # You can use this API resource to determine the inventory data of your VM.
        #
        # For more information, see [Information provided by OS inventory
        # management](https://cloud.google.com/compute/docs/instances/os-inventory-management#data-collected).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The `Inventory` API resource name.
        #
        #     Format:
        #     `projects/{project_number}/locations/{location}/instances/{instance_id}/inventory`
        # @!attribute [rw] os_info
        #   @return [::Google::Cloud::OsConfig::V1::Inventory::OsInfo]
        #     Base level operating system information for the VM.
        # @!attribute [rw] items
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::OsConfig::V1::Inventory::Item}]
        #     Inventory items related to the VM keyed by an opaque unique identifier for
        #     each inventory item.  The identifier is unique to each distinct and
        #     addressable inventory item and will change, when there is a new package
        #     version.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp of the last reported inventory for the VM.
        class Inventory
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Operating system information for the VM.
          # @!attribute [rw] hostname
          #   @return [::String]
          #     The VM hostname.
          # @!attribute [rw] long_name
          #   @return [::String]
          #     The operating system long name.
          #     For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019
          #     Datacenter'.
          # @!attribute [rw] short_name
          #   @return [::String]
          #     The operating system short name.
          #     For example, 'windows' or 'debian'.
          # @!attribute [rw] version
          #   @return [::String]
          #     The version of the operating system.
          # @!attribute [rw] architecture
          #   @return [::String]
          #     The system architecture of the operating system.
          # @!attribute [rw] kernel_version
          #   @return [::String]
          #     The kernel version of the operating system.
          # @!attribute [rw] kernel_release
          #   @return [::String]
          #     The kernel release of the operating system.
          # @!attribute [rw] osconfig_agent_version
          #   @return [::String]
          #     The current version of the OS Config agent running on the VM.
          class OsInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A single piece of inventory on a VM.
          # @!attribute [rw] id
          #   @return [::String]
          #     Identifier for this item, unique across items for this VM.
          # @!attribute [rw] origin_type
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::Item::OriginType]
          #     The origin of this inventory item.
          # @!attribute [rw] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     When this inventory item was first detected.
          # @!attribute [rw] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     When this inventory item was last modified.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::Item::Type]
          #     The specific type of inventory, correlating to its specific details.
          # @!attribute [rw] installed_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::SoftwarePackage]
          #     Software package present on the VM instance.
          #
          #     Note: The following fields are mutually exclusive: `installed_package`, `available_package`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] available_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::SoftwarePackage]
          #     Software package available to be installed on the VM instance.
          #
          #     Note: The following fields are mutually exclusive: `available_package`, `installed_package`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class Item
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The origin of a specific inventory item.
            module OriginType
              # Invalid. An origin type must be specified.
              ORIGIN_TYPE_UNSPECIFIED = 0

              # This inventory item was discovered as the result of the agent
              # reporting inventory via the reporting API.
              INVENTORY_REPORT = 1
            end

            # The different types of inventory that are tracked on a VM.
            module Type
              # Invalid. An type must be specified.
              TYPE_UNSPECIFIED = 0

              # This represents a package that is installed on the VM.
              INSTALLED_PACKAGE = 1

              # This represents an update that is available for a package.
              AVAILABLE_PACKAGE = 2
            end
          end

          # Software package information of the operating system.
          # @!attribute [rw] yum_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::VersionedPackage]
          #     Yum package info.
          #     For details about the yum package manager, see
          #     https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-yum.
          #
          #     Note: The following fields are mutually exclusive: `yum_package`, `apt_package`, `zypper_package`, `googet_package`, `zypper_patch`, `wua_package`, `qfe_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] apt_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::VersionedPackage]
          #     Details of an APT package.
          #     For details about the apt package manager, see
          #     https://wiki.debian.org/Apt.
          #
          #     Note: The following fields are mutually exclusive: `apt_package`, `yum_package`, `zypper_package`, `googet_package`, `zypper_patch`, `wua_package`, `qfe_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] zypper_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::VersionedPackage]
          #     Details of a Zypper package.
          #     For details about the Zypper package manager, see
          #     https://en.opensuse.org/SDB:Zypper_manual.
          #
          #     Note: The following fields are mutually exclusive: `zypper_package`, `yum_package`, `apt_package`, `googet_package`, `zypper_patch`, `wua_package`, `qfe_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] googet_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::VersionedPackage]
          #     Details of a Googet package.
          #      For details about the googet package manager, see
          #      https://github.com/google/googet.
          #
          #     Note: The following fields are mutually exclusive: `googet_package`, `yum_package`, `apt_package`, `zypper_package`, `zypper_patch`, `wua_package`, `qfe_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] zypper_patch
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::ZypperPatch]
          #     Details of a Zypper patch.
          #     For details about the Zypper package manager, see
          #     https://en.opensuse.org/SDB:Zypper_manual.
          #
          #     Note: The following fields are mutually exclusive: `zypper_patch`, `yum_package`, `apt_package`, `zypper_package`, `googet_package`, `wua_package`, `qfe_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] wua_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::WindowsUpdatePackage]
          #     Details of a Windows Update package.
          #     See https://docs.microsoft.com/en-us/windows/win32/api/_wua/ for
          #     information about Windows Update.
          #
          #     Note: The following fields are mutually exclusive: `wua_package`, `yum_package`, `apt_package`, `zypper_package`, `googet_package`, `zypper_patch`, `qfe_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] qfe_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::WindowsQuickFixEngineeringPackage]
          #     Details of a Windows Quick Fix engineering package.
          #     See
          #     https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
          #     for info in Windows Quick Fix Engineering.
          #
          #     Note: The following fields are mutually exclusive: `qfe_package`, `yum_package`, `apt_package`, `zypper_package`, `googet_package`, `zypper_patch`, `wua_package`, `cos_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] cos_package
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::VersionedPackage]
          #     Details of a COS package.
          #
          #     Note: The following fields are mutually exclusive: `cos_package`, `yum_package`, `apt_package`, `zypper_package`, `googet_package`, `zypper_patch`, `wua_package`, `qfe_package`, `windows_application`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] windows_application
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::WindowsApplication]
          #     Details of Windows Application.
          #
          #     Note: The following fields are mutually exclusive: `windows_application`, `yum_package`, `apt_package`, `zypper_package`, `googet_package`, `zypper_patch`, `wua_package`, `qfe_package`, `cos_package`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class SoftwarePackage
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information related to the a standard versioned package.  This includes
          # package info for APT, Yum, Zypper, and Googet package managers.
          # @!attribute [rw] package_name
          #   @return [::String]
          #     The name of the package.
          # @!attribute [rw] architecture
          #   @return [::String]
          #     The system architecture this package is intended for.
          # @!attribute [rw] version
          #   @return [::String]
          #     The version of the package.
          class VersionedPackage
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details related to a Zypper Patch.
          # @!attribute [rw] patch_name
          #   @return [::String]
          #     The name of the patch.
          # @!attribute [rw] category
          #   @return [::String]
          #     The category of the patch.
          # @!attribute [rw] severity
          #   @return [::String]
          #     The severity specified for this patch
          # @!attribute [rw] summary
          #   @return [::String]
          #     Any summary information provided about this patch.
          class ZypperPatch
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details related to a Windows Update package.
          # Field data and names are taken from Windows Update API IUpdate Interface:
          # https://docs.microsoft.com/en-us/windows/win32/api/_wua/
          # Descriptive fields like title, and description are localized based on
          # the locale of the VM being updated.
          # @!attribute [rw] title
          #   @return [::String]
          #     The localized title of the update package.
          # @!attribute [rw] description
          #   @return [::String]
          #     The localized description of the update package.
          # @!attribute [rw] categories
          #   @return [::Array<::Google::Cloud::OsConfig::V1::Inventory::WindowsUpdatePackage::WindowsUpdateCategory>]
          #     The categories that are associated with this update package.
          # @!attribute [rw] kb_article_ids
          #   @return [::Array<::String>]
          #     A collection of Microsoft Knowledge Base article IDs that are associated
          #     with the update package.
          # @!attribute [rw] support_url
          #   @return [::String]
          #     A hyperlink to the language-specific support information for the update.
          # @!attribute [rw] more_info_urls
          #   @return [::Array<::String>]
          #     A collection of URLs that provide more information about the update
          #     package.
          # @!attribute [rw] update_id
          #   @return [::String]
          #     Gets the identifier of an update package.  Stays the same across
          #     revisions.
          # @!attribute [rw] revision_number
          #   @return [::Integer]
          #     The revision number of this update package.
          # @!attribute [rw] last_deployment_change_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The last published date of the update, in (UTC) date and time.
          class WindowsUpdatePackage
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Categories specified by the Windows Update.
            # @!attribute [rw] id
            #   @return [::String]
            #     The identifier of the windows update category.
            # @!attribute [rw] name
            #   @return [::String]
            #     The name of the windows update category.
            class WindowsUpdateCategory
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Information related to a Quick Fix Engineering package.
          # Fields are taken from Windows QuickFixEngineering Interface and match
          # the source names:
          # https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
          # @!attribute [rw] caption
          #   @return [::String]
          #     A short textual description of the QFE update.
          # @!attribute [rw] description
          #   @return [::String]
          #     A textual description of the QFE update.
          # @!attribute [rw] hot_fix_id
          #   @return [::String]
          #     Unique identifier associated with a particular QFE update.
          # @!attribute [rw] install_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Date that the QFE update was installed.  Mapped from installed_on field.
          class WindowsQuickFixEngineeringPackage
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Contains information about a Windows application that is retrieved from the
          # Windows Registry. For more information about these fields, see:
          # https://docs.microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
          # @!attribute [rw] display_name
          #   @return [::String]
          #     The name of the application or product.
          # @!attribute [rw] display_version
          #   @return [::String]
          #     The version of the product or application in string format.
          # @!attribute [rw] publisher
          #   @return [::String]
          #     The name of the manufacturer for the product or application.
          # @!attribute [rw] install_date
          #   @return [::Google::Type::Date]
          #     The last time this product received service. The value of this property
          #     is replaced each time a patch is applied or removed from the product or
          #     the command-line option is used to repair the product.
          # @!attribute [rw] help_link
          #   @return [::String]
          #     The internet address for technical support.
          class WindowsApplication
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::OsConfig::V1::Inventory::Item]
          class ItemsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A request message for getting inventory data for the specified VM.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. API resource name for inventory resource.
        #
        #     Format:
        #     `projects/{project}/locations/{location}/instances/{instance}/inventory`
        #
        #     For `{project}`, either `project-number` or `project-id` can be provided.
        #     For `{instance}`, either Compute Engine  `instance-id` or `instance-name`
        #     can be provided.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::OsConfig::V1::InventoryView]
        #     Inventory view indicating what information should be included in the
        #     inventory resource. If unspecified, the default view is BASIC.
        class GetInventoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for listing inventory data for all VMs in the specified
        # location.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        #
        #     Format: `projects/{project}/locations/{location}/instances/-`
        #
        #     For `{project}`, either `project-number` or `project-id` can be provided.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::OsConfig::V1::InventoryView]
        #     Inventory view indicating what information should be included in the
        #     inventory resource. If unspecified, the default view is BASIC.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A pagination token returned from a previous call to
        #     `ListInventories` that indicates where this listing
        #     should continue from.
        # @!attribute [rw] filter
        #   @return [::String]
        #     If provided, this field specifies the criteria that must be met by a
        #     `Inventory` API resource to be included in the response.
        class ListInventoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response message for listing inventory data for all VMs in a specified
        # location.
        # @!attribute [rw] inventories
        #   @return [::Array<::Google::Cloud::OsConfig::V1::Inventory>]
        #     List of inventory objects.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The pagination token to retrieve the next page of inventory objects.
        class ListInventoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The view for inventory objects.
        module InventoryView
          # The default value.
          # The API defaults to the BASIC view.
          INVENTORY_VIEW_UNSPECIFIED = 0

          # Returns the basic inventory information that includes `os_info`.
          BASIC = 1

          # Returns all fields.
          FULL = 2
        end
      end
    end
  end
end
