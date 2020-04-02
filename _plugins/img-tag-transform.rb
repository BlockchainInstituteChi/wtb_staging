Jekyll::Hooks.register :document, :pre_render do |document, payload|
  docExt = document.extname.tr('.', '')
  document.content.gsub!(/!\[(.*)\]\(([^\)]+)\)(?:{:([^}]+)})*/, '{% responsive_image path: \2 \3 %}')
  document.content.gsub!(/<img src="\/(.*?)">/, '{% responsive_image path: \1 %}')
  document.content.gsub! 'path: /', 'path: ' 
end

Jekyll::Hooks.register :pages, :pre_render do |page, payload|
  docExt = page.extname.tr('.', '')
  page.content.gsub!(/!\[(.*)\]\(([^\)]+)\)(?:{:([^}]+)})*/, '{% responsive_image path: \2 \3 %}')
  page.content.gsub!(/<img src="\/(.*?)">/, '{% responsive_image path: \1 %}')
  page.content.gsub! 'path: /', 'path: '  
end

# Jekyll::Hooks.register :documents, :pre_render do |document, payload|
    # docExt = document.extname.tr('.', '')
  
    # only process if we deal with a markdown file
    # if payload['site']['markdown_ext'].include? docExt
    #   newContent = document.content.gsub!(/src\s*=\s*"(.+?)"/, '{% responsive_image path: \2 %}')
    #   document.content = newContent
    # end
  
    # only process if we deal with a html file
    # if payload['site']['html_ext'].include? docExt
    #   #  {% responsive_image path: \2 \3 %}
    #   newContent = document.content.gsub!(/!\[(.*)\]\(([^\)]+)\)(?:{:([^}]+)})*/, '{% responsive_image path: \2 \3 %}')
    #   newContent = document.content.gsub!(/<img src="\/(.*?)">/, '{% responsive_image path: \1 %}')
    #   document.content = newContent
    # end
  
    # only process if we deal with a markdown file
    # if payload['site']['markdown_ext'].include? docExt
      #  {% responsive_image path: \2 \3 %}
  #   newContent = document.content.gsub!(/!\[(.*)\]\(([^\)]+)\)(?:{:([^}]+)})*/, '{% responsive_image path: \2 \3 %}')
  #   newNewContent = newContent.gsub!(/<img src="\/(.*?)">/, '{% responsive_image path: \1 %}')
  #   document.content = newNewContent
  #   # end
  
  # end
  
  # NEED TO SEPERATELY HANDLE INCLUDES ELEMENTS FROM GENERAL DOCUMENTS
  # NEED TWO HOOKS
  # 1. General documents
  # 2. Includes elements
  
  # Subbing post render doesn't work because image reformatting plugin requires the render process to run
  # Also, non-thumbnail size images will be used for tiles and stuff..
  