module Shogun
  class Presenters
    def initialize(resources:, cast:, meta: {}, links: {}, linked: {})
      @sources = resources.map do |resource|
        cast.new(resource: resource)
      end
      @meta = meta
      @links = links
      @linked = linked
    end

    def map(&block)
      @sources.map(&block)
    end

    def meta
      @meta
    end

    def linked
      @linked
    end

    def links
      @links
    end
  end
end