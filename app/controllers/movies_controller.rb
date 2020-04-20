class MoviesController < ApplicationController

    def index
        @movies = Movie.all()
    end

    def show
        @movie = Movie.find(params["id"])
    end

    def create
        new_movie = Movie.create(title: params["title"], duration: params["duration"].to_i)
        redirect_to movies_path
    end

    def update
        updated_movie = Movie.update(params["id"], title: params["title"], duration: params["duration"])
        render json: updated_movie
    end

    def destroy
        destroyed_movie = Movie.find(params["id"]).destroy
        render json: destroyed_movie
    end

    def new

    end

    def edit
        @movie = Movie.find(params["id"])
    end    
end