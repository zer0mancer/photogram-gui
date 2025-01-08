Rails.application.routes.draw do


  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_id", {:controller => "users", :action => "details"})


end
