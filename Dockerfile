# ArtistAlly is a hosted, remote MCP server (streamable HTTP). This image is a
# thin stdio<->HTTP bridge (via mcp-remote) so registry tooling that expects a
# runnable container — e.g. Glama's introspection check — can start "the server"
# and list its tools. It proxies to the live endpoint; there is no local logic
# or data here. Humans should just point their client at the URL (see README).
FROM node:22-alpine
ENTRYPOINT ["npx", "-y", "mcp-remote", "https://artistally.alchemylab.sh/api/mcp"]
