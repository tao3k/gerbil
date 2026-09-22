# Rendered Interaction Diagrams

These PNGs are rendered from the four Mermaid blocks in
[`../interactions.md`](../interactions.md), in document order:

1. `opening-connection.png`
2. `opening-stream.png`
3. `sending-data.png`
4. `closing-stream.png`

The Mermaid blocks are the editable source. When changing a diagram, regenerate
its PNG as well. The current images were rendered with Mermaid CLI 11.17.0 using
`mermaid.json` and a white background.

From this directory, with Mermaid CLI installed:

```sh
mmdc -i ../interactions.md -o interactions.png -c mermaid.json -b white
```

This produces `interactions-1.png` through `interactions-4.png`; rename them to the
corresponding filenames above. Rendering is a documentation maintenance step, not
part of the Gerbil build. No JavaScript dependencies are required to view the PNGs.
