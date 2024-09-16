import requests
import os


def get_adf_pipeline(adf_name, pipeline_name, access_token, timeout=30):
    url = (
        "https://management.azure.com/subscriptions/"
        f"{subscription_id}/resourceGroups/{resource_group}/providers/"
        f"Microsoft.DataFactory/factories/{adf_name}/pipelines/{pipeline_name}"
        "?api-version=2018-06-01"
    )
    headers = {
        'Authorization': f'Bearer {access_token}',
        'Content-Type': 'application/json'
    }
    response = requests.get(url, headers=headers, timeout=timeout)
    return response.json()


def validate_pipeline(pipeline):
    if 'activities' in pipeline and len(pipeline['activities']) > 0:
        print("Pipeline is valid.")
    else:
        print("Pipeline is invalid.")


adf_name = os.environ['adf_name']
pipeline_name = os.environ['pipeline_name']
access_token = os.environ['access_token']

pipeline = get_adf_pipeline(
    adf_name,
    pipeline_name,
    access_token,
    timeout=60
)
