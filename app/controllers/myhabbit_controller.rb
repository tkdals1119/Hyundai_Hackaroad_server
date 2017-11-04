class MyhabbitController < ApplicationController
    
    def get_habbitname
        @id = params[:habbitid]
        @case="1번 케이스당"
        @case2="2번 케이스당"
        if(@id=="1")
            Myhabbit.create(habbitname: @case)
            # @habbitname = Myhabbit.find_by(@id)
            #             render json: @habbitname
        elsif(@id=="2")
            Myhabbit.create(habbitname: @case2)
        #     @habbitname = Myhabbit.find_by(@id)
        #                 render json: @habbitname
        # elsif(@id==3)
        #     @habbitname = Myhabbit.find_by(@id)
        #                 render json: @habbitname
        # else(@id==4)
        #     @habbitname = Myhabbit.find_by(@id)
        #                 render json: @habbitname
        end
    end
end
