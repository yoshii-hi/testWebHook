class WebhookController < ApplicationController
  def index
  end
  
  def test
    respond_to do |format|
      format.html
    end
  end

  def pull
    `git pull`
  end
end
