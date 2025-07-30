json.array! @mcps do |mcp|
  json.id mcp.id.to_s
  json.name mcp.name
  json.value mcp.value
  json.description mcp.description
end
