class InstructorsController < ApplicationController
    def create 
        render json: Instructor.create!(i_params), status: :created
    end

    def index
        render json: Instructor.all, status: :ok
    end

    def show
        render json: Instructor.find(params[:id]), status: :ok
    end

    def update
        i = Instructor.find(params[:id])
        i.update!(i_params)
        render json: i, status: :ok
    end

    def destroy
        Instructor.find(params[:id]).destroy 
        head :no_content
    end

    private

    def i_params
        params.permit(:name)
    end
end
