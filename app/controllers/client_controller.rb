class ClientController < ApplicationController

  def divorce_no_children_no_debts_info
  end

  def divorce_no_children_no_debts_info_document_only
    @client = Client.new
    @client_address = @client.build_address
    @spouse = @client.build_spouse
    @spouse_address = @spouse.build_address
  end

  def create_divorce_no_children_no_debts_info_document_only
  end

  def divorce_involving_debts_info
  end

  def divorce_involving_children_and_debts_info
  end
  
  private


  def client_params
    params.require(:client).permit(:name,:work_phone,:home_phone,:fax,:email,address: [:street_address,:address,:city,:state,:zipcode],spouse: [:name,:work_phone,:home_phone,:fax,:email,address: [:street_address,:address,:city,:state,:zipcode]])
  end

end

