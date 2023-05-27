cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python"]

inputs:
  script:
    type: File
    default: run_workflow.py
  oc_meta:
    type: File
  erih_plus:
    type: File
  doaj:
    type: File

arguments:
  - valueFrom: $(inputs.script.path)

outputs:
  result:
    type: stdout

stdout: result.txt
