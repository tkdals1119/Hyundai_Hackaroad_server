class MyhabbitController < ApplicationController
    
    def get_habbitname
        @id = params[:habbitid]
        @case="속도 위반"
        @case_latitude="35.8468290"
        @case_longtitude="127.1293630"
        
        @case2="정지선 미준수"
        
        if(@id=="1")
            Myhabbit.create(habbitname: @case, latitude: @case_latitude, longtitude: @case_longtitude)
            # @habbitname = Myhabbit.find_by(@id)
            #             render json: @habbitname
        elsif(@id=="2")
            Myhabbit.create(habbitname: @case2, latitude: @case_latitude, longtitude: @case_longtitude)
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
    
    def send_list
        @list=Myhabbit.all
        
        render json: @list
    end
end
