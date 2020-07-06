filebeat:
  # registry_path: ${path.data}/registry
  # registry_file_permissions: 0600
  # registry_flush: 0s
  # registry_migrate_file: ${path.data}/registry
  # overwrite_pipelines: false
  # shutdown_timeout: 0
  #-------------------------------- MODULES --------------------------------
  modules:
  #-------------------------------- MySQL Module --------------------------------
  - module: mysql
    # Error logs
    error:
      enabled: false
      # Set custom paths for the log files. If left empty,
      # Filebeat will choose the paths depending on your OS.
      var.paths:
      # Input configuration (advanced). Any input configuration option
      # can be added under this section.
      input:
    # Slow logs
    slowlog:
      enabled: false
      # Set custom paths for the log files. If left empty,
      # Filebeat will choose the paths depending on your OS.
      var.paths:
      # Input configuration (advanced). Any input configuration option
      # can be added under this section.
      input:
  #-------------------------------- INPUTS --------------------------------
  inputs:
  #------------------------------ Log input --------------------------------
  - type: log
    enabled: true
    paths:
      - /var/log/messages
      - /var/log/*.log
  #-------------------------------- OUTPUTS --------------------------------
  logstash:
    enabled: True
    server:
      - "your-logstash-host:5044"
    tls:
      enabled: True
      # path to the certificate of your ELK server
      # set to empty to use system certificates
      ssl_cert_path: /etc/pki/tls/certs/logstash.crt
      managed_cert: True
      ssl_cert: |
        -----BEGIN CERTIFICATE-----
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCR
        MIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyourCRTMIIDnzyour==
        -----END CERTIFICATE-----
  # ================================== General ===================================
  name: 'TestInstance'
  tags: ["service-X", "web-tier"]
  fields:
    env: staging
