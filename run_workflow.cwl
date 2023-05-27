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
    inputBinding:
      position: 3
      prefix: --oc_meta
      valueFrom: $(self.location)
  erih_plus:
    type: File
    inputBinding:
      position: 4
      prefix: --erih_plus
      valueFrom: $(self.location)
  doaj:
    type: File
    inputBinding:
      position: 5
      prefix: --doaj
      valueFrom: $(self.location)

outputs:
  result:
    type: stdout

stdout: result.txt

