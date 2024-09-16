# frozen_string_literal: true

# ApplicationRecord is the base model class from which all models inherit.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
