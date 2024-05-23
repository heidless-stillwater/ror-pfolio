# Copyright 2022 Google, Inc
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

require_relative "./spec_helper"
require_relative "./spanner_postgresql_helper"
require_relative "../spanner_postgresql_jsonb_update_data"
require_relative "../spanner_postgresql_jsonb_query_parameter"

describe "Google Cloud Spanner Postgres examples" do
  before :each do
    cleanup_database_resources
  end

  after :each do
    cleanup_database_resources
  end

  example "spanner_postgresql_query_parameter" do
    database = create_spangres_singers_albums_database
    create_spangres_venues_table
    spanner_postgresql_jsonb_add_column project_id: @project_id,
                                         instance_id: @instance_id,
                                         database_id: @database_id
    spanner_postgresql_jsonb_update_data project_id: @project_id,
                                         instance_id: @instance_id,
                                         database_id: @database_id
    capture do
      spanner_postgresql_jsonb_query_parameter project_id: @project_id,
                                         instance_id: @instance_id,
                                         database_id: @database_id
    end

    expect(captured_output).to include "{rating: 9, open: true}"
  end
end
