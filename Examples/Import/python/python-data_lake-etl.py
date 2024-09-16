import pandas as pd
from azure.storage.filedatalake import DataLakeServiceClient

df = pd.read_csv('datos.csv')

df['columna'] = df['columna'].apply(lambda x: x.strip().upper())

service_client = DataLakeServiceClient(account_url="https://<account_name>.dfs.core.windows.net", credential="<credential>")
file_system_client = service_client.get_file_system_client(file_system="my-file-system")
file_client = file_system_client.get_file_client("my-folder/my-file.csv")
file_client.upload_data(df.to_csv(index=False), overwrite=True)
