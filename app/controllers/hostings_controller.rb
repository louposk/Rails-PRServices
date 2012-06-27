class HostingsController < ApplicationController

  # GET /hostings
  # GET /hostings.json
  def index
    @hostings = Hosting.fing(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostings }
    end
  end

  # GET /hostings/1
  # GET /hostings/1.json
  def show
    @hosting = Hosting.find(params[:id])

    @exp = @hosting.expiration

    # @new_exp = @exp - 1.month
    # @now = Time.now
    # previous = @exp.prev_month
    # if previous.month==Date.now 
    #   @sendmail = "true"
    # else 
    #   @sendmail = "false"
    # exp.prev_month


    # @diafora = @hosting.expiration.to_time - @hosting.registration


     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hosting }
    end
  end

  # GET /hostings/new
  # GET /hostings/new.json
  def new
    @hosting = Hosting.new
    # @customers = Customer.all;

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hosting }
    end
  end

  # GET /hostings/1/edit
  def edit
    @hosting = Hosting.find(params[:id])
  end

  # POST /hostings
  # POST /hostings.json
  def create
    @hosting = Hosting.new(params[:hosting])

    respond_to do |format|
      if @hosting.save
        format.html { redirect_to @hosting, notice: 'Hosting was successfully created.' }
        format.json { render json: @hosting, status: :created, location: @hosting }
      else
        format.html { render action: "new" }
        format.json { render json: @hosting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostings/1
  # PUT /hostings/1.json
  def update
    @hosting = Hosting.find(params[:id])

    respond_to do |format|
      if @hosting.update_attributes(params[:hosting])
        format.html { redirect_to @hosting, notice: 'Hosting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hosting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostings/1
  # DELETE /hostings/1.json
  def destroy
    @hosting = Hosting.find(params[:id])
    @hosting.destroy

    respond_to do |format|
      format.html { redirect_to hostings_url, alert: 'Deleted!' }
      format.json { head :no_content }
    end
  end

  def all_hostings
    @hostings = Hosting.all
    @now = DateTime.now


    @hostings.each do |hosting|
      @exp = hosting.expiration

      send_mail_one_month_before_expiration(@exp,@now,hosting)

    end
        #Checks for expiration dates and send email
   end

  def email
    @hostings = Hosting.all
    @now = DateTime.now

    @hostings.each do |hosting|
      exp = hosting.expiration
      now = @now

        #Αποστολή email ενα μήνα πριν τη λήξη
        if exp.year == now.year && exp.day == now.day && exp.month-1 == now.month
              @hosting = hosting
              HostingMailer.hosting_expires(@hosting).deliver
        end

    end 

  end

  
end
