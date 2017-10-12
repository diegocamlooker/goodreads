view: collection {
  sql_table_name: books.collection ;;

  dimension: additional_authors {
    type: string
    sql: ${TABLE}.Additional_Authors ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}.Author ;;
  }

  dimension: author_l_f {
    type: string
    sql: ${TABLE}.Author_l_f ;;
  }

  dimension: average_rating {
    type: number
    sql: ${TABLE}.Average_Rating ;;
  }

  dimension: bcid {
    type: string
    sql: ${TABLE}.BCID ;;
  }

  dimension: binding {
    type: string
    sql: ${TABLE}.Binding ;;
  }

  dimension: book_id {
    type: number
    sql: ${TABLE}.Book_Id ;;
  }

  dimension: bookshelves {
    type: string
    sql: ${TABLE}.Bookshelves ;;
  }

  dimension: bookshelves_with_positions {
    type: string
    sql: ${TABLE}.Bookshelves_with_positions ;;
  }

  dimension: condition {
    type: string
    sql: ${TABLE}.Condition ;;
  }

  dimension: condition_description {
    type: string
    sql: ${TABLE}.Condition_Description ;;
  }

  dimension_group: date_added {
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
    sql: ${TABLE}.Date_Added ;;
  }

  dimension_group: date_read {
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
    sql: ${TABLE}.Date_Read ;;
  }

  dimension: exclusive_shelf {
    type: string
    sql: ${TABLE}.Exclusive_Shelf ;;
  }

  dimension: isbn {
    type: string
    sql: ${TABLE}.ISBN ;;
  }

  dimension: isbn13 {
    type: string
    sql: ${TABLE}.ISBN13 ;;
  }

  dimension: my_rating {
    type: number
    sql: ${TABLE}.My_Rating ;;
  }

  dimension: my_review {
    type: string
    sql: ${TABLE}.My_Review ;;
  }

  dimension: number_of_pages {
    type: number
    sql: ${TABLE}.Number_of_Pages ;;
  }

  dimension: original_publication_year {
    type: number
    sql: ${TABLE}.Original_Publication_Year ;;
  }

  dimension: original_purchase_date {
    type: string
    sql: ${TABLE}.Original_Purchase_Date ;;
  }

  dimension: original_purchase_location {
    type: string
    sql: ${TABLE}.Original_Purchase_Location ;;
  }

  dimension: owned_copies {
    type: number
    sql: ${TABLE}.Owned_Copies ;;
  }

  dimension: private_notes {
    type: string
    sql: ${TABLE}.Private_Notes ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.Publisher ;;
  }

  dimension: read_count {
    type: number
    sql: ${TABLE}.Read_Count ;;
  }

  dimension: recommended_by {
    type: string
    sql: ${TABLE}.Recommended_By ;;
  }

  dimension: recommended_for {
    type: string
    sql: ${TABLE}.Recommended_For ;;
  }

  dimension: spoiler {
    type: string
    sql: ${TABLE}.Spoiler ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: year_published {
    type: number
    sql: ${TABLE}.Year_Published ;;
  }

  measure: title_count {
    type: count_distinct
    approximate_threshold: 100000
    sql: ${title}  ;;
    drill_fields: [title]
  }





}
