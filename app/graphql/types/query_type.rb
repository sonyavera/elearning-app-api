module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :users,[Types::UserType], null: false, description: "Returns a list of users"
    
    field :user, Types::UserType, null: true do
      description "find user by id"
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end

    field :projects, [Types::ProjectType], null: false, description: "Returns a list of projects"

    def projects
      Project.all
    end

    field :project, Types::ProjectType, null: true do
      description "find project by id"
      argument :id, ID, required: true
    end

    def project(id:)
      Project.find(id)
    end

    field :user_projects, [Types::UserProjectType], null: false, description: "Returns a list of userprojects"

    def user_projects
      UserProject.all
    end






  end
end
