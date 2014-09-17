require 'spec_helper'
require 'extra_extra/semantic_html_renderer'

describe ExtraExtra::SemanticHtmlRenderer do
  let(:options) { {} }
  let(:text)    { "hello there!" }
  let(:anchor)  { "bloergh" }

  subject(:renderer) { described_class.new(options) }

  let(:h1) { renderer.header(text,1,anchor) }
  let(:h2) { renderer.header(text,2,anchor) }
  let(:h3) { renderer.header(text,3,anchor) }

  describe "header rendering" do
    context "default" do
      it "renders everything as one smaller than Markdown would normally" do
        expect(h1).to match(/<h2 class=["']h3["']>/)
        expect(h2).to match(/<h3 class=["']h4["']>/)
        expect(h3).to match(/<h4 class=["']h5["']>/)
      end
    end
    context "customized" do
      let(:options) {
        {
          header_level_offset: 0,
          header_class_prefix: "f",
          header_class_prefix_offset: 1,
        }
      }
      it "renders everything based on the options provided" do
        expect(h1).to match(/<h1 class=["']f2["']>/)
        expect(h2).to match(/<h2 class=["']f3["']>/)
        expect(h3).to match(/<h3 class=["']f4["']>/)
      end
    end

    context "when anchor is omitted" do
      let(:anchor) { nil }
      it "parameterizes the title" do
        expect(h1).to match(/<a name=["']hello-there["']>/)
      end
    end
  end
end
