import pandas as pd
from azure.storage.filedatalake import DataLakeServiceClient

service_client = DataLakeServiceClient(account_url="https://<account_name>.dfs.core.windows.net", credential="<credential>")

file_system_client = service_client.get_file_system_client(file_system="my-file-system")

file_client = file_system_client.get_file_client("my-folder/my-file.csv")
download = file_client.download_file()
data = download.readall()

df = pd.read_csv(pd.compat.StringIO(data.decode('utf-8')))
