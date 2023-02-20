class Account::TeamsController < Account::ApplicationController
  include Account::Teams::ControllerBase

  private

  def permitted_fields
    []
    Team.where(user: #{params})
  end

  def permitted_arrays
    {}
    Team.all.map{ |x| x.blank? }
  end

  def process_params(strong_params)
    # 🚅 super scaffolding will insert processing for new fields above this line.
    strong_params
  end
end
