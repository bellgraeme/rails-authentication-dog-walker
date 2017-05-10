class OwnersController < ApplicationController

  before_action :authenticate_owner!

  def index
    owners = current_owner
    render json: owners.as_json({

      only: [:name],

      include: {
        pets:{
          only: [:name, :breed]
        }
      }

      })
  end

end