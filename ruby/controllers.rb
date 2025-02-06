class User < ApplicationRecord
  before_save :normalize_name
  after_create :send_welcome_email

  private

  def normalize_name
    self.name = name.downcase.titleize
  end

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_later
  end
end



class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
