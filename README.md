# Bash Monitoring Plugin

## Overview

This project is a Linux Bash monitoring plugin that checks whether the Apache HTTP Server (httpd) is running. If the service is down, the script automatically attempts to restart it and reports the result.

## Features

- Checks the status of the Apache (httpd) service.
- Automatically starts the service if it is not running.
- Displays informative status messages.
- Uses systemctl for service management.
- Suitable for Linux systems using systemd.

## Technologies Used

- Bash
- Linux
- Systemd
- Apache HTTP Server (httpd)

## How It Works

1. Checks for the httpd process.
2. If the service is running:
   - Displays a success message.
3. If the service is stopped:
   - Attempts to start the service.
   - Reports whether the restart was successful.

## Usage

Give execute permission:

```bash
chmod +x 1_monit.sh
```

Run the script:

```bash
./1_monit.sh
```

## Sample Output

When Apache is running:

```text
########################################################
Mon Jul 13 12:30:15 PM UTC 2026
HTTPD is running
########################################################
```

When Apache is stopped:

```text
########################################################
Mon Jul 13 12:30:15 PM UTC 2026
HTTPD is NOT running
Starting the process...
Process started successfully.
########################################################
```

## Author

Masam Hussain Qureshi
