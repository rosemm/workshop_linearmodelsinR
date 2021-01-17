# Workshop: Intro to Linear Models in R

This is the code to produce the slide deck for a workshop on linear models in R. 
I wrote this first for a workshop I gave at the University of Oregon in 2016,
but this current revision is for a teaching demonstration for the Children's Hospital of Philadelphia.

## About these slides
The slides are sweave files (.rnw), combining r code with latex formatting. 
I'm using beamer to make the slides. 
I include several custom formats at the beginning for recurring visual cues in the slides (key ideas, see also, learn more, etc.).

## About this workshop
The general linear model is the statistical structure behind a huge range of common models: all regressions, ANOVAs, and t-tests are actually just general linear models underneath the hood.
Many other statistical environments have separate functions for each type of linear model, disguising the fact that they're all actually the same basic test.
One advantage of R (in my opinion) over other statistical environments is that it makes this fact clear. 
Another advantage is that because these tests are all actually the same statistical structure, you can run them all with one simple command: `lm`.
Welcome to the wonderful world of r!
