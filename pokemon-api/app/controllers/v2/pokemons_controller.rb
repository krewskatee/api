class V2::PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def create
    @pokemon = Pokemon.new(
                            name: params[:name],
                            location: params[:location],
                            move: params[:move]
                            )
    @pokemon.save
    render :show
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon.assign_attributes(
                            name: params[:name],
                            location: params[:location],
                            move: params[:move]
                            )
    @pokemon.save
    render :show
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    render json: {message: "pokemon destroyed"}, code: 200
  end

end
