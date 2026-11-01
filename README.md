# 5 Research Codes for Claude

Five free skills that turn Claude into a serious researcher. Type the code, and Claude does the job. No extra accounts needed to get started.

| Code | What it does |
|---|---|
| `/fact-check` | Pulls out every claim in your document, checks each one against real sources, and tells you which ones are true and which ones it can't back up |
| `/last30days` | Searches Reddit, X, YouTube and more for what real people have said about your topic in the last 30 days |
| `/papers` | Finds the real research papers on your topic and tells you what they found |
| `/deep-research` | Runs search after search, follows whatever it finds, and hands you a full report with every source cited |
| `/competitors` | Give it competitor websites and it builds a full profile on each one, with their pricing, their strengths and their weak spots |

## Install in Claude Code

Open Claude Code and paste this:

```
Clone https://github.com/TakeOff-Team/claude-research-codes and run its install.sh. If anything fails, fix it and run it again.
```

Restart Claude Code, then type `/` to see your codes.

## Install in the Claude app

You need code execution turned on: go to **Settings > Capabilities** and turn on **Code execution and file creation**.

1. Download the zips: [fact-check](https://github.com/TakeOff-Team/claude-research-codes/raw/main/dist/fact-check.zip), [papers](https://github.com/TakeOff-Team/claude-research-codes/raw/main/dist/papers.zip), [deep-research](https://github.com/TakeOff-Team/claude-research-codes/raw/main/dist/deep-research.zip) and [competitors](https://github.com/TakeOff-Team/claude-research-codes/raw/main/dist/competitors.zip).
2. Go to **Customize > Skills**, click **+**, choose the upload option, and pick a zip. Repeat for each one.
3. Download [`last30days.skill`](https://github.com/mvanhorn/last30days-skill/releases/latest/download/last30days.skill) and upload it the same way.
4. Turn on web search. Then type `/` in a chat to see your codes.

## Good to know

- **`/last30days`:** Reddit, Hacker News, Polymarket and GitHub work right away. The first time you run it, its setup wizard adds X, YouTube, TikTok and more. Those sources may ask you to connect an account or add a key.
- **They need the web:** all five search the live internet, so web search has to be on.
- **Usage:** `/deep-research` and `/competitors` read a lot of pages, so they use more of your Claude limit than a normal chat.
- **Check what matters:** these skills are built to show their sources. Click the links before you bet anything big on an answer.

## Credit

`/last30days` is built by [Matt Van Horn](https://github.com/mvanhorn/last30days-skill) (MIT license), and this pack installs it straight from his repo. The other four were written for this pack. See [NOTICE.md](NOTICE.md).

MIT license. Free to use and change.
