class IterationsController < ApplicationController
  # GET /iterations
  # GET /iterations.xml
  def index
    @iterations = Iteration.all
    @stories = Story.all
    @requirements = Requirement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @iterations }
    end
  end

  # get /iterations/1
  # get /iterations/1.xml
  def show
    @iteration = Iteration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @iteration }
    end
  end

  # get /iterations/new
  # get /iterations/new.xml
  def new
    @iteration = Iteration.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @iteration }
    end
  end

  # get /iterations/1/edit
  def edit
    @iteration = Iteration.find(params[:id])
  end

  # post /iterations
  # post /iterations.xml
  def create
    @iteration = Iteration.new(params[:iteration])

    respond_to do |format|
      if @iteration.save
        format.html { redirect_to(@iteration, :notice => 'iteration was successfully created.') }
        format.xml  { render :xml => @iteration, :status => :created, :location => @iteration }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @iteration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # put /iterations/1
  # put /iterations/1.xml
  def update
    @iteration = Iteration.find(params[:id])

    respond_to do |format|
      if @iteration.update_attributes(params[:iteration])
        format.html { redirect_to(@iteration, :notice => 'iteration was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @iteration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # delete /iterations/1
  # delete /iterations/1.xml
  def destroy
    @iteration = Iteration.find(params[:id])
    @iteration.destroy

    respond_to do |format|
      format.html { redirect_to(iterations_url) }
      format.xml  { head :ok }
    end
  end
end
