json.posts @posts do |post|
  json.extract! post, :id, :content, :title, :created_at
end