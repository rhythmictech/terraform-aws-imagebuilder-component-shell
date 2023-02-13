name: ${name}-document
%{ if description != null ~}
description: ${description}
%{ endif ~}
schemaVersion: 1.0
phases:
  - name: ${phase}
    steps:
      - name: arbitrary-script
        action: ${action}
        inputs:
          commands:
            ${ indent(12, chomp(yamlencode(commands))) }
