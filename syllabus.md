# Intro to R sequence
## Welcome to the wonderful world of R
* What is R and what is it good for?
* Who uses R? When?
* R for researchers
  * sharing code
  * reproducible analyses
  * clear records make it easy for collaborators to understand what you did (including Future You)
  * version control
  * save time and reduce errors!
* Comparing R to other options
  * python
  * matlab
  * JASP
  * SPSS
  * SAS
  
## Getting your data into R
* popular data formats
  * text files (.txt, .csv, .dta)
  * SPSS files (.sav)
* hello, dataframes!
  * looking at data in R
  * variable types
  * the importance of a sanity check
* generating data
  * rnorm() etc., rep(), seq(), gl()
* saving data
  * exporting to text files
  * exporting for use in other statistical software
  * the .Rdata format
  * saving the entire workspace

## Reformatting data in R
* adding columns
* using multiple dataframes
* running calculations by levels of a factor
* dplyr and tidyr
* the importance of a sanity check

## Exploratory data analysis in R
* descriptive stats
* plot()
* basic relationships (correlations, scatterplots)
* the importance of a sanity check

## Data visualization with ggplot2

## The general linear model in R
* lm()
* specialized functions
  * t-tests
  * anlaysis of variance
* examining residuals
* power analyses in R

## The generalized linear model in R
* glm()
* examining residuals
* power analyses in R

## Interactions
* Interpreting interactions from coefficients
* Plotting interactions

## Mediation in R
* Baron & Kenny
* bootstrapped CIs
* a word of caution about interpreting mediation models

## Missing data in R
* types of missing data
* methods for dealing with missing data
  * listwise deletion
  * imputation
  * FEML

## Statistical simulations in R
* thinking about the data generating process
* for loops
* using simulations to...
  * bootstrap a sampling distribution
  * conduct a power analysis
  * test a hypothesis
  * make art :)

# Advanced R: Stand-alone topics
These short courses all assume some basic familiarity with R, as well as familiarity with the statistical method in question. 
They are intended for students who already have some idea of when and why to use these methods, but would like to learn how to do them in R. 
I will provide a refresher on each technique, but it will not be detailed enough for students who have never been exposed to any of those ideas before. 
Students who have taken the Intro to R sequence will have the necessary R knowledge to take any or all of these advanced classes.

## Intro to SEM in R
* (step through laavan tutorials)

## Intro to multivariate techniques in R
* MANOVAs and MANCOVAs
* cannonical correlations
* multivariate multiple regression
* PCA

## Intro to data mining in R
* 

## Intro to multilevel modeling in R
* lmer() from the lme4 package

## Intro to Bayesian modeling in R
* the stan package
* easy bayes
