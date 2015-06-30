json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :published, :publish_date
  json.url post_url(post, format: :json)
end
