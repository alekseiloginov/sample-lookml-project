connection: "sample_connection_curated_by_looker"

# include all the views
include: "/views/**/*.view"

datagroup: sample_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sample_project_default_datagroup

explore: usa_1910_current {}
