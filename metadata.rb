# http://tickets.opscode.com/browse/COOK-1405 once this is built switch back to python
# in https://github.riotgames.com/cookbooks/DWDBaseline/blob/master/Berksfile
maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs Python, pip and virtualenv. Includes LWRPs for managing Python packages with `pip` and `virtualenv` isolated Python environments."
version           "1.0.6"

depends           "build-essential"
depends           "yum"

recipe "tmp_python", "Installs python, pip, and virtualenv"
recipe "tmp_python::package", "Installs python using packages."
recipe "tmp_python::source", "Installs python from source."
recipe "tmp_python::pip", "Installs pip from source."
recipe "tmp_python::virtualenv", "Installs virtualenv using the python_pip resource."

%w{ debian ubuntu centos redhat fedora freebsd }.each do |os|
  supports os
end
