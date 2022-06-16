meltano install

# Temporary fix for markdown dependencies issue: https://github.com/dbt-labs/dbt-core/issues/4745
.meltano/transformers/dbt/venv/bin/pip3 install --force-reinstall MarkupSafe==2.0.1

meltano elt tap-spotify target-postgres--transferwise --transform=run
