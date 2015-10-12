json.room do
  json.id @room.id
  json.name @room.title
  json.comments @room.comments do |comment|
    json.id comment.id
    json.entry comment.entry
    json.user do
      json.id comment.user.id
      json.email comment.user.email
    end
  end
end
