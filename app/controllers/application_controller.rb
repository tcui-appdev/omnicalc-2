class ApplicationController < ActionController::Base
  def add_form
    render({ :template => "form_templates/add_form.html.erb" })
  end

  def add_results
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    render({ :template => "math_templates/add_results.html.erb" })
  end

  def subtract_form
    render({ :template => "form_templates/subtract_form.html.erb" })
  end

  def subtract_results
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    render({ :template => "math_templates/subtract_results.html.erb" })
  end

  def multiply_form
    render({ :template => "form_templates/multiply_form.html.erb" })
  end

  def multiply_results
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    render({ :template => "math_templates/multiply_results.html.erb" })
  end

  def divide_form
    render({ :template => "form_templates/divide_form.html.erb" })
  end

  def divide_results
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    render({ :template => "math_templates/divide_results.html.erb" })
  end

  def street_to_coords_form
    render({ :template => "coords/street_to_coords.html.erb" })
  end

  def street_to_coords_results
    @address = params.fetch("addr")
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @address + "&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY"
    @data = open(url).read
    first_result = JSON.parse(@data).fetch("results")[0]
    @location = first_result.fetch("geometry").fetch("location")
    @lat = @location.fetch("lat")
    @lng = @location.fetch("lng")
    render({ :template => "coords/coords.html.erb" })
  end
end
