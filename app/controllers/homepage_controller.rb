class HomepageController < ApplicationController
  skip_before_filter :authenticate!

  def index
    if user_signed_in?
      @blogs = current_user.blogs
    end
  end
end
