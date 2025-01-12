Rails.application.routes.draw do


  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_id", {:controller => "users", :action => "details"})
  post("/create_user", {:controller => "users", :action => "create"})
  post("/update_user/:path_id", {:controller => "users", :action => "update"})




  get("/photos", {:controller => "photos", :action => "index"})
  post("/create_photo", {:controller => "photos", :action => "create"})
  get("/photos/:path_id", {:controller => "photos", :action => "details"})
  get("/delete_photo/:path_id", {:controller => "photos", :action => "destroy"})
  post("/update_photo/:path_id", {:controller => "photos", :action => "update"})



end
