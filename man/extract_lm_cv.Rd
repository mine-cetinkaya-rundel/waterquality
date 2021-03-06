% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_lm_functions.R
\name{extract_lm_cv}
\alias{extract_lm_cv}
\title{Run linear model with crossvalidation}
\usage{
extract_lm_cv(
  parameter,
  algorithm,
  df,
  train_method = "lm",
  control_method = "repeatedcv",
  folds = 3,
  nrepeats = 5
)
}
\arguments{
\item{parameter}{water quality parameter}

\item{algorithm}{water quality algorithm}

\item{df}{data frame containing the values for parameter and algorithm arguments}

\item{train_method}{A string specifying which classification or regression model to use (Default = "lm"). See ?caret::train for more details}

\item{control_method}{A string specifying the resampling method (Default = "repeatedcv"). See ?caret::trainControl for more details}

\item{folds}{the number of folds to be used in the cross validation model}

\item{nrepeats}{the number of iterations to be used in the cross validation model}
}
\value{
A data frame of the model results
}
\description{
The function runs a linear model on a single water quality parameter and a water quality algorithm and conducts
a k-folds cross validation, which returns a data frame containing the following:
The r^2, p-value, slope, intercept of the global lm model &
average r^2, average RMSE, average MAE from the crossvalidated model
}
\references{
Johansen, Richard; et al. (2018). Evaluating the portability of satellite derived chlorophyll-a algorithms for temperate inland lakes using airborne hyperspectral imagery and dense surface observations. Harmful Algae. 76. 10.1016/j.hal.2018.05.001.

R Core Team (2018). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.

Max Kuhn. Contributions from Jed Wing, Steve Weston, Andre Williams, Chris Keefer, Allan Engelhardt, Tony Cooper, Zachary Mayer, Brenton Kenkel, the R Core Team, Michael Benesty, Reynald Lescarbeau, Andrew Ziem, Luca Scrucca, Yuan Tang, Can Candan and Tyler Hunt. (2018). caret: Classification and Regression Training. R package version 6.0-81. https://CRAN.R-project.org/package=caret
}
\seealso{
Other extract_lm: 
\code{\link{extract_lm_cv_all}()},
\code{\link{extract_lm_cv_multi}()},
\code{\link{extract_lm}()}
}
\concept{extract_lm}
