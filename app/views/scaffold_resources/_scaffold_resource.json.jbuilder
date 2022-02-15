# frozen_string_literal: true

json.extract! scaffold_resource, :id, :name, :description, :created_at, :updated_at
json.url scaffold_resource_url(scaffold_resource, format: :json)
