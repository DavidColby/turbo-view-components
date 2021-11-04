# frozen_string_literal: true

class SpyComponent < ViewComponent::Base
  def initialize(spy:)
    @spy = spy
  end
end
