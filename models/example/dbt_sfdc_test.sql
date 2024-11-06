{{ config(
    schema='DBT'
) }}

with raw_matillion_program as (
    select * from {{ source('raw_matillion_salesforce', 'program_c') }}
),
view_program as (
    SELECT
        ID                     AS "Id",
        OWNER_ID               AS "OwnerId",
        IS_DELETED             AS "IsDeleted",
        NAME                   AS "Name",
        CREATED_DATE           AS "CreatedDate",
        CREATED_BY_ID          AS "CreatedById",
        LAST_MODIFIED_DATE     AS "LastModifiedDate",
        LAST_MODIFIED_BY_ID    AS "LastModifiedById",
        SYSTEM_MODSTAMP        AS "SystemModstamp",
        LAST_ACTIVITY_DATE     AS "LastActivityDate",
        LAST_VIEWED_DATE       AS "LastViewedDate",
        LAST_REFERENCED_DATE   AS "LastReferencedDate",
        TYPE_C                 AS "Type_c",
        DESCRIPTION_C          AS "Description_c",
        GRADES_APPLICABLE_C    AS "Grades_Applicable_c",
        EXTERNAL_ID_C          AS "External_ID_c",
        LEVEL_1_NAME_C         AS "Level_1_Name_c",
        LEVEL_2_NAME_C         AS "Level_2_Name_c",
        LEVEL_3_NAME_C         AS "Level_3_Name_c",
        PROGRAM_DISPLAY_NAME_C AS "Program_Display_Name_c",
        NO_TRANSLATE_C         AS "No_Translate_c",
        CTE_PROGRAM_C          AS "CTE_Program_c"
    FROM raw_matillion_program
    where Is_Deleted=0
)
select * from view_program
