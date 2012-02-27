ActiveAdmin.register ContentBlock do
  form do |f|
    f.name     input_html: { disabled: true }
    f.html
    f.buttons
  end
end
