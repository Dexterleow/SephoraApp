class SubSubcategoryController < ApplicationController
  def index
    @sub_subcategory = SubSubcategory.all
  end
end
