# Frugal Quest

A pixel adventure for SMIC Day (CentraleSupélec) about responsible digital habits.
Walk a pixel character around campus, find the 8 glowing spots (4K streaming, phone lifespan,
email attachments, frugal AI, cloud storage, networks, e-waste, eco-design), answer one question
at each, and learn the real figures with their sources.

- **Duels:** 3 rivals roam the paths (Byte Hog, Stream Kraken, Gadget Gremlin). Touching one starts a
  turn-based duel: each right answer hits the rival (critical hit if answered within 8 s), each wrong
  answer or timeout costs you HP.
- **Medals:** each fixed habit (8) and each won duel (3) earns a medal shown in the header. All 11 medals
  wake the final boss, The Overclock.
- **48 questions**, 6 per topic, each with a source; a run never repeats a question until the pool runs out.
- **Story intro:** short dialogue messages advanced one at a time with Space or a tap.

- **Play:** arrows / WASD to move, Space or E to act, 1–4 to answer. On touch screens, use the on-screen pad.
- **Dashboard:** games played, best score, knowledge by topic, and the 1–10 rating the brief asks for (stored on the device).
- **Share:** the end screen copies a challenge message for friends.
- **Frugal by design:** one HTML file of about 60 KB plus 3 font files (about 46 KB), a world drawn in code, no images,
  video or trackers, redraws capped at 30 fps in low-energy (dark) mode.

Visual style follows the *Frugal Quest* design system (tokens, Fraunces + DM Sans, leaf-and-pixels mark).
Content draws on AFNOR Spec 2314 (frugal AI), RGESN 2024, ADEME, Arcep, IEA and the UN Global E-waste Monitor 2024.

## Deploy on Vercel

Import the repository in Vercel with framework preset **Other** and no build command. Vercel serves the
committed `index.html` and `fonts/` as a static site (`vercel.json` caches fonts for a year; `.vercelignore`
keeps the source files out). After editing `src/frugal-quest.html`, run `./build.sh` and commit `index.html`.
From the command line: `npx vercel --prod`.

## Run locally

`src/frugal-quest.html` is the source. `./build.sh` wraps it into `index.html`, which any static host serves
(GitHub Pages included): `python3 -m http.server` then open http://localhost:8000.
