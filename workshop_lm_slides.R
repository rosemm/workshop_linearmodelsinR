## ----setup, include=FALSE, echo=FALSE------------------------------------
library("knitr")
opts_chunk$set(fig.align='center',fig.show='hold',size='footnotesize', eval=FALSE)

# #to get r code from the slides, use purl()
# purl("workshop_lm_slides.rnw")


## ------------------------------------------------------------------------
install.packages("ggplot2")
install.packages("haven")

library("ggplot2")
library("haven")

## ------------------------------------------------------------------------
install.packages("knitr")
library("knitr")

## ------------------------------------------------------------------------
install.packages("pander")

## ----getwd---------------------------------------------------------------
getwd()

## ------------------------------------------------------------------------
atlas <- read_sav("data/ATLAS.sav")

## ------------------------------------------------------------------------
str(atlas)
head(atlas)
summary(atlas)

## ----make_factor---------------------------------------------------------
atlas$use0 <- factor(atlas$use0, 
                     levels=c(0, 1),
                     labels=c("no", "yes")) 

atlas$intervention <- factor(atlas$intervention, 
                             levels=c(0, 1),
                             labels=c("no", "yes")) 

summary(atlas)

## ------------------------------------------------------------------------
?lm

## ----ex1_model-----------------------------------------------------------
model1 <- lm(STSE1 ~ STSE0 + intervention, data=atlas,
              na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ SE1, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ intervention, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ intervention + SE1 + STSE0, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ intervention + SE1 + STSE0 + SE1:STSE0, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ intervention + SE1*STSE0, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ intervention + STSE0 + intervention:STSE0, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
lm(STSE1 ~ intervention*STSE0, data=atlas,
    na.action=na.exclude)

## ------------------------------------------------------------------------
model1 <- lm(STSE1 ~ intervention*STSE0, data=atlas,
              na.action=na.exclude)

## ------------------------------------------------------------------------
model1

str(model1)

plot(model1)

## ------------------------------------------------------------------------
summary(model1)

## ------------------------------------------------------------------------
model.sum <- summary(model1)
pander(model.sum)

## ------------------------------------------------------------------------
car::Anova(model1, type=3) # type 3 sums of squares

## ------------------------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1)) + 
  geom_point()

## ------------------------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1)) + 
  geom_point(alpha=.3)

## ------------------------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1, color=intervention)) + 
  geom_point(alpha=.3)

## ------------------------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1)) + 
  geom_point(alpha=.3) + 
  facet_wrap(~ intervention)

## ----relabel_factor------------------------------------------------------
atlas$intervention <- factor(atlas$intervention,
                             levels=c("yes", "no"),
                             labels=c("intervention", "control"))

## ------------------------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1, 
                  color=intervention, fill=intervention)) + 
  geom_point(alpha=.3) + 
  geom_smooth(method="lm")

## ------------------------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1)) + 
  geom_point(alpha=.3) + 
  geom_smooth(method="lm") + 
  facet_wrap(~ intervention)

## ----final_plot----------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1, 
                  color=intervention, fill=intervention)) + 
  geom_point(alpha=.3) + 
  geom_smooth(method="lm") + 
  labs(x="pretest strength training self-efficacy",
       y="posttest strength training self-efficacy")

## ----predict-------------------------------------------------------------
atlas$pred <- predict(model1, atlas)

## ----plot_predict--------------------------------------------------------
ggplot(atlas, aes(x=STSE0, y=STSE1, 
                  color=intervention, fill=intervention)) + 
  geom_point(alpha=.3) + 
  geom_line(aes(y=pred, x=STSE0, color=intervention)) + 
  labs(x="pretest strength training self-efficacy",
       y="posttest strength training self-efficacy")

## ------------------------------------------------------------------------
?t.test

## ------------------------------------------------------------------------
install.packages("car")
library("car")
?Anova

## ------------------------------------------------------------------------
t.test(STSE0 ~ intervention, data=atlas, 
       var.equal=TRUE)

## ------------------------------------------------------------------------
t.test(STSE0 ~ intervention, data=atlas, 
       var.equal=FALSE)

## ------------------------------------------------------------------------
summary(atlas$intervention)

## ------------------------------------------------------------------------
t.test(SE0 ~ intervention, data=atlas, 
       var.equal=TRUE)

## ------------------------------------------------------------------------
t.test(x=atlas$STSE0) # can't use formula and data argument for one-sample t-tests

## ------------------------------------------------------------------------
t.test(x=atlas$STSE0, y=atlas$STSE1,
       paired=TRUE) 

## ------------------------------------------------------------------------
model <- lm(STSE0 ~ intervention, data=atlas)

car::Anova(model, type=3) # type 3 sums of squares

