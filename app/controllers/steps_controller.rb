class StepsController < ApplicationController
  # GET /steps
  # GET /steps.json
  before_filter :find_task
  before_filter :find_step, :only => [:show,:edit,:update, :destroy]

  # GET /steps/1
  # GET /steps/1.json
  def show

  end

  # GET /steps/new
  # GET /steps/new.json
  def new
    @step = @task.steps.build
  end

  # GET /steps/1/edit
  def edit

  end

  # POST /steps
  # POST /steps.json
  def create
    @step = @task.steps.build(params[:step])

    if @step.save
      redirect_to [@task,@step]
    else
      render :action => "new"
    end
  end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to [@task,@step], notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy

    respond_to do |format|
      format.html { redirect_to @task }
      format.json { head :no_content }
    end
  end

  private
    def find_task
      @task = Task.find(params[:task_id])
    end

    def find_step
      @step = @task.steps.find(params[:id])
    end
end
