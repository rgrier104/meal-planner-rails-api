class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :day, :meal_type, :recipe_id, :meal_plan_id
  belongs_to :recipe
  belongs_to :meal_plan
end
