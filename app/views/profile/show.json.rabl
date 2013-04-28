object @user
attribute :email
node do |u|
  {:cohort=>u.cohort.name, :authenticity_token=>form_authenticity_token}
end
