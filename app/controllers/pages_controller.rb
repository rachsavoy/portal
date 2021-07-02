class PagesController < ApplicationController
  def redirect_to_sign_up
    if signed_in?.blank?
      redirect_to new_user_registration_path
    else
      redirect_to home_path
    end
  end

  def faq
    render
  end

  def training
    render
  end

  def info
    render
  end

  def benefits
    render
  end

end
