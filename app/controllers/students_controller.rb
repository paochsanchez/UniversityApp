class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
        #session[:user_id] = @student.id
        flash[:notice] = "Welcome to the UniApp #{@student.name}, you have succesfully signed up"
        redirect_to students_path
        else
        render 'new'
        end
    end

    private
    def student_params
      params.require(:student).permit(:name, :email)
    end
end
