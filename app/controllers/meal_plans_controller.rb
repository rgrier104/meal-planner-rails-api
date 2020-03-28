class MealPlansController < ApplicationController

    def index
        meal_plans = MealPlan.all
        options = {
            include: [:meals, :recipes]
        }

        render json: MealPlanSerializer.new(meal_plans, options)
    end

    def create
        meal_plan = MealPlan.create(meal_plan_params)

        render json: meal_plan
    end

    def update
        meal_plan = MealPlan.find_by_id(params[:id])
        meal_plan.update(notes: params[:notes])

        render json: meal_plan
    end

    def show
        meal_plan = MealPlan.find_by_id(params[:id])
        options = {
            include: [:meals, :recipes]
        }
        render json: MealPlanSerializer.new(meal_plan, options)
    end

    private

    def meal_plan_params
        params.require(:meal_plan).permit(:name, :notes)
    end
end
