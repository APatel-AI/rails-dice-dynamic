Rails.application.routes.draw do
  # Home route
  get("/", {:controller => "dice", :action =>"home"})
  # dice/2/6 route
  get("/dice/2/6" , {:controller => "dice", :action =>"two_six_sided"})

  # dice/2/10 route
  get("/dice/2/10", {:controller => "dice", :action =>"two_ten_sided"})

  # dice/1/20 route
  get("/dice/1/20", {:controller => "dice", :action => "one_twenty_sided"})

  # dice/5/4 route
  get("/dice/5/4", {:controller => "dice", :action => "five_four_sided"})

end
