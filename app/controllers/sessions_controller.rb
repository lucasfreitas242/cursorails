class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session] [:email].downcase)
    if user && user.authenticate(params[:session] [:password])
      sign_in(user) 
      redirect_to contacts_path
    else  
      flash.now[:danger] = 'Email ou senha inválidos'
      render 'new' 
    end
  end  

  def destroy
    sign_out
    flash[:success] = 'Logout bem sucedido!'
    redirect_to entrar_path
  end

end
