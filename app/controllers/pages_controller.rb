class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def charpente
    @works = Work.where(category: 'charpente')
  end

  def agencement
    @works = Work.where(category: 'agencement')
  end

  def verriere
    @works = Work.where(category: 'verrière')
  end

  def surmesure
    @works = Work.where(category: 'sur-mesure')
  end

  def vitrine
    @works = Work.where(category: 'vitrine')
  end
end
