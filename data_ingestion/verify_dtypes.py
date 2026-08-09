"""Print the pandas dtype of every column so you can eyeball it against the
raw-table DDL in db/init/02_create_raw_tables.sql.

Run:
    python data_ingestion/verify_dtypes.py

The DataFrames are built through read_csv, so they already have the dtypes the
config (TABLE_CONFIG in load_config.py) produces. For each table this prints the
column dtypes; compare them to the DDL by hand. Quick things to check:
    * int columns         -> int64 or Int64   (NOT float64)
    * timestamp columns   -> datetime64        (NOT object/string)
    * zip-code prefixes   -> string            (keeps the leading zero)
"""

from load_raw_data import get_data_dict


def main():
    data_dict = get_data_dict()

    for table_name, df in data_dict.items():
        print("=" * 60)
        print(table_name)
        print(df.dtypes.to_string())
        print()


if __name__ == "__main__":
    main()
