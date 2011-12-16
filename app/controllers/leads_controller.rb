class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end
  
  def create
    @lead = Lead.new(params[:lead])
    if @lead.save
      @errors = nil
      LeadMailer.lead_notification(@lead).deliver
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Thank you for your inquiry. We will respond within 1-3 business days.'}
      end
    else
      @errors = @lead.errors.full_messages.join(', ')
      flash.now[:error] = "We seem to have hit a snag."
      respond_to do |format|
        format.html { render action: :new }
      end
    end
  end

end
