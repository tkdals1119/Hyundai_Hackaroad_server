class MyhabbitController < ApplicationController
    
    def get_habbitname
        @id = params[:habbitid]
        @case="방지턱 과속" # 전주
        @case_latitude="35.8468290"
        @case_longtitude="127.1293630"
        
        @case2="정지선" # 청주 // 실화
        @case_latitude2="36.6367110"
        @case_longtitude2="127.4238970"
        
        @case3="경사로 주차" #전라북도 장수군
        @case_latitude3="35.6472770"
        @case_longtitude3="127.5211360"
        
        @case4="경사로 주차" # 제주도
        @case_latitude4="33.4890110"
        @case_longtitude4="126.4983020"
        
        @case5="장기 과속" # 해운대
        @case_latitude5="35.1631140"
        @case_longtitude5="129.1635510"
        
        @case6="양발 운전" # 해운대
        @case_latitude6="35.1631140"
        @case_longtitude6="129.1635510"
        
        @case7="한손 운전" # 해운대
        @case_latitude7="35.1631140"
        @case_longtitude7="129.1635510"
        
        @case8="급출발" # 해운대
        @case_latitude8="35.1631140"
        @case_longtitude8="129.1635510"
        
        if(@id=="1")
            Myhabbit.create(habbitname: @case, latitude: @case_latitude, longtitude: @case_longtitude)
            # @habbitname = Myhabbit.find_by(@id)
            #             render json: @habbitname
        elsif(@id=="2")
            Myhabbit.create(habbitname: @case2, latitude: @case_latitude2, longtitude: @case_longtitude2)
            
        elsif(@id=="3")
            Myhabbit.create(habbitname: @case3, latitude: @case_latitude3, longtitude: @case_longtitude3)
            
        elsif(@id=="4")
            Myhabbit.create(habbitname: @case4, latitude: @case_latitude4, longtitude: @case_longtitude4)
            
        elsif(@id=="5")
            Myhabbit.create(habbitname: @case5, latitude: @case_latitude5, longtitude: @case_longtitude5)
                
        elsif(@id=="6")
            Myhabbit.create(habbitname: @case6, latitude: @case_latitude6, longtitude: @case_longtitude6)
            
        elsif(@id=="7")
            Myhabbit.create(habbitname: @case7, latitude: @case_latitude7, longtitude: @case_longtitude7)
            
        elsif(@id=="8")
            Myhabbit.create(habbitname: @case8, latitude: @case_latitude8, longtitude: @case_longtitude8)
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
