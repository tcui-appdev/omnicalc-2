Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/add", { :controller => "application", :action => "add_form" })
  get("/wizard_add", { :controller => "application", :action => "add_results" })

  get("/subtract", { :controller => "application", :action => "subtract_form" })
  get("/wizard_subtract", { :controller => "application", :action => "subtract_results" })

  get("/multiply", { :controller => "application", :action => "multiply_form" })
  get("/wizard_multiply", { :controller => "application", :action => "multiply_results" })

  get("/divide", { :controller => "application", :action => "divide_form" })
  get("/wizard_divide", { :controller => "application", :action => "divide_results" })

  get("/street_to_coords", { :controller => "application", :action => "street_to_coords_form" })
  get("/street_to_coords/results", { :controller => "application", :action => "street_to_coords_results" })
end
