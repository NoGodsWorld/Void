class VehiclesController < ApplicationController
    def new
        render "new"
    end
    
    def create
        @var=Vehicle.new
        @var.model=params["model"]
        @var.year=params["year"]
        @var.capacity=params["capacity"]
        @var.price=params["price"]
        @var.photo=params["photo"]
        if @var.save
            redirect_to vehicle_url(@var.id)#redirect_to "/photos/#{@var.id}"
        else
            render "new"
        end
    end
    
    def model
        @var=Vehicle.find_by(:id => params[:id])
        if @var.present?
            render "model"
        else
            redirect_to vehicle_url, :notice => "The record doesn't exit"
        end
    end
    
    def index
        @var=Vehicle.all
        render "index"
    end
    
end