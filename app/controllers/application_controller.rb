# coding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery

  def long_text(lang="en")
    text = ''

    if lang == "ja" then
      logger.info 'logtext: ja'
      for i in (1..200)
        text = text + sprintf("[%08d]",i).to_s
      end
      text.tr!('0-9[]','０-９すえ')
    else
      logger.info 'logtext: en'
      for i in (1..500)
        text = text + sprintf("[%08d]",i).to_s
      end
    end 

    return text
  end
end
