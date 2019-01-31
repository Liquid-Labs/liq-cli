usage-remotes() {
  local PREFIX="${1:-}"

  handleSummary "${PREFIX}${cyan_u}remotes${reset} <action>: Manages remotes for the current repo and all included packges." || cat <<EOF
${PREFIX}${cyan_u}remotes${reset} <action>:
   ${underline}add${reset}: Adds a mirror repository.
   ${underline}delete${reset}: Deletes a mirror repository.
   ${underline}set-main${reset} [<name>]: Sets the 'main' repository by name or interactively.

Remotes are synchronized across all packages in the current repository folder.
EOF
}