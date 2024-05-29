cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  attention-deficit-hyperactivity-disorder-adhd-concerta---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-concerta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  attention-deficit-hyperactivity-disorder-adhd-125mg---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-concerta---primary/output
  attention-deficit-hyperactivity-disorder-adhd-guanfacine---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-guanfacine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-125mg---primary/output
  attention-deficit-hyperactivity-disorder-adhd-strattera---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-strattera---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-guanfacine---primary/output
  attention-deficit-hyperactivity-disorder-adhd-atomoxetine---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-atomoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-strattera---primary/output
  attention-deficit-hyperactivity-disorder-adhd-conduct---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-conduct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-atomoxetine---primary/output
  attention-deficit-hyperactivity-disorder-adhd-hydrochloride---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-conduct---primary/output
  attention-deficit-hyperactivity-disorder-adhd-childhood---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-childhood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-hydrochloride---primary/output
  attention-deficit-hyperactivity-disorder-adhd-tranquilyn---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-tranquilyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-childhood---primary/output
  other-attention-deficit-hyperactivity-disorder-adhd---primary:
    run: other-attention-deficit-hyperactivity-disorder-adhd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-tranquilyn---primary/output
  attention-deficit-hyperactivity-disorder-adhd-therapy---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-attention-deficit-hyperactivity-disorder-adhd---primary/output
  attention-deficit-hyperactivity-disorder-adhd-review---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-therapy---primary/output
  attention-deficit-hyperactivity-disorder-adhd-unspecified---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-review---primary/output
  attention---primary:
    run: attention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-unspecified---primary/output
  attention-deficit-hyperactivity-disorder-adhd-xdisturbance---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-xdisturbance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: attention---primary/output
  attention-deficit-hyperactivity-disorder-adhd-dimesylate---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-dimesylate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-xdisturbance---primary/output
  attention-deficit-hyperactivity-disorder-adhd-methylphenidate---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-methylphenidate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-dimesylate---primary/output
  attention-deficit-hyperactivity-disorder-adhd-equasym---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-equasym---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-methylphenidate---primary/output
  attention-deficit-hyperactivity-disorder-adhd-third---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-equasym---primary/output
  attention-deficit-hyperactivity-disorder-adhd-durophet---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-durophet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-third---primary/output
  attention-deficit-hyperactivity-disorder-adhd-tablet---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-durophet---primary/output
  attention-deficit-hyperactivity-disorder-adhd-intuniv---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-intuniv---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-tablet---primary/output
  attention-deficit-hyperactivity-disorder-adhd-medikinet---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-medikinet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-intuniv---primary/output
  attention-deficit-hyperactivity-disorder-adhd-second---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-second---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-medikinet---primary/output
  attention-deficit-hyperactivity-disorder-adhd-elvanse---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-elvanse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-second---primary/output
  attentiondeficit-hyperactivity-disorder-adhd---primary:
    run: attentiondeficit-hyperactivity-disorder-adhd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-elvanse---primary/output
  attention-deficit-hyperactivity-disorder-adhd-first---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: attentiondeficit-hyperactivity-disorder-adhd---primary/output
  attention-deficit-hyperactivity-disorder-adhd-nonstimulnt---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-nonstimulnt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-first---primary/output
  attention-deficit-hyperactivity-disorder-adhd-nonstimulant---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-nonstimulant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-nonstimulnt---primary/output
  attention-deficit-hyperactivity-disorder-adhd-dexamfetamine---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-dexamfetamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-nonstimulant---primary/output
  attention-deficit-hyperactivity-disorder-adhd-delay---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-delay---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-dexamfetamine---primary/output
  xhyperkinetic-attention-deficit-hyperactivity-disorder-adhd---primary:
    run: xhyperkinetic-attention-deficit-hyperactivity-disorder-adhd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-delay---primary/output
  attention-deficit-hyperactivity-disorder-adhd-motor---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-motor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: xhyperkinetic-attention-deficit-hyperactivity-disorder-adhd---primary/output
  attention-deficit-hyperactivity-disorder-adhd-description---primary:
    run: attention-deficit-hyperactivity-disorder-adhd-description---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-motor---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: attention-deficit-hyperactivity-disorder-adhd-description---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
