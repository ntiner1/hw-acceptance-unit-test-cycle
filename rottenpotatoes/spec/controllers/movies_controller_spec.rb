require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  
  describe "GET #same_director" do
    it "returns http redirect" do
      movie = Movie.create
      get :same_director, { id: movie.id }
      expect(response).to have_http_status(:redirect)
    end
    
    it "redirect to home page with no director" do
      movie = Movie.create
      get :same_director, { id: movie.id }
      expect(response).to redirect_to(movies_path) 
    end
    
    
    it "returns http success" do
      movie = Movie.create(director: "test")
      movie2 = Movie.create(director: "test")
      get :same_director, { id: movie.id }
      expect(response).to have_http_status(:success)
    end
    
    it "redirect to same director" do
      movie = Movie.create(director: "test")
      movie2 = Movie.create(director: "test")
      get :same_director, { id: movie.id }
      expect(response).to render_template("same_director") 
    end
  end

end