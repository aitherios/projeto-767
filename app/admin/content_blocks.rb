ActiveAdmin.register ContentBlock do
  form do |f|
    f.inputs do
      f.input :name, input_html: {disabled: true}
      f.input :html
    end
    f.buttons
  end
end
