---@type vim.lsp.Config
return {
  cmd = { 'docker-language-server', 'start', '--stdio' },
  filetypes = { 'dockerfile' },
  root_markers = { 'Dockerfile' },
  init_options = {
    dockercomposeExperimental = {
      composeSupport = false,
    },
    telemetry = 'off',
  },
  settings = {
    docker = {
      lsp = {
        experimental = {
          vulnerabilityScanning = true,
          scout = {
            criticalHighVulnerabilities = true,
            notPinnedDigest = false,
            recommendedTag = true,
            vulnerabilities = true,
          },
        },
      },
    },
  },
}
