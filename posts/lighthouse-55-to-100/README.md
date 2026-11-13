# Lighthouse 55 → 100 without losing the wow

Post: <https://wonmor.io/engineering/lighthouse-55-to-100/>  
Kind: engineering · Area: interfaces · Published: 2026-11-09

## What can be reproduced

Check out the v1.1 commit, serve the v1 folder and run Lighthouse in its mobile profile; scores from a local server and your own machine will differ from ours, so compare the before and after commits on the same machine.

## Pinned source

- Repository: <https://github.com/dtwinuz/halvet> (public)
- Commit: `f0739fe61c3aa8347d5bd6a78b5f80cbb418630a`

Run the commands from a checkout of that repository at that commit unless a command clones it for you:

```bash
git clone https://github.com/dtwinuz/halvet && cd halvet && git checkout f0739fe61c3aa8347d5bd6a78b5f80cbb418630a
```

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
git clone https://github.com/dtwinuz/halvet && cd halvet && git checkout f0739fe
npx serve v1
npx lighthouse http://localhost:3000 --only-categories=performance --form-factor=mobile
git checkout 432e50f   # v1, the 55 baseline, for comparison
```

## Sources cited in the post

- <https://github.com/dtwinuz/halvet>
- <https://halvet.dtwin.uz>
- <https://developer.chrome.com/docs/lighthouse/performance/lighthouse-total-blocking-time>
- <https://developer.mozilla.org/en-US/docs/Web/CSS/mix-blend-mode>
- <https://registry.khronos.org/webgl/extensions/KHR_parallel_shader_compile/>

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
