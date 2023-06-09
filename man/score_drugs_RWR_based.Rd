% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RWR_method.R
\name{score_drugs_RWR_based}
\alias{score_drugs_RWR_based}
\title{RWR-based Scoring of Drugs}
\usage{
score_drugs_RWR_based(
  driveR_res,
  drug_interactions_df,
  W_mat,
  alpha = 0.05,
  max.iter = 1000,
  eps = 1e-04,
  drug_name_col = "drug_name",
  target_col = "gene_name",
  verbose = TRUE
)
}
\arguments{
\item{driveR_res}{data frame of driveR results}

\item{drug_interactions_df}{data frame of drug-gene interactions}

\item{W_mat}{adjacency matrix for the PIN}

\item{alpha}{restart parameter, controlling trade-off between prior information and network smoothing}

\item{max.iter}{maximum allowed number of iterations (default = 1000)}

\item{eps}{epsilon value to assess the L2 norm of the difference between iterations (default = 1e-4)}

\item{drug_name_col}{for 'drug_interactions_df', the column name containing drug names/identifiers}

\item{target_col}{for 'drug_interactions_df', the column name containing target gene symbols}

\item{verbose}{boolean to control verbosity (default = \code{TRUE})}
}
\value{
vector of scores per drug. Drugs with the same target gene(s) are merged
(via \code{\link{process_drug_target_interactions}})
}
\description{
RWR-based Scoring of Drugs
}
\examples{
toy_data <- data.frame(
  gene_symbol = c("TP53", "EGFR", "KDR", "ATM"),
  driverness_prob = c(0.94, 0.92, 0.84, 0.72)
)
toy_interactions <- DGIdb_interactions_df[1:100, ]
res <- score_drugs_RWR_based(
  driveR_res = toy_data,
  drug_interactions_df = toy_interactions,
  W_mat = toy_W_mat, verbose = FALSE
)
}
