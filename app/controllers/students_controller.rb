class StudentsController < ApplicationController
    #skip_before_action :verify_authenticity_token

    def index
        @students = Student.all
        render json: @students
    end

    def show
        @student = Student.includes(:teachers).find_by_id(params[:id])
        if (!@student.nil?)
            render json: { student: @student, assigned_teachers: @student.teachers, assigned_subjects: @student.subjects }
        else
            render json: { status: 404, error:  'Record not found' }
        end
    end

end
