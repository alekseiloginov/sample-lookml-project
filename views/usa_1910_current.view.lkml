view: usa_1910_current {
  sql_table_name: `bigquery-public-data.usa_names.usa_1910_current`
    ;;

  dimension: gender {
    type: string
    description: "Sex (M=male or F=female)"
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    description: "Given name of a person at birth"
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    description: "Number of occurrences of the name"
    sql: ${TABLE}.number ;;
  }

  dimension: state {
    type: string
    description: "2-digit state code"
    sql: ${TABLE}.state ;;
  }

  dimension: year {
    type: number
    description: "4-digit year of birth"
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
