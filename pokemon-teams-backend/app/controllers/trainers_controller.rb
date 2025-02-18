class TrainersController < ApplicationController
    def index
        trainers = Trainer.all
        render json: trainers.to_json(:include => {
            :pokemons => { :except => [:created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])
    end
    
    def show
        trainer = Trainer.find_by(id: params[:id])
        render json: trainer.to_json(:include => {
            :pokemons => { :except => [:created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])
    end
end
