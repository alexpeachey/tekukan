module ApplicationHelper

  def conditional_html(&blok)
    html_tag = <<-EOS
      <!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
      <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
      <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
      <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
      <!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    EOS
    html_tag + capture_haml(&blok).strip + "</html>"
  end
  
  def title(page_title)
    content_for(:title, page_title.to_s)
  end
  
end
