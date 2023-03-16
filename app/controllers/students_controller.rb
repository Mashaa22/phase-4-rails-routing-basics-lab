class StudentsController < ApplicationController
    def index
        grades = Student.all
        render json: grades
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end
end
