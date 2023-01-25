delete from "dbtairbyteproject".public."covid_covid_epidemiology"
where
    (_airbyte_ab_id) in (
        select
            (_airbyte_ab_id)
        from
            "covid_covid_epidemiology__dbt_tmp072659721416"
    );

insert into
    "dbtairbyteproject".public."covid_covid_epidemiology" (
        "key",
        "date",
        "new_tested",
        "new_deceased",
        "total_tested",
        "new_confirmed",
        "new_recovered",
        "total_deceased",
        "total_confirmed",
        "total_recovered",
        "_airbyte_ab_id",
        "_airbyte_emitted_at",
        "_airbyte_normalized_at",
        "_airbyte_covid_covid_epidemiology_hashid"
    ) (
        select
            "key",
            "date",
            "new_tested",
            "new_deceased",
            "total_tested",
            "new_confirmed",
            "new_recovered",
            "total_deceased",
            "total_confirmed",
            "total_recovered",
            "_airbyte_ab_id",
            "_airbyte_emitted_at",
            "_airbyte_normalized_at",
            "_airbyte_covid_covid_epidemiology_hashid"
        from
            "covid_covid_epidemiology__dbt_tmp072659721416"
    )