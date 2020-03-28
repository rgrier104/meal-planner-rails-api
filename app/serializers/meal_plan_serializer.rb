class MealPlanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes
  has_many :meals
end
