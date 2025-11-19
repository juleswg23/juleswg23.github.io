# Wrappers and Extenders: Companion Packages for Python Projects

## Section 1: Why Build a Companion Package? (5 min)
**Goal:** Mental checklist + narrative tension

- **Opening:** "You love a library, but it's missing something..."
- **The problem:** You have three bad options:
  1. Fork it (maintenance nightmare)
  2. Submit a PR (wait months, maybe rejected)
  3. Hack it locally (doesn't scale, not reproducible)
  
- **The fourth option:** Build a companion package
- **Mental checklist - When is this the right move?**
  - Core maintainers are conservative (stability > novelty)
  - Your feature is niche/domain-specific (not for everyone)
  - You need faster iteration than the core project allows
  - You want to add dependencies without burdening core users
  - Your use case is an opinionated workflow

- **Real examples:** pandas-flavor (methods for dataframes), gt-extras (plots for tables), seaborn (opinionated matplotlib), plotly-express (simplified plotly)

---

## Section 2: Design Principles (6 min)
**Goal:** Build confidence that this is learnable

- **Principle 1: Don't fork, wrap**
  - Import the core library, don't copy it
  - Your package depends on theirs
  
- **Principle 2: Keep dependencies light**
  - Question: What's the minimum you need?
  - Example: gt-extras adds matplotlib, plotly (but users choose what to install)

- **Principle 3: Stay compatible**
  - Don't monkey-patch core objects (or do it carefully)
  - Test against multiple versions of upstream library
  - Document what versions you support

- **Principle 4: Respect the original API**
  - Don't hide or contradict the core library's design
  - Extend, don't replace

---

## Section 3: Live Demo - gt-extras (12 min)
**Goal:** Show it's real, demystify the structure

### Part A: Package Structure (3 min)
- Show folder layout (live in VS Code)
- Key files: `__init__.py`, `setup.py`/`pyproject.toml`, tests, docs
- Highlight: gt-extras is small! Not thousands of lines

### Part B: How to Wrap (4 min)
- **Live code:** Show how gt-extras imports Great Tables
- Example: Adding a plot method to a table object
  - Import GT class
  - Create a function that takes a GT object as input
  - Modify and return the GT object
  - Users chain it: `gt(data).tab_options(...).gt_plot_bar(...)`

### Part C: Testing & CI/CD (3 min)
- Show `.github/workflows/` (similar to publish.yml structure)
- Unit tests + integration tests against upstream library
- Why this matters: "What breaks when Great Tables updates?"

### Part D: Distribution (2 min)
- PyPI, pip install, versioning strategy
- How to make it discoverable (naming matters!)

---

## Section 4: Getting Started (4 min)
**Goal:** Give them the starting checklist

**Your First Companion Package Checklist:**
- [ ] Pick a library you love + a gap you see
- [ ] Sketch out 2-3 features (not 20)
- [ ] Check: Is this niche or conservative-blocking?
- [ ] Set up basic structure (use cookiecutter or copy gt-extras)
- [ ] Write one feature, one test
- [ ] Document it
- [ ] Release early, iterate with users

---

## Section 5: Q&A (3 min)

---

## Open Questions to Resolve

1. **Live demo setup:** Should you use the *actual* gt-extras repo, or create a simplified teaching example during the talk? (Real is messier but more authentic; simplified is cleaner but less credible)

2. **Code depth:** In the "How to Wrap" section, do you want to show real gt-extras code, or pseudocode-ish examples?

3. **Timing:** Does this feel like a good 30-min pace, or are there sections you want to expand/contract?

4. **Hands-on?** Do you want to mention "here's a repo template they can clone" or just inspire them to start?
