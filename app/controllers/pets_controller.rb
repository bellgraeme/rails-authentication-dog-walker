class PetsController < ApplicationController

  def index
    pets = Pet.all
    render json: pets.as_json({

          only: [:name, :breed],

          include: {
            owner:{
              only: [:name]
            }
          }

        })
  end

  def show

    render json: Pet.find(params[:id]).as_json({
                only: [:id,:name, :breed],
                include: {
                  owner:{
                    only: [:name]
                  }
                }
      })
    
  end

end