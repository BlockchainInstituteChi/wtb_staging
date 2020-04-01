Jekyll::Hooks.register :documents, :pre_render do |document, payload|
  docExt = document.extname.tr('.', '')

  # only process if we deal with a markdown file
  # if payload['site']['markdown_ext'].include? docExt
  #   newContent = document.content.gsub!(/src\s*=\s*"(.+?)"/, '{% responsive_image path: \2 %}')
  #   document.content = newContent
  # end

  # only process if we deal with a markdown file
  if payload['site']['markdown_ext'].include? docExt
    #  {% responsive_image path: \2 \3 %}
    newContent = document.content.gsub!(/!\[(.*)\]\(([^\)]+)\)(?:{:([^}]+)})*/, '<span> arbtext 1. \2 2. \3 </span>')
    newContent = document.content.gsub!(/src\s*=\s*"(.+?)"/, '<span> arbtext 1. \2 2. \3 </span>')
    document.content = newContent
  end

end