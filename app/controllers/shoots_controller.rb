class ShootsController < ApplicationController
  def index
    @shoots = Shoot.all
   end

   def show
    @shoots = Shoot.find(params[:id])
   end

   def new
    @shoot = Shoot.new
   end

   def create
     @shoot = Shoot.new(shoot_params)

     respond_to do |format|
       if @shoot.save
       format.html { redirect_to @shoot,
         notice: 'Shoot request was successfully created.' }
        format.json { render :show, status: :created,
        location: @shoot }
else
  format.html { render :new }
  format.json { render json: @shoot.errors,
  status: :unprocessable_entity }
    end
  end
end

   def edit
     @shoot = Shoot.find(params[:id])
   end

   def update
  respond_to do |format|
    if @shoot.update(shoot_params)
        format.html { redirect_to @shoot, 
          notice: 'Shoot request was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoot }
      else
        format.html { render :edit } 
        format.json { render json: @shoot.errors,
          status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @shoot.destroy
    respond_to do |format|
      format.html { redirect_to shoots_url,
        notice: 'Shoot request was successfully destroyed.' }
      format.json { head :no_content }
   end
end

private
    # Use callbacks to share common setup or constraints between actions.
def set_shoot
@shoot = Shoot.find(params[:id])
end
# Never trust parameters from the scary internet, only allow the white # list through.
def shoot_param
   params.require(:shoot).permit(:slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline)
end
