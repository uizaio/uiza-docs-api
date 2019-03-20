require 'redcarpet'

module Multilang
  def block_code(code, full_lang_name)
    if full_lang_name
      parts = full_lang_name.split('--')
      rouge_lang_name = (parts) ? parts[0] : "" # just parts[0] here causes null ref exception when no language specified
      code = super(code, rouge_lang_name).sub("highlight #{rouge_lang_name}") do |match|
        match + " tab-" + full_lang_name
      end
      code = code.sub("<code") do |code_tag|
        "#{code_tag} class=\"language-#{full_lang_name}\""
      end
      code = code.gsub("uiza_api_domain") do |code_tag|
        "https://stag-ap-southeast-1-api.uizadev.io"
      end
      code.gsub(/uap-[-a-z0-9]*/) do |token|
        "<span class=\"token\">#{token}</span>"
      end
    else
      super(code, full_lang_name).gsub(/uap-[-a-z0-9]*/) do |token|
        "<span class=\"token\">#{token}</span>"
      end
    end
  end

  # def block_quote(quote)
    
  # end
  
  # class RightBlockquote < RedCarpet::Render::Base
  #   def normal_text(quote)
  #     quote = block_quote(quote)
  #     p quote
  #   end
  # end
end


require 'middleman-core/renderers/redcarpet'
Middleman::Renderers::MiddlemanRedcarpetHTML.send :include, Multilang