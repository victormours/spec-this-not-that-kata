require_relative '../lib/stnt.rb'
require 'spec_helper'

RSpec.describe SpecThisNotThat do
  describe ".covers?" do
    it "returns true for matching files" do
      expect(described_class.covers?("spec/sample-project/spec/article_spec.rb", "spec/sample-project/app/article.rb")).to be_truthy
    end
  end
end
