class Spy < ApplicationRecord
  after_create_commit :append_new_record

  private

  def append_new_record
    broadcast_append_to(
      'spies',
      html: ApplicationController.render(
        SpyComponent.new(spy: self)
      )
    )
  end
end
