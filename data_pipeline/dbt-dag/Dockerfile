FROM quay.io/astronomer/astro-runtime:10.3.0

RUN pip uninstall -y apache-airflow-providers-google google-cloud-bigquery \
    google-cloud-secret-manager google-cloud-storage || true
