class SpeciesController < ApplicationController
  def index
    @specieses = Species.all
  end

  # Person.find_each.with_index do |person, index|
  #   person.award_trophy(index + 1)
  # end


  def create
    @basset = Species.new
    @basset.name = params[:animal_name]
    @basset.save
    redirect_to "/"

  end

  def edit
    render '/species/edit'
  end

  def delete
  end

  def update
      item_id = Species.find_by item: (params[:itemid].to_s)
      item_id.item = params[:change]
      item_id.save
  end
end
