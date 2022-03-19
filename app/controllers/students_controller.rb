class StudentsController < ApplicationController
    def create 
        render json: Student.create!(s_params), status: :created
    end

    def index
        render json: Student.all, status: :ok
    end

    def show
        render json: Student.find(params[:id]), status: :ok
    end

    def update
        s = Student.find(params[:id])
        s.update!(s_params)
        render json: s, status: :ok
    end

    def destroy
        Student.find(params[:id]).destroy
        head :no_content
    end

    private

    def s_params
        params.permit(:name, :major, :age, :instructor_id)
    end
end

# this is a custom override on an attribute serializer 
# def students
#     object.students.pluck(:name, :major).map{|s| "#{s[0]} studies #{s[1]}"}
# end
