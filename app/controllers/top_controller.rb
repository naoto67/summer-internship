class TopController <  ApplicationController
  # GET /recipes
  def index
    @recipes = Recipe.all
  end
  # GET /recipes/:id
  def show
  end
  # GET /recipes/new
  def new
  end
  # GET /recipes/:id/edit
  def edit
  end
  # POST /recipes
  def create
  end
  # PUT/PATCH recipes/:id
  def update
  end
  # DELETE recipes/:id
  def destroy
  end
end
