view: dbgen_version {
  sql_table_name: `TPCDS.DBGEN_VERSION`
    ;;

  dimension: dv_cmdline_args {
    type: string
    sql: ${TABLE}.DV_CMDLINE_ARGS ;;
  }

  dimension_group: dv_create {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DV_CREATE_DATE ;;
  }

  dimension_group: dvcreate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DV_CREATE_TIME ;;
  }

  dimension: dv_version {
    type: string
    sql: ${TABLE}.DV_VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
