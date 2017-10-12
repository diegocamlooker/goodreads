connection: "diego_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.22
# NOTE: for BigQuery specific considerations

explore: collection {

  # Give the explore a user-friendly name in the Explore menu
  label: "mybooks"

  # Place this explore under a "Name Game" header in the explore menu
  group_label: "books"
  description: "Looker analysis of the new releases in Spiel this year"
}
