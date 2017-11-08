Rails.application.routes.draw do
  resources :loginusers
 post "/loginusers" => "loginusers#create"
 get "/driver/check_duplicate" => "loginusers#check"
 get "/driver/:userid/get_name" => "loginusers#get_name"
 
 get "/driver/:habbitid/get_habbitname" => "myhabbit#get_habbitname"
 get "/driver/get_list" => "myhabbit#send_list"
 
 #fcm
  get 'fcm/send' => 'fcm#sendMessage'
  get 'fcm/group/:id' => 'fcm#sendMessageToGroup'
  get 'fcm/one/:id' => 'fcm#sendMessageToOne'
end
