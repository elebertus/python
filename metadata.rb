# http://tickets.opscode.com/browse/COOK-1405 once this is built switch back to python
# in https://github.riotgames.com/cookbooks/DWDBaseline/blob/master/Berksfile
maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs Python, pip and virtualenv. Includes LWRPs for managing Python packages with `pip` and `virtualenv` isolated Python environments."
version           "1.0.6"
name              "eblack_python"

depends           "build-essential"
depends           "yum"

recipe "eblack_python", "Installs python, pip, and virtualenv"
recipe "eblack_python::package", "Installs python using packages."
recipe "eblack_python::source", "Installs python from source."
recipe "eblack_python::pip", "Installs pip from source."
recipe "eblack_python::virtualenv", "Installs virtualenv using the python_pip resource."

%w{ debian ubuntu centos redhat fedora freebsd }.each do |os|
  supports os
end
