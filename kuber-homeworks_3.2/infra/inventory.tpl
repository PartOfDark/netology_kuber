[all]
%{ for m in masters ~}
${m.name} ansible_host=${m.public_ip} ip=${m.private_ip} ansible_user=${ssh_user}
%{ endfor ~}
%{ for w in workers ~}
${w.name} ansible_host=${w.public_ip} ip=${w.private_ip} ansible_user=${ssh_user}
%{ endfor ~}

[kube_control_plane]
%{ for m in masters ~}
${m.name}
%{ endfor ~}

[etcd]
%{ for m in masters ~}
${m.name}
%{ endfor ~}

[kube_node]
%{ for w in workers ~}
${w.name}
%{ endfor ~}