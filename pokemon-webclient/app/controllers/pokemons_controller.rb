class PokemonsController < ApplicationController

  def index
    @pokemons = Unirest.get("#{ENV['HOST_NAME']}/v2/pokemons.json").body
  end

  def show
    @pokemon = Unirest.get("#{ENV['HOST_NAME']}/v2/pokemons/#{params[:id]}.json").body

  end

  def create
    Unirest.post("#{ENV['HOST_NAME']}/v2/pokemons.json", headers: { "Accept" => "application/json" }, parameters: {:name => params[:name], :location => params[:location], :move => params[:move]}).body
  end

  def update
    Unirest.patch("#{ENV['HOST_NAME']}/v2/pokemons/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {:name => params[:name], :location => params[:location], :move => params[:move]}).body
    redirect_to "/"
  end

  def destroy
    Unirest.delete("#{ENV['HOST_NAME']}/v2/pokemons/#{params[:id]}.json", headers: { "Accept" => "application/json" }).body
  end

end
