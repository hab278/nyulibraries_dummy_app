# app/views/layouts/bobcat.rb
module Views
  module Layouts
    class Bobcat < ActionView::Mustache
      def stylesheets
        institutional_stylesheets
      end
    end
  end
end