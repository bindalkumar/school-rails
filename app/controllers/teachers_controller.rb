class TeachersController < ApplicationController
    #skip_before_action :verify_authenticity_token

    def create
        render plain: "Create route"
    end

    def destroy
        render plain: "Delete route"
    end

end
