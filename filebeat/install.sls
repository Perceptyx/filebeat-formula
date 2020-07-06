{%- if grains['os_family'].lower() == 'debian' %}
filebeat-apt-https:
  pkg.installed:
    - name: apt-transport-https
filebeat_repo:
  pkgrepo.managed:
    - name: deb https://artifacts.elastic.co/packages/7.x/apt stable main
    - file: /etc/apt/sources.list.d/elastic-7.x.list
    - gpgcheck: 1
    - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    - require_in:
      - pkg: filebeat.install
    - watch_in:
      - pkg: filebeat.install
      
{%- elif grains['os_family'].lower() == 'redhat' %}
filebeat_repo:
  pkgrepo.managed:
    - name: elastic-7.x
    - humanname: Elastic repository for 7.x packages
    - baseurl: https://artifacts.elastic.co/packages/7.x/yum
    - gpgcheck: 1
    - gpgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    - enabled: 1
    - autorefresh: 1
    - type: rpm-md
    - require_in:
      - pkg: filebeat.install
    - watch_in:
      - pkg: filebeat.install
{%- endif %}

filebeat.install:
  pkg.installed:
    - name: filebeat

