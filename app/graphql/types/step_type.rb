module Types
  class StepType < Types::BaseObject
    field :id, ID, null: false
    field :project_id, Integer, null: true
    field :description, String, null: true
    field :step, Integer, null: true
    field :project, [ProjectType], null:true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
