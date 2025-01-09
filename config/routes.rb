Rails.application.routes.draw do


  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_id", {:controller => "users", :action => "details"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "details"})
  get("/delete_photo/:path_id", {:controller => "photos", :action => "destroy"})



end
