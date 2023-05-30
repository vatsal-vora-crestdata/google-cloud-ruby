# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/widget.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/monitoring/dashboard/v1/alertchart_pb'
require 'google/monitoring/dashboard/v1/collapsible_group_pb'
require 'google/monitoring/dashboard/v1/logs_panel_pb'
require 'google/monitoring/dashboard/v1/scorecard_pb'
require 'google/monitoring/dashboard/v1/table_pb'
require 'google/monitoring/dashboard/v1/text_pb'
require 'google/monitoring/dashboard/v1/xychart_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n+google/monitoring/dashboard/v1/widget.proto\x12\x1egoogle.monitoring.dashboard.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a/google/monitoring/dashboard/v1/alertchart.proto\x1a\x36google/monitoring/dashboard/v1/collapsible_group.proto\x1a/google/monitoring/dashboard/v1/logs_panel.proto\x1a.google/monitoring/dashboard/v1/scorecard.proto\x1a*google/monitoring/dashboard/v1/table.proto\x1a)google/monitoring/dashboard/v1/text.proto\x1a,google/monitoring/dashboard/v1/xychart.proto\x1a\x1bgoogle/protobuf/empty.proto\"\xa4\x04\n\x06Widget\x12\x12\n\x05title\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12;\n\x08xy_chart\x18\x02 \x01(\x0b\x32\'.google.monitoring.dashboard.v1.XyChartH\x00\x12>\n\tscorecard\x18\x03 \x01(\x0b\x32).google.monitoring.dashboard.v1.ScorecardH\x00\x12\x34\n\x04text\x18\x04 \x01(\x0b\x32$.google.monitoring.dashboard.v1.TextH\x00\x12\'\n\x05\x62lank\x18\x05 \x01(\x0b\x32\x16.google.protobuf.EmptyH\x00\x12\x41\n\x0b\x61lert_chart\x18\x07 \x01(\x0b\x32*.google.monitoring.dashboard.v1.AlertChartH\x00\x12L\n\x11time_series_table\x18\x08 \x01(\x0b\x32/.google.monitoring.dashboard.v1.TimeSeriesTableH\x00\x12M\n\x11\x63ollapsible_group\x18\t \x01(\x0b\x32\x30.google.monitoring.dashboard.v1.CollapsibleGroupH\x00\x12?\n\nlogs_panel\x18\n \x01(\x0b\x32).google.monitoring.dashboard.v1.LogsPanelH\x00\x42\t\n\x07\x63ontentB\xf4\x01\n\"com.google.monitoring.dashboard.v1B\x0bWidgetProtoP\x01ZFcloud.google.com/go/monitoring/dashboard/apiv1/dashboardpb;dashboardpb\xaa\x02$Google.Cloud.Monitoring.Dashboard.V1\xca\x02$Google\\Cloud\\Monitoring\\Dashboard\\V1\xea\x02(Google::Cloud::Monitoring::Dashboard::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.monitoring.dashboard.v1.XyChart", "google/monitoring/dashboard/v1/xychart.proto"],
    ["google.monitoring.dashboard.v1.Scorecard", "google/monitoring/dashboard/v1/scorecard.proto"],
    ["google.monitoring.dashboard.v1.Text", "google/monitoring/dashboard/v1/text.proto"],
    ["google.protobuf.Empty", "google/protobuf/empty.proto"],
    ["google.monitoring.dashboard.v1.AlertChart", "google/monitoring/dashboard/v1/alertchart.proto"],
    ["google.monitoring.dashboard.v1.TimeSeriesTable", "google/monitoring/dashboard/v1/table.proto"],
    ["google.monitoring.dashboard.v1.CollapsibleGroup", "google/monitoring/dashboard/v1/collapsible_group.proto"],
    ["google.monitoring.dashboard.v1.LogsPanel", "google/monitoring/dashboard/v1/logs_panel.proto"],
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
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          Widget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.Widget").msgclass
        end
      end
    end
  end
end
