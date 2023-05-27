cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python", "run_workflow.py"]

inputs:
  batch_size:
    type: int
  max_workers:
    type: int
  oc_meta:
    type: File
  erih_plus:
    type: File
  doaj:
    type: File

outputs:
  result:
    type: stdout

stdout: result.txt

