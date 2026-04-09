#import "leuven.typ": *

#show: init.with(
  title:    "Leuven Typst Theme",
  subtitle: "A presentation theme inspired by the Leuven Emacs color theme",
  author:   "Carl Hedgren",
  date:     "2026-04-09",
)

#title-slide()

// ── Section 1 ────────────────────────────────────────────────────────────────

#section-slide(sub: "What is the Leuven theme?")[Introduction]

#slide(title: "About the Leuven Theme")[
  The *Leuven* theme is a light Emacs color theme with a clean, readable palette.

  #v(0.6em)

  #leuven-list(
    [Primary blue: #box(fill: rgb("#335EA8"), width: 1em, height: 0.8em, baseline: -10%) `#335EA8`],
    [Navy / headings: #box(fill: rgb("#123555"), width: 1em, height: 0.8em, baseline: -10%) `#123555`],
    [Sky blue accent: #box(fill: rgb("#85CEEB"), width: 1em, height: 0.8em, baseline: -10%) `#85CEEB`],
    [Ice background: #box(fill: rgb("#E5F4FB"), width: 1em, height: 0.8em, baseline: -10%) `#E5F4FB`],
  )
]

// ── Section 2 ────────────────────────────────────────────────────────────────

#section-slide[Slide Types]

#slide(title: "Content Blocks")[
  #highlight-block[
    *Highlight block* — uses the ice-blue background with a blue left border.
    Great for definitions or key points.
  ]

  #v(0.8em)

  #alert-block[
    *Alert block* — uses the warm orange accent.
    Use for warnings, caveats, or important notes.
  ]
]

#slide2(
  title: "Two-Column Layout",
  [
    *Left column*

    #leuven-list(
      [First item],
      [Second item],
      [Third item],
    )
  ],
  [
    *Right column*

    #leuven-list(
      [Alpha],
      [Beta],
      [Gamma],
    )
  ],
)

// ── Section 3 ────────────────────────────────────────────────────────────────

#section-slide[Thank You]

#slide(title: "Summary")[
  #leuven-list(
    [Clean 16:9 slides],
    [Title, section, and content slide types],
    [Two-column layout],
    [Highlight and alert blocks],
    [Colors drawn directly from `leuven-theme.el`],
  )
]
