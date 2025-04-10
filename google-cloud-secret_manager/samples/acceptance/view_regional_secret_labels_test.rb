# Copyright 2025 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "uri"

require_relative "regional_helper"

describe "#view_regional_secret_labels", :regional_secret_manager_snippet do
  it "views a regional secret labels" do
    sample = SampleLoader.load "view_regional_secret_labels.rb"

    refute_nil secret

    out, _err = capture_io do
      sample.run project_id: project_id, location_id: location_id, secret_id: secret_id
    end

    assert_match(/Regional Secret/, out)
    assert_match(/Label Key: #{Regexp.escape label_key}, Label Value: #{Regexp.escape label_value}/, out)
  end
end
