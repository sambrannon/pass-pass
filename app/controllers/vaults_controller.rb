class VaultsController < ApplicationController

  def index
  end

  def create
    @vault = Vault.new(vault_params)
    if @vault.save
      # show page
    else
      # show error
    end
  end

  def show
    @vault = Vault.where(token: params[:id]).first
  end

  private

  def vault_params
    params.require(:vault).permit(:password)
  end
end
