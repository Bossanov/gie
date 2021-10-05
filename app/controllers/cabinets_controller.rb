class CabinetsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index,:show, :new]

  # GET /cabinets or /cabinets.json
  def index
    @cabinets = Cabinet.all


    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @cabinets.geocoded.map do |cabinet|
      {
        lat: cabinet.latitude,
        lng: cabinet.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cabinet: cabinet })

      }
    end
  end



  # GET /cabinets/1 or /cabinets/1.json
  def show

    @cabinets = Cabinet.all


    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @cabinets.geocoded.map do |cabinet|
      {
        lat: cabinet.latitude,
        lng: cabinet.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cabinet: cabinet })

      }
    end

  end

  # GET /cabinets/new
  def new
    @cabinet = Cabinet.new
  end

  # GET /cabinets/1/edit
  def edit
  end

  # POST /cabinets or /cabinets.json
  def create
    @cabinet = Cabinet.new(cabinet_params)


      if @cabinet.save
        flash[:notice] = 'Votre profil a correctement été créé. Il sera validé par un admin, merci.'
        redirect_to cabinet_path(@cabinet)
      else
        flash[:notice] = 'Votre profil a correctement été créé. Il sera validé par un admin, merci.'
        redirect_to new_cabinet_path

    end
  end

  # PATCH/PUT /cabinets/1 or /cabinets/1.json
  def update
    respond_to do |format|
      if @cabinet.update(cabinet_params)
        format.html { redirect_to @cabinet, notice: "Les modifications ont été enregistrées dans la base de données" }
        redirect_to cabinet_path(@cabinet)
      else
        format.html { render :edit, status: :unprocessable_entity }
        cabinet_path(@cabinet)
      end
    end
  end

  # DELETE /cabinets/1 or /cabinets/1.json
  def destroy
    @cabinet.destroy
    respond_to do |format|
      format.html { redirect_to cabinets_url, notice: "Le cabinet a été effacé de la base de données" }
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabinet

      @cabinet = Cabinet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cabinet_params
      params.require(:cabinet).permit(:name, :address,:phone, :description, photos: [])
    end
end
