collection @challenges
attributes :title
node :required do |u|
  u.required?
end
node :path do |u|
  challenge_path(u)
end
