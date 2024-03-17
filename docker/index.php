<?php
// Output "Hello, World!"
echo "Hello, World!\n";

// Get the container ID
$containerId = trim(shell_exec("cat /proc/self/cgroup | grep 'docker' | sed 's/^.*\///' | tail -n1"));

// Get the host IP
$hostIp = trim(shell_exec("hostname -i"));

echo "Container ID: $containerId\n";
echo "Host IP: $hostIp\n";
?>

