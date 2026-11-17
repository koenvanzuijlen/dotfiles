#!/bin/sh
# Only manage the home-assistant MCP server. Claude owns the rest of this file.
# jq keeps the key order. -j omits the trailing newline, the same as Claude.
{{- if not .isWorkMachine }}
exec jq -n -j --indent 2 --arg url {{ .homeAssistantMcpUrl | squote }} \
  '([inputs][0] // {}) | .mcpServers["home-assistant"] = {{ .server }}'
{{- else }}
exec jq -n -j --indent 2 \
  '([inputs][0] // {}) | if .mcpServers then del(.mcpServers["home-assistant"]) else . end'
{{- end }}
