json.post do
  json.extract! @post, :id, :content, :title, :updated_at
end