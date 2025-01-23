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
    module GkeBackup
      module V1
        # Represents both a request to Restore some portion of a Backup into
        # a target GKE cluster and a record of the restore operation itself.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The full name of the Restore resource.
        #     Format: `projects/*/locations/*/restorePlans/*/restores/*`
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server generated global unique identifier of
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this Restore resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this Restore resource was last
        #     updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     User specified descriptive string for this Restore.
        # @!attribute [rw] backup
        #   @return [::String]
        #     Required. Immutable. A reference to the
        #     {::Google::Cloud::GkeBackup::V1::Backup Backup} used as the source from which
        #     this Restore will restore. Note that this Backup must be a sub-resource of
        #     the RestorePlan's
        #     {::Google::Cloud::GkeBackup::V1::RestorePlan#backup_plan backup_plan}. Format:
        #     `projects/*/locations/*/backupPlans/*/backups/*`.
        # @!attribute [r] cluster
        #   @return [::String]
        #     Output only. The target cluster into which this Restore will restore data.
        #     Valid formats:
        #
        #       - `projects/*/locations/*/clusters/*`
        #       - `projects/*/zones/*/clusters/*`
        #
        #     Inherited from parent RestorePlan's
        #     {::Google::Cloud::GkeBackup::V1::RestorePlan#cluster cluster} value.
        # @!attribute [r] restore_config
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig]
        #     Output only. Configuration of the Restore.  Inherited from parent
        #     RestorePlan's
        #     {::Google::Cloud::GkeBackup::V1::RestorePlan#restore_config restore_config}.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A set of custom labels supplied by user.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeBackup::V1::Restore::State]
        #     Output only. The current state of the Restore.
        # @!attribute [r] state_reason
        #   @return [::String]
        #     Output only. Human-readable description of why the Restore is in its
        #     current state.
        # @!attribute [r] complete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp of when the restore operation completed.
        # @!attribute [r] resources_restored_count
        #   @return [::Integer]
        #     Output only. Number of resources restored during the restore execution.
        # @!attribute [r] resources_excluded_count
        #   @return [::Integer]
        #     Output only. Number of resources excluded during the restore execution.
        # @!attribute [r] resources_failed_count
        #   @return [::Integer]
        #     Output only. Number of resources that failed to be restored during the
        #     restore execution.
        # @!attribute [r] volumes_restored_count
        #   @return [::Integer]
        #     Output only. Number of volumes restored during the restore execution.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. `etag` is used for optimistic concurrency control as a way to
        #     help prevent simultaneous updates of a restore from overwriting each other.
        #     It is strongly suggested that systems make use of the `etag` in the
        #     read-modify-write cycle to perform restore updates in order to avoid
        #     race conditions: An `etag` is returned in the response to `GetRestore`,
        #     and systems are expected to put that etag in the request to
        #     `UpdateRestore` or `DeleteRestore` to ensure that their change will be
        #     applied to the same version of the resource.
        # @!attribute [rw] filter
        #   @return [::Google::Cloud::GkeBackup::V1::Restore::Filter]
        #     Optional. Immutable. Filters resources for `Restore`. If not specified, the
        #     scope of the restore will remain the same as defined in the `RestorePlan`.
        #     If this is specified, and no resources are matched by the
        #     `inclusion_filters` or everyting is excluded by the `exclusion_filters`,
        #     nothing will be restored. This filter can only be specified if the value of
        #     {::Google::Cloud::GkeBackup::V1::RestoreConfig#namespaced_resource_restore_mode namespaced_resource_restore_mode}
        #     is set to `MERGE_SKIP_ON_CONFLICT`, `MERGE_REPLACE_VOLUME_ON_CONFLICT` or
        #     `MERGE_REPLACE_ON_CONFLICT`.
        # @!attribute [rw] volume_data_restore_policy_overrides
        #   @return [::Array<::Google::Cloud::GkeBackup::V1::VolumeDataRestorePolicyOverride>]
        #     Optional. Immutable. Overrides the volume data restore policies selected in
        #     the Restore Config for override-scoped resources.
        class Restore
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Defines the filter for `Restore`. This filter can be used to further
          # refine the resource selection of the `Restore` beyond the coarse-grained
          # scope defined in the `RestorePlan`. `exclusion_filters` take precedence
          # over `inclusion_filters`. If a resource matches both `inclusion_filters`
          # and `exclusion_filters`, it will not be restored.
          # @!attribute [rw] inclusion_filters
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::ResourceSelector>]
          #     Optional. Selects resources for restoration. If specified, only resources
          #     which match `inclusion_filters` will be selected for restoration. A
          #     resource will be selected if it matches any `ResourceSelector` of the
          #     `inclusion_filters`.
          # @!attribute [rw] exclusion_filters
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::ResourceSelector>]
          #     Optional. Excludes resources from restoration. If specified,
          #     a resource will not be restored if it matches
          #     any `ResourceSelector` of the `exclusion_filters`.
          class Filter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Possible values for state of the Restore.
          module State
            # The Restore resource is in the process of being created.
            STATE_UNSPECIFIED = 0

            # The Restore resource has been created and the associated RestoreJob
            # Kubernetes resource has been injected into target cluster.
            CREATING = 1

            # The gkebackup agent in the cluster has begun executing the restore
            # operation.
            IN_PROGRESS = 2

            # The restore operation has completed successfully. Restored workloads may
            # not yet be operational.
            SUCCEEDED = 3

            # The restore operation has failed.
            FAILED = 4

            # This Restore resource is in the process of being deleted.
            DELETING = 5
          end
        end

        # Configuration of a restore.
        # @!attribute [rw] volume_data_restore_policy
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::VolumeDataRestorePolicy]
        #     Optional. Specifies the mechanism to be used to restore volume data.
        #     Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as
        #     NO_VOLUME_DATA_RESTORATION).
        # @!attribute [rw] cluster_resource_conflict_policy
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::ClusterResourceConflictPolicy]
        #     Optional. Defines the behavior for handling the situation where
        #     cluster-scoped resources being restored already exist in the target
        #     cluster. This MUST be set to a value other than
        #     CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if
        #     {::Google::Cloud::GkeBackup::V1::RestoreConfig#cluster_resource_restore_scope cluster_resource_restore_scope}
        #     is not empty.
        # @!attribute [rw] namespaced_resource_restore_mode
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::NamespacedResourceRestoreMode]
        #     Optional. Defines the behavior for handling the situation where sets of
        #     namespaced resources being restored already exist in the target cluster.
        #     This MUST be set to a value other than
        #     NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
        # @!attribute [rw] cluster_resource_restore_scope
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::ClusterResourceRestoreScope]
        #     Optional. Identifies the cluster-scoped resources to restore from the
        #     Backup. Not specifying it means NO cluster resource will be restored.
        # @!attribute [rw] all_namespaces
        #   @return [::Boolean]
        #     Restore all namespaced resources in the Backup if set to "True".
        #     Specifying this field to "False" is an error.
        #
        #     Note: The following fields are mutually exclusive: `all_namespaces`, `selected_namespaces`, `selected_applications`, `no_namespaces`, `excluded_namespaces`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] selected_namespaces
        #   @return [::Google::Cloud::GkeBackup::V1::Namespaces]
        #     A list of selected Namespaces to restore from the Backup. The listed
        #     Namespaces and all resources contained in them will be restored.
        #
        #     Note: The following fields are mutually exclusive: `selected_namespaces`, `all_namespaces`, `selected_applications`, `no_namespaces`, `excluded_namespaces`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] selected_applications
        #   @return [::Google::Cloud::GkeBackup::V1::NamespacedNames]
        #     A list of selected ProtectedApplications to restore. The listed
        #     ProtectedApplications and all the resources to which they refer will be
        #     restored.
        #
        #     Note: The following fields are mutually exclusive: `selected_applications`, `all_namespaces`, `selected_namespaces`, `no_namespaces`, `excluded_namespaces`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] no_namespaces
        #   @return [::Boolean]
        #     Do not restore any namespaced resources if set to "True".
        #     Specifying this field to "False" is not allowed.
        #
        #     Note: The following fields are mutually exclusive: `no_namespaces`, `all_namespaces`, `selected_namespaces`, `selected_applications`, `excluded_namespaces`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] excluded_namespaces
        #   @return [::Google::Cloud::GkeBackup::V1::Namespaces]
        #     A list of selected namespaces excluded from restoration. All
        #     namespaces except those in this list will be restored.
        #
        #     Note: The following fields are mutually exclusive: `excluded_namespaces`, `all_namespaces`, `selected_namespaces`, `selected_applications`, `no_namespaces`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] substitution_rules
        #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::SubstitutionRule>]
        #     Optional. A list of transformation rules to be applied against Kubernetes
        #     resources as they are selected for restoration from a Backup. Rules are
        #     executed in order defined - this order matters, as changes made by a rule
        #     may impact the filtering logic of subsequent rules. An empty list means no
        #     substitution will occur.
        # @!attribute [rw] transformation_rules
        #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::TransformationRule>]
        #     Optional. A list of transformation rules to be applied against Kubernetes
        #     resources as they are selected for restoration from a Backup. Rules are
        #     executed in order defined - this order matters, as changes made by a rule
        #     may impact the filtering logic of subsequent rules. An empty list means no
        #     transformation will occur.
        # @!attribute [rw] volume_data_restore_policy_bindings
        #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::VolumeDataRestorePolicyBinding>]
        #     Optional. A table that binds volumes by their scope to a restore policy.
        #     Bindings must have a unique scope. Any volumes not scoped in the bindings
        #     are subject to the policy defined in volume_data_restore_policy.
        # @!attribute [rw] restore_order
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::RestoreOrder]
        #     Optional. RestoreOrder contains custom ordering to use on a Restore.
        class RestoreConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # This is a direct map to the Kubernetes GroupKind type
          # [GroupKind](https://godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind)
          # and is used for identifying specific "types" of resources to restore.
          # @!attribute [rw] resource_group
          #   @return [::String]
          #     Optional. API group string of a Kubernetes resource, e.g.
          #     "apiextensions.k8s.io", "storage.k8s.io", etc.
          #     Note: use empty string for core API group
          # @!attribute [rw] resource_kind
          #   @return [::String]
          #     Optional. Kind of a Kubernetes resource, must be in UpperCamelCase
          #     (PascalCase) and singular form. E.g. "CustomResourceDefinition",
          #     "StorageClass", etc.
          class GroupKind
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Defines the scope of cluster-scoped resources to restore.
          #
          # Some group kinds are not reasonable choices for a restore, and will cause
          # an error if selected here. Any scope selection that would restore
          # "all valid" resources automatically excludes these group kinds.
          # - gkebackup.gke.io/BackupJob
          # - gkebackup.gke.io/RestoreJob
          # - metrics.k8s.io/NodeMetrics
          # - migration.k8s.io/StorageState
          # - migration.k8s.io/StorageVersionMigration
          # - Node
          # - snapshot.storage.k8s.io/VolumeSnapshotContent
          # - storage.k8s.io/CSINode
          #
          # Some group kinds are driven by restore configuration elsewhere,
          # and will cause an error if selected here.
          # - Namespace
          # - PersistentVolume
          # @!attribute [rw] selected_group_kinds
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind>]
          #     Optional. A list of cluster-scoped resource group kinds to restore from
          #     the backup. If specified, only the selected resources will be restored.
          #     Mutually exclusive to any other field in the message.
          # @!attribute [rw] excluded_group_kinds
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind>]
          #     Optional. A list of cluster-scoped resource group kinds to NOT restore
          #     from the backup. If specified, all valid cluster-scoped resources will be
          #     restored except for those specified in the list.
          #     Mutually exclusive to any other field in the message.
          # @!attribute [rw] all_group_kinds
          #   @return [::Boolean]
          #     Optional. If True, all valid cluster-scoped resources will be restored.
          #     Mutually exclusive to any other field in the message.
          # @!attribute [rw] no_group_kinds
          #   @return [::Boolean]
          #     Optional. If True, no cluster-scoped resources will be restored.
          #     This has the same restore scope as if the message is not defined.
          #     Mutually exclusive to any other field in the message.
          class ClusterResourceRestoreScope
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A transformation rule to be applied against Kubernetes resources as they
          # are selected for restoration from a Backup. A rule contains both filtering
          # logic (which resources are subject to substitution) and substitution logic.
          # @!attribute [rw] target_namespaces
          #   @return [::Array<::String>]
          #     Optional. (Filtering parameter) Any resource subject to substitution must
          #     be contained within one of the listed Kubernetes Namespace in the Backup.
          #     If this field is not provided, no namespace filtering will be performed
          #     (all resources in all Namespaces, including all cluster-scoped resources,
          #     will be candidates for substitution).
          #     To mix cluster-scoped and namespaced resources in the same rule, use an
          #     empty string ("") as one of the target namespaces.
          # @!attribute [rw] target_group_kinds
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind>]
          #     Optional. (Filtering parameter) Any resource subject to substitution must
          #     belong to one of the listed "types". If this field is not provided, no
          #     type filtering will be performed (all resources of all types matching
          #     previous filtering parameters will be candidates for substitution).
          # @!attribute [rw] target_json_path
          #   @return [::String]
          #     Required. This is a [JSONPath]
          #     (https://kubernetes.io/docs/reference/kubectl/jsonpath/)
          #     expression that matches specific fields of candidate
          #     resources and it operates as both a filtering parameter (resources that
          #     are not matched with this expression will not be candidates for
          #     substitution) as well as a field identifier (identifies exactly which
          #     fields out of the candidate resources will be modified).
          # @!attribute [rw] original_value_pattern
          #   @return [::String]
          #     Optional. (Filtering parameter) This is a [regular expression]
          #     (https://en.wikipedia.org/wiki/Regular_expression)
          #     that is compared against the fields matched by the target_json_path
          #     expression (and must also have passed the previous filters).
          #     Substitution will not be performed against fields whose
          #     value does not match this expression. If this field is NOT specified,
          #     then ALL fields matched by the target_json_path expression will undergo
          #     substitution. Note that an empty (e.g., "", rather than unspecified)
          #     value for this field will only match empty fields.
          # @!attribute [rw] new_value
          #   @return [::String]
          #     Optional. This is the new value to set for any fields that pass the
          #     filtering and selection criteria. To remove a value from a Kubernetes
          #     resource, either leave this field unspecified, or set it to the empty
          #     string ("").
          class SubstitutionRule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # TransformationRuleAction defines a TransformationRule action based on the
          # JSON Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)
          # @!attribute [rw] op
          #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::TransformationRuleAction::Op]
          #     Required. op specifies the operation to perform.
          # @!attribute [rw] from_path
          #   @return [::String]
          #     Optional. A string containing a JSON Pointer value that references the
          #     location in the target document to move the value from.
          # @!attribute [rw] path
          #   @return [::String]
          #     Optional. A string containing a JSON-Pointer value that references a
          #     location within the target document where the operation is performed.
          # @!attribute [rw] value
          #   @return [::String]
          #     Optional. A string that specifies the desired value in string format to
          #     use for transformation.
          class TransformationRuleAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Possible values for operations of a transformation rule action.
            module Op
              # Unspecified operation
              OP_UNSPECIFIED = 0

              # The "remove" operation removes the value at the target location.
              REMOVE = 1

              # The "move" operation removes the value at a specified location and
              # adds it to the target location.
              MOVE = 2

              # The "copy" operation copies the value at a specified location to the
              # target location.
              COPY = 3

              # The "add" operation performs one of the following functions,
              # depending upon what the target location references:
              # 1. If the target location specifies an array index, a new value is
              # inserted into the array at the specified index.
              # 2. If the target location specifies an object member that does not
              # already exist, a new member is added to the object.
              # 3. If the target location specifies an object member that does exist,
              # that member's value is replaced.
              ADD = 4

              # The "test" operation tests that a value at the target location is
              # equal to a specified value.
              TEST = 5

              # The "replace" operation replaces the value at the target location
              # with a new value.  The operation object MUST contain a "value" member
              # whose content specifies the replacement value.
              REPLACE = 6
            end
          end

          # ResourceFilter specifies matching criteria to limit the scope of a
          # change to a specific set of kubernetes resources that are selected for
          # restoration from a backup.
          # @!attribute [rw] namespaces
          #   @return [::Array<::String>]
          #     Optional. (Filtering parameter) Any resource subject to transformation
          #     must be contained within one of the listed Kubernetes Namespace in the
          #     Backup. If this field is not provided, no namespace filtering will be
          #     performed (all resources in all Namespaces, including all cluster-scoped
          #     resources, will be candidates for transformation).
          # @!attribute [rw] group_kinds
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind>]
          #     Optional. (Filtering parameter) Any resource subject to transformation
          #     must belong to one of the listed "types". If this field is not provided,
          #     no type filtering will be performed (all resources of all types matching
          #     previous filtering parameters will be candidates for transformation).
          # @!attribute [rw] json_path
          #   @return [::String]
          #     Optional. This is a [JSONPath]
          #     (https://github.com/json-path/JsonPath/blob/master/README.md)
          #     expression that matches specific fields of candidate
          #     resources and it operates as a filtering parameter (resources that
          #     are not matched with this expression will not be candidates for
          #     transformation).
          class ResourceFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A transformation rule to be applied against Kubernetes resources as they
          # are selected for restoration from a Backup. A rule contains both filtering
          # logic (which resources are subject to transform) and transformation logic.
          # @!attribute [rw] field_actions
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::TransformationRuleAction>]
          #     Required. A list of transformation rule actions to take against candidate
          #     resources. Actions are executed in order defined - this order matters, as
          #     they could potentially interfere with each other and the first operation
          #     could affect the outcome of the second operation.
          # @!attribute [rw] resource_filter
          #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::ResourceFilter]
          #     Optional. This field is used to specify a set of fields that should be
          #     used to determine which resources in backup should be acted upon by the
          #     supplied transformation rule actions, and this will ensure that only
          #     specific resources are affected by transformation rule actions.
          # @!attribute [rw] description
          #   @return [::String]
          #     Optional. The description is a user specified string description of the
          #     transformation rule.
          class TransformationRule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Binds resources in the scope to the given VolumeDataRestorePolicy.
          # @!attribute [rw] policy
          #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::VolumeDataRestorePolicy]
          #     Required. The VolumeDataRestorePolicy to apply when restoring volumes in
          #     scope.
          # @!attribute [rw] volume_type
          #   @return [::Google::Cloud::GkeBackup::V1::VolumeTypeEnum::VolumeType]
          #     The volume type, as determined by the PVC's bound PV,
          #     to apply the policy to.
          class VolumeDataRestorePolicyBinding
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Allows customers to specify dependencies between resources
          # that Backup for GKE can use to compute a resasonable restore order.
          # @!attribute [rw] group_kind_dependencies
          #   @return [::Array<::Google::Cloud::GkeBackup::V1::RestoreConfig::RestoreOrder::GroupKindDependency>]
          #     Optional. Contains a list of group kind dependency pairs provided
          #     by the customer, that is used by Backup for GKE to
          #     generate a group kind restore order.
          class RestoreOrder
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Defines a dependency between two group kinds.
            # @!attribute [rw] satisfying
            #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind]
            #     Required. The satisfying group kind must be restored first
            #     in order to satisfy the dependency.
            # @!attribute [rw] requiring
            #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind]
            #     Required. The requiring group kind requires that the other
            #     group kind be restored first.
            class GroupKindDependency
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Defines how volume data should be restored.
          module VolumeDataRestorePolicy
            # Unspecified (illegal).
            VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED = 0

            # For each PVC to be restored, create a new underlying volume and PV
            # from the corresponding VolumeBackup contained within the Backup.
            RESTORE_VOLUME_DATA_FROM_BACKUP = 1

            # For each PVC to be restored, attempt to reuse the original PV contained
            # in the Backup (with its original underlying volume). This option
            # is likely only usable when restoring a workload to its original cluster.
            REUSE_VOLUME_HANDLE_FROM_BACKUP = 2

            # For each PVC to be restored, create PVC without any particular
            # action to restore data. In this case, the normal Kubernetes provisioning
            # logic would kick in, and this would likely result in either dynamically
            # provisioning blank PVs or binding to statically provisioned PVs.
            NO_VOLUME_DATA_RESTORATION = 3
          end

          # Defines the behavior for handling the situation where cluster-scoped
          # resources being restored already exist in the target cluster.
          module ClusterResourceConflictPolicy
            # Unspecified. Only allowed if no cluster-scoped resources will be
            # restored.
            CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED = 0

            # Do not attempt to restore the conflicting resource.
            USE_EXISTING_VERSION = 1

            # Delete the existing version before re-creating it from the Backup.
            # This is a dangerous option which could cause unintentional
            # data loss if used inappropriately. For example, deleting a CRD will
            # cause Kubernetes to delete all CRs of that type.
            USE_BACKUP_VERSION = 2
          end

          # Defines the behavior for handling the situation where sets of namespaced
          # resources being restored already exist in the target cluster.
          module NamespacedResourceRestoreMode
            # Unspecified (invalid).
            NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED = 0

            # When conflicting top-level resources (either Namespaces or
            # ProtectedApplications, depending upon the scope) are encountered, this
            # will first trigger a delete of the conflicting resource AND ALL OF ITS
            # REFERENCED RESOURCES (e.g., all resources in the Namespace or all
            # resources referenced by the ProtectedApplication) before restoring the
            # resources from the Backup. This mode should only be used when you are
            # intending to revert some portion of a cluster to an earlier state.
            DELETE_AND_RESTORE = 1

            # If conflicting top-level resources (either Namespaces or
            # ProtectedApplications, depending upon the scope) are encountered at the
            # beginning of a restore process, the Restore will fail.  If a conflict
            # occurs during the restore process itself (e.g., because an out of band
            # process creates conflicting resources), a conflict will be reported.
            FAIL_ON_CONFLICT = 2

            # This mode merges the backup and the target cluster and skips the
            # conflicting resources. If a single resource to restore exists in the
            # cluster before restoration, the resource will be skipped, otherwise it
            # will be restored.
            MERGE_SKIP_ON_CONFLICT = 3

            # This mode merges the backup and the target cluster and skips the
            # conflicting resources except volume data. If a PVC to restore already
            # exists, this mode will restore/reconnect the volume without overwriting
            # the PVC. It is similar to MERGE_SKIP_ON_CONFLICT except that it will
            # apply the volume data policy for the conflicting PVCs:
            # - RESTORE_VOLUME_DATA_FROM_BACKUP: restore data only and respect the
            #   reclaim policy of the original PV;
            # - REUSE_VOLUME_HANDLE_FROM_BACKUP: reconnect and respect the reclaim
            #   policy of the original PV;
            # - NO_VOLUME_DATA_RESTORATION: new provision and respect the reclaim
            #   policy of the original PV.
            # Note that this mode could cause data loss as the original PV can be
            # retained or deleted depending on its reclaim policy.
            MERGE_REPLACE_VOLUME_ON_CONFLICT = 4

            # This mode merges the backup and the target cluster and replaces the
            # conflicting resources with the ones in the backup. If a single resource
            # to restore exists in the cluster before restoration, the resource will be
            # replaced with the one from the backup. To replace an existing resource,
            # the first attempt is to update the resource to match the one from the
            # backup; if the update fails, the second attempt is to delete the resource
            # and restore it from the backup.
            # Note that this mode could cause data loss as it replaces the existing
            # resources in the target cluster, and the original PV can be retained or
            # deleted depending on its reclaim policy.
            MERGE_REPLACE_ON_CONFLICT = 5
          end
        end

        # Defines a selector to identify a single or a group of resources.
        # Conditions in the selector are optional, but at least one field
        # should be set to a non-empty value. If a condition is not specified,
        # no restrictions will be applied on that dimension.
        # If more than one condition is specified, a resource will be selected
        # if and only if all conditions are met.
        # @!attribute [rw] group_kind
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::GroupKind]
        #     Optional. Selects resources using their Kubernetes GroupKinds. If
        #     specified, only resources of provided GroupKind will be selected.
        # @!attribute [rw] name
        #   @return [::String]
        #     Optional. Selects resources using their resource names. If specified,
        #     only resources with the provided name will be selected.
        # @!attribute [rw] namespace
        #   @return [::String]
        #     Optional. Selects resources using their namespaces. This only applies to
        #     namespace scoped resources and cannot be used for selecting
        #     cluster scoped resources. If specified, only resources in the provided
        #     namespace will be selected. If not specified, the filter will apply to
        #     both cluster scoped and namespace scoped resources (e.g. name or label).
        #     The [Namespace](https://pkg.go.dev/k8s.io/api/core/v1#Namespace) resource
        #     itself will be restored if and only if any resources within the namespace
        #     are restored.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Selects resources using Kubernetes
        #     [labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/).
        #     If specified, a resource will be selected if and only if the resource
        #     has all of the provided labels and all the label values match.
        class ResourceSelector
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Defines an override to apply a VolumeDataRestorePolicy for scoped resources.
        # @!attribute [rw] policy
        #   @return [::Google::Cloud::GkeBackup::V1::RestoreConfig::VolumeDataRestorePolicy]
        #     Required. The VolumeDataRestorePolicy to apply when restoring volumes in
        #     scope.
        # @!attribute [rw] selected_pvcs
        #   @return [::Google::Cloud::GkeBackup::V1::NamespacedNames]
        #     A list of PVCs to apply the policy override to.
        class VolumeDataRestorePolicyOverride
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
