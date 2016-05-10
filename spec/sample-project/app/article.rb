class Article

  @articles = {}

  class << self

    def create(title, content)
      @articles[title] = content
    end

    def find(title)
      @articles[title]
    end

    def list
      @articles.keys
    end

    def delete_all
      @articles = {}
    end

  end
end

