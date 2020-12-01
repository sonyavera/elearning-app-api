class LibraryController < ApplicationController

    def index
        User.all
    end

    # def show
    #     User.find_by_id
    # end

  end