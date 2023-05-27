cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python"]

inputs:
  script:
    type: File
  oc_meta:
    type: Directory
  erih_plus:
    type: Directory
  doaj:
    type: Directory

arguments:
  - valueFrom: $(inputs.script.path)

outputs:
  result:
    type: stdout

stdout: result.txt
