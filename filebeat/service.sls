start_filebeat_service:
  service.running:
    - name: filebeat
    - enable: True
    - require:
      - pkg: filebeat
    {%- if salt['pillar.get']('filebeat:config') %}
    - watch:
      - file: /etc/filebeat/filebeat.yml
    {%- endif %}

