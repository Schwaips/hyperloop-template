# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    authorize :pages, :home?
  end
end
