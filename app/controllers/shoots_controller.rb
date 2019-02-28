class ShootsController < ApplicationController
  def list
    @shoots = Shoot.all
   end

   def show
    @shoots = Shoot.find(params[:id])
   end

   def new
    @shoots = Shoot.new
   end

   def create
     if @shoot.save
      redirect_to :action => 'list'
   else
      @shoot  = Shoot.all
      render :action => 'new'
   end
   def shoot_params
   params.require(:shoot).permit(:slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline)
end
   end

   def edit
     @shoot = Shoot.find(params[:id])
   end

   def update
     @shoot = Shoot.find(params[:id])

   if @shoot.update_attributes(shoot_param)
      redirect_to :action => 'show', :id => @shoot
   else
      @shoot = Shoot.all
      render :action => 'edit'
   end

end

def shoot_param
   params.require(:shoot).permit(:slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline)
end
   end

   def delete
     Shoot.find(params[:id]).destroy
   redirect_to :action => 'list'
   end
