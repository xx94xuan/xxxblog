module PiecesHelper
    def text_to_html(text)
        doc = Nokogiri::HTML.parse(text)
        doc.to_html
    end
end
