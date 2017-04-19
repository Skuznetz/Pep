class CategoriesController < ApplicationController
  before_action :set_category,only: [:show,:edit,:update,:destroy]
  
end