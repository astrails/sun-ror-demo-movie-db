class MoviesController < ApplicationController
  resource_controller

  index.wants.xml { render :xml => @movies }

  show.wants.xml  { render :xml => @movie }

  create do
    flash 'Movie was successfully created.'
    wants.html { redirect_to movies_path }
    wants.xml  { render :xml => @movie, :status => :created, :location => @movie }
    failure.wants.xml  { render :xml => @movie.errors, :status => :unprocessable_entity }
  end

  update do
    flash 'Movie was successfully updated.'
    wants.xml { head :ok }
    failure.wants.xml  { render :xml => @movie.errors, :status => :unprocessable_entity }
  end

  destroy do
    wants.xml  { head :ok }
    failure.wants.xml  { render :xml => @movie.errors, :status => :unprocessable_entity }
  end

end
