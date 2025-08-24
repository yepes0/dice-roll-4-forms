Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
  get("/", { :controller => "dice", :action => "render_homepage" })
  get("/process_roll", { :controller => "dice", :action => "process_roll" })

end
