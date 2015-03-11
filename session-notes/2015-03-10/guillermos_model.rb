deaddrop.date_of_self_destruct   if params[:date]
deaddrop.views_til_self_destruct if params[:views]
deaddrop.keep_history            if params[:history]

deaddrop.apply_attributes(params)

# other file

class DeadDrop
  # property declarations
  
  def apply_attributes(params)
    self.date_of_self_destruct = DateTime.now if params[:date] && !params[:date].empty?
    self.views_til_self_destruct if params[:views]
    self.keep_history            if params[:history]
  end
end