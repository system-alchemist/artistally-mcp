# ArtistAlly — Convention Data MCP Server

> Free fan-convention data for agents: search furry, anime & gaming conventions across 51 US & Canadian metros — dates, registration windows, table costs, and attendance history.

**ArtistAlly** is a hosted, remote [Model Context Protocol](https://modelcontextprotocol.io)
server that gives any MCP-capable agent a single, no-key call for questions like
*"which conventions can I still get an artist-alley table at?"* or *"what anime
cons are in the Southeast this fall?"* It serves the approved ArtistAlly catalog —
dates, venues, artist-alley and vendor registration windows, table costs, badge
prices, hotel blocks, transit access, and multi-year attendance history — refreshed
daily, with organizer-verified fields flagged.

- **Endpoint:** `https://artistally.alchemylab.sh/api/mcp` (streamable-HTTP)
- **Auth:** none — every tool is free and read-only
- **Docs & connect guide:** https://artistally.alchemylab.sh/mcp
- **In the official MCP registry as:** `sh.alchemylab.artistally/conventions`

> This repository is **documentation only** — ArtistAlly is a hosted service that's
> always on. There's nothing to install, build, or run locally.

## Quick start

Point any MCP client at the remote endpoint via the
[`mcp-remote`](https://www.npmjs.com/package/mcp-remote) shim:

```json
{
  "mcpServers": {
    "artistally": {
      "command": "npx",
      "args": ["-y", "mcp-remote", "https://artistally.alchemylab.sh/api/mcp"]
    }
  }
}
```

Drop that into your client config (`claude_desktop_config.json`, Cursor, Cline,
etc.) and the ArtistAlly tools appear. Clients that speak streamable-HTTP directly
(Claude Code, claude.ai connectors) can use the endpoint URL as-is — see
https://artistally.alchemylab.sh/mcp for per-client instructions.

## Tools

All tools are free and need no auth. See **https://artistally.alchemylab.sh/mcp**
for the always-current list and full schemas.

| Tool | What it does |
|---|---|
| `artistally_search_conventions` | Search conventions by text, community (furry/anime/gaming), region, state, metro, or date range |
| `artistally_get_convention` | Full profile of one convention: registration windows, costs, hotel block, transit, and up to 6 years of attendance/pricing history |
| `artistally_list_open_registrations` | Artist-alley and vendor registration windows open now or opening soon, sorted by closing date |
| `artistally_get_coverage` | The regions, states/provinces, and metros tracked, with convention counts (and the valid filter values for the other tools) |

Every response includes a canonical `url` for each convention and a `source`
attribution block — please link the convention's page when you present the data.

## Browse it yourself

No MCP client needed — the same catalog is public on the web:

- **Events directory:** https://artistally.alchemylab.sh/events (filter by region, state, metro, community)
- **Registration board:** https://artistally.alchemylab.sh/registrations (open now / opening soon)
- **Machine-readable index:** https://artistally.alchemylab.sh/llms.txt
- **Sitemap:** https://artistally.alchemylab.sh/sitemap.xml

## Links

- **Website:** https://artistally.alchemylab.sh
- **Connect guide (canonical tool list):** https://artistally.alchemylab.sh/mcp
- **Official MCP registry:** `sh.alchemylab.artistally/conventions`

## License

[MIT](LICENSE) — covers this documentation repository. The ArtistAlly service
itself is a hosted product operated by Alchemy Lab LLC.
