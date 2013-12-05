class SalutationController < ApplicationController
  def hello
    @message="This is the test"
    format.html # index.html.erb
  end
end
