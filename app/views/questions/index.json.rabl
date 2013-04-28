object @questions
attributes :body, :title
node :resolve do |o|
  resolve_question_path(o)
end
