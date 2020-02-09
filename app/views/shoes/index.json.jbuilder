json.array! @boxes do |box|
  json.max_vertical box.max_vertical
  json.max_side box.max_side
  # json.created_at box.created_at.strftime("%Y年%m月%d日 %H時%M")
  json.id box.id
end