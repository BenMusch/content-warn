class Topic < ApplicationRecord
  before_save :generate_slug

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = Haikunator.haikunate(1000)
    while Topic.exists?(slug: self.slug) do
      self.slug = Haikunator.haikunate(1000)
    end
  end
end

