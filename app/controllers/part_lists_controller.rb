class PartListsController < ApplicationController
    def part_lists_params
        params.require(:part_list).permit(:title,:complete,:priority,:task_id, :task)
    end
    
    def index
        if current_user
            @part_lists = PartList.incomplete
            @message = ""
        else
            @part_lists = []
            @message = "can't view/add parts unless signed in"
        end
    end

    def new
        @part_list = PartList.new
    end
    
    def create
        if current_user
            @part_list = PartList.new(part_lists_params)
            if @part_list.save
                redirect_to part_lists_path
            else
                render 'new'
            end
        else
            @message = "can't view/add parts unless signed in"
            redirect_to part_lists_path
        end
    end
    
    def update
        @part_list = PartList.find(params[:id])
        if @part_list.update_attributes(part_lists_params)
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
