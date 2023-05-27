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
      inputBinding:
        valueFrom: $(self.location)
        filename: "0.csv"
  erih_plus:
    type: File
    inputBinding:
      position: 4
      prefix: --erih_plus
      inputBinding:
        valueFrom: $(self.location)
        filename: "ERIHPLUSapprovedJournals.csv"
  doaj:
    type: File
    inputBinding:
      position: 5
      prefix: --doaj
      inputBinding:
        valueFrom: $(self.location)
        filename: "journalcsv__doaj.csv"

outputs:
  result:
    type: stdout

stdout: result.txt


