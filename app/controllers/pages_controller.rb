
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :pro, :public, :lyon, :nantes, :paris, :lille]

  def home
  end

  def pro
  end

  def public
  end

  def lyon
  end

  def nantes
  end

  def paris
  end

  def lille
  end

end
