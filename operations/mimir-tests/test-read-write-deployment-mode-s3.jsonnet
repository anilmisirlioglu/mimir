local mimir = import 'mimir/mimir.libsonnet';

mimir {
  _config+:: {
    namespace: 'default',
    external_url: 'http://test',
    aws_region: 'eu-west-1',

    storage_backend: 's3',
    blocks_storage_bucket_name: 'blocks-bucket',
    bucket_index_enabled: true,
    query_scheduler_enabled: true,

    ruler_enabled: true,
    ruler_storage_bucket_name: 'rules-bucket',

    alertmanager_enabled: true,
    alertmanager_storage_bucket_name: 'alerts-bucket',

    read_write_deployment_enabled: true,
    multi_zone_ingester_enabled: true,
    multi_zone_store_gateway_enabled: true,
  },
}
