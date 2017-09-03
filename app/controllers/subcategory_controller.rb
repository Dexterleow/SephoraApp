class SubcategoryController < ApplicationController
  def index
    @subcategory = Subcategory.all
  end
end
