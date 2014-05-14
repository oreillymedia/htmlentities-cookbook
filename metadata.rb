name              "htmlentities"
maintainer        "Sanders Kleinfeld"
maintainer_email  "sanders@oreilly.com"
license           "Apache 2.0"
description       "Installs catalogs of XHTML entities in /etc/xml for use in parsing entities"

version           "0.0.2"
recipe            "default", "Installs XHTML entity catalogs"

%w{ ubuntu debian }.each do |os|
  supports os
end
