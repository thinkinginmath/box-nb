class ShippingController < ApplicationController
  def receipt
    @ip = request.remote_ip

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "receipt", 
        #:layout => 'pdf',
        :template => 'shipping/receipt.pdf.erb',
        :footer => {
          :center => "Track your package for free via Boxnearby.com or via UPS/FEDEX/USPS Website."
        }
      end
    end
  end
end
