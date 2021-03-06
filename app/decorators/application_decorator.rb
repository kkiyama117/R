# frozen_string_literal: true

# modify or create attributes of Model
class ApplicationDecorator < Draper::Decorator
  # Define methods for all decorated objects.
  # Helpers are accessed through `helpers` (aka `h`). For example:
  #
  #   def percent_amount
  #     h.number_to_percentage object.amount, precision: 2
  #   end
  #
  # If you want to create helper method not dependent on instance of model,
  # see and edit helpers/*.rb
end
