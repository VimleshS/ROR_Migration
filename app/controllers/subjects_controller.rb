class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order("position ASC")
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
