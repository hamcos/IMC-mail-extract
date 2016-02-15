IMC-mail-extract - Parse Report Email from IMC and extract the attached CSV file for further processing.

# DESCRIPTION

Written to parse a report Email from IMC containing a CSV file and process the file on another system.
The script expects the mail either from STDIN or as filename in it’s parameter list.

# USAGE

IMC-mail-extract --remote icinga@monitoring-collector

# OPTIONS

- -r|--remote

    \[&lt;username>\]@&lt;hostname>\[:&lt;port>\] of the remote server where the
    IMC-DNS-mon-comparison script will be executed.
    Your `ssh_config` file will be considered for further expansion.

- -s|--remote-script

    File path of the script to be executed on the remote server.
    The file path to the CSV file will be appended as last option.

- -d|--remote-data

    File path where the CSV file will be saved to on the remote server.

- -o|--output-file

    Write the CSV file instead of copying it to the remote and processing it there.

- -h|--help

    Print help page and exit.

- -V|--version

    Print version and exit.

# REQUIRED ARGUMENTS

\--remote

# DEPENDENCIES

Required modules:

    Email::MIME
    Net::OpenSSH

Debian packages:

    libemail-mime-perl libnet-openssh-perl

CPAN:

    Email::MIME Net::OpenSSH

# CONFIGURATION

None

# EXIT STATUS

0   No errors occurred and no deviations could be found.

2   Any other error which which caused the script to die.

# DIAGNOSTICS

Useful options for diagnostics:

    --output-file

Also, spin up the test framework which uses Bats.

# BUGS AND LIMITATIONS

None that I know of. Submit patches if you find bugs :)

# INCOMPATIBILITIES

None that I am aware of.

# AUTHOR

Robin Schneider &lt;robin.schneider@hamcos.de>

# LICENSE AND COPYRIGHT

Copyright (C) 2015 Robin Schneider &lt;robin.schneider@hamcos.de>

hamcos IT Service GmbH http://www.hamcos.de

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, version 3 of the
License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see &lt;https://www.gnu.org/licenses/>.
