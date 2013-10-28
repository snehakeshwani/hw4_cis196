class PartListsController < ApplicationController
    def part_lists_params
        params.require(:part_list).permit(:title,:task_id, :task)
    end
    
    def index
        @part_lists = PartList.all
    end

    def new
        @part_list = PartList.new
    end
    
    def create
        @part_list = PartList.new(part_lists_params)
        if @part_list.save
            redirect_to part_lists_path
        else
            render 'new'
        end
    end
    
    def update
        @part_list = PartList.find(params[:id])
        if @part_list.update_attributes(params[:task])
            redirect_to part_list_path(@part_list.id)
            else
            render 'edit'
        end
    end

    def destroy
        @part_list = PartList.find(params[:id])
        @part_list.destroy
        redirect_to part_lists_path
    end


    def edit
        @part_list = PartList.find(params[:id])
    end

    def show
        @part_list = PartList.find(params[:id])
    end
end
