json.array!(@my_templates) do |my_template|
  json.extract! my_template, :id, :name, :type, :body
  json.url my_template_url(my_template, format: :json)
end
