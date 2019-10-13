sudo openstack tripleo deploy \
    --templates /usr/share/openstack-tripleo-heat-templates \
    --local-ip={{ local_ip }}/{{ cidr }} \
    -e /home/stack/templates/containers-prepare-parameters.yaml \
    -r /home/stack/templates/custom-standalone.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/standalone/standalone-tripleo.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/services/octavia.yaml \
    -e /home/stack/templates/standalone_parameters.yaml \
    --output-dir /home/stack/templates/output \
    --standalone
