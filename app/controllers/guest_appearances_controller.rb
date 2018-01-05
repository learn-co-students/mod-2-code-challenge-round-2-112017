class GuestAppearancesController < ApplicationController

  def new
    @guest_appearance = GuestAppearance.new
  end

  def create
    @guest_appearance = GuestAppearance.new(guest_appearance_params)
    if @guest_appearance.save
      redirect_to guest_path(@guest_appearance.guest)
    else
      render :new
    end
  end

  def guest_appearance_params
    params.require(:guest_appearance).permit(:episode_id, :guest_id, :rating)
  end
end
