import os
from sqlalchemy import create_engine
import pandas as pd
from load_config import DTYPE_CONFIG
from dotenv import load_dotenv

ROOT_PATH = os.path.dirname(os.path.dirname(__file__))
ENV_PATH = os.path.join(ROOT_PATH, ".env")

load_dotenv(ENV_PATH)

# Getting values from .env file for connection to engine 
POSTGRES_USER = os.environ['POSTGRES_USER']
POSTGRES_PASSWORD = os.environ['POSTGRES_PASSWORD']
POSTGRES_DB = os.environ['POSTGRES_DB']
POSTGRES_HOST = os.environ['POSTGRES_HOST']
POSTGRES_PORT = os.environ['POSTGRES_PORT']

RAW_DATA_PATH = os.path.join(ROOT_PATH, "data", 'raw')
raw_data_list = os.listdir(RAW_DATA_PATH)


def get_connection():
    engine = create_engine(
        f"postgresql+psycopg2://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_HOST}:{POSTGRES_PORT}/{POSTGRES_DB}"
    )
    return engine

def read_csv(file_name):
    df = pd.read_csv(os.path.join(RAW_DATA_PATH, file_name), dtype=DTYPE_CONFIG)
    print(f"{file_name} read.")
    return df

def get_data_dict():
    table_names = [raw_data_list[i].split('.')[0].upper() for i in range(0, len(raw_data_list))]
    data_dict = {}

    for i in range(0, len(raw_data_list)):
        data_dict[table_names[i]] = read_csv(raw_data_list[i])

    return data_dict


if __name__ == "__main__":
    get_data_dict()