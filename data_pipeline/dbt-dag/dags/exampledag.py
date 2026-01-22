from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="dbt_pipeline",
    start_date=datetime(2025, 1, 1),
    schedule="@daily",
    catchup=False
) as dag:

    dbt_run = BashOperator(
        task_id="dbt_run",
        bash_command="cd /usr/local/airflow/include/dbt/data_pipeline && dbt run"
    )
