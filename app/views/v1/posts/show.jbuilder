json.post do
  json.extract! @post, :id, :content, :updated_at
end