class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create] 
  def new
    # Login Page - new.html.erb
  end

  def create
    usuario = Usuario.find_by(nombre: params[:usuario][:nombre])
    password = params[:usuario][:password]

    if usuario && usuario.authenticate(password)
      session[:usuario_id] = usuario.id
      redirect_to root_path, notice: "Ha iniciado sesión correctamente"
    else
      redirect_to login_path, alert: "Nombre o Contraseña incorrectos"
    end
  end

  def destroy
    reset_session # helper that wipe out session and everything in it
    redirect_to login_path, notice: "Su sesión ha terminado"
  end
end
