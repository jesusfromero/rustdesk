on run {daemon_file, agent_file, user}

  set sh1 to "echo " & quoted form of daemon_file & " > '/Library/LaunchDaemons/es.vexeo.RustDesk_service.plist' && chown root:wheel '/Library/LaunchDaemons/es.vexeo.RustDesk_service.plist';"

  set sh2 to "echo " & quoted form of agent_file & " > '/Library/LaunchAgents/es.vexeo.RustDesk_server.plist' && chown root:wheel '/Library/LaunchAgents/es.vexeo.RustDesk_server.plist';"

  set sh3 to "cp -rf '/Users/" & user & "/Library/Preferences/es.vexeo.RustDesk/RustDesk.toml' '/var/root/Library/Preferences/es.vexeo.RustDesk/';"

  set sh4 to "cp -rf '/Users/" & user & "/Library/Preferences/es.vexeo.RustDesk/RustDesk2.toml' '/var/root/Library/Preferences/es.vexeo.RustDesk/';"

  set sh5 to "launchctl load -w '/Library/LaunchDaemons/es.vexeo.RustDesk_service.plist';"

  set sh to sh1 & sh2 & sh3 & sh4 & sh5

  do shell script sh with prompt "RustDesk wants to install daemon and agent" with administrator privileges
end run
