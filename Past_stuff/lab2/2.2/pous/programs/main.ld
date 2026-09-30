PROGRAM main
  VAR
    button : BOOL AT %QX0.0;
    Motor : BOOL AT %QX0.1;
    Package_detected : BOOL AT %QX0.2;
    reset : BOOL AT %QX0.3;
    total_count : INT AT %MW1;
    Big_Box : INT AT %MW2;
    Medium_Box : INT AT %MW3;
    small_box : INT AT %MW4;
    is_small : BOOL AT %MX0.0;
    is_BIG : BOOL AT %MX0.1;
    weight : INT AT %MW0;
    CTU0 : CTU;
    CTU1 : CTU;
    CTU_DINT0 : CTU_DINT;
    CTUD0 : CTUD;
    CTU2 : CTU;
    CTU3 : CTU;
  END_VAR

{
  "name": "main",
  "rungs": [
    {
      "id": "rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        323,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "2268395",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_ef157041-cc67-45b6-a664-01b2bc2aa406",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8207967",
            "variable": {
              "id": "",
              "name": "button",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_cae9209a-98af-4eda-a9d9-571614cc2a8a",
          "type": "coil",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 210,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 210,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 210,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2875535",
            "variable": {
              "id": "",
              "name": "Motor",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf",
          "type": "powerRail",
          "position": {
            "x": 320,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 320
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "6274667",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf_CONTACT_ef157041-cc67-45b6-a664-01b2bc2aa406__left-rail_input",
          "source": "left-rail-rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf",
          "target": "CONTACT_ef157041-cc67-45b6-a664-01b2bc2aa406",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_ef157041-cc67-45b6-a664-01b2bc2aa406_COIL_cae9209a-98af-4eda-a9d9-571614cc2a8a__output_input",
          "source": "CONTACT_ef157041-cc67-45b6-a664-01b2bc2aa406",
          "target": "COIL_cae9209a-98af-4eda-a9d9-571614cc2a8a",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_cae9209a-98af-4eda-a9d9-571614cc2a8a_right-rail-rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf__output_right-rail",
          "source": "COIL_cae9209a-98af-4eda-a9d9-571614cc2a8a",
          "target": "right-rail-rung_main_5517712e-bb27-4b2e-ace7-8258ae3304cf",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        610,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "4089346",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_626b368d-6127-4399-a8dc-1d2e9efd1ed1",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9488349",
            "variable": {
              "id": "",
              "name": "Package_detected",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 347,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 347,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 347,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 347,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 347,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "3750014",
            "variant": {
              "name": "GT",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "weight",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW0",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "10"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "is_BIG",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "%MX0.1",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d",
          "type": "powerRail",
          "position": {
            "x": 607,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 607
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "6995608",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_415ea0a1-5c41-462e-b651-278d873a1ed3",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6907303",
            "variable": {
              "name": "weight",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW0",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_0614bc99-cb39-4804-ab6a-fb2e26e81b75",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7526799",
            "variable": {
              "name": "10"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_23435736-f1c5-4ba5-b56b-372bc9696b91",
          "type": "variable",
          "position": {
            "x": 377,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 377,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 377,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 377,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "9156156",
            "variable": {
              "name": "is_BIG",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "%MX0.1",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_99645686-e906-4524-9f69-82d5da428435_right-rail-rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d__OUT_right-rail",
          "source": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
          "target": "right-rail-rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d_CONTACT_626b368d-6127-4399-a8dc-1d2e9efd1ed1__left-rail_input",
          "source": "left-rail-rung_main_9737de1f-75fe-4ede-9c2e-8cda13dac48d",
          "target": "CONTACT_626b368d-6127-4399-a8dc-1d2e9efd1ed1",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_626b368d-6127-4399-a8dc-1d2e9efd1ed1_BLOCK_99645686-e906-4524-9f69-82d5da428435__output_EN",
          "source": "CONTACT_626b368d-6127-4399-a8dc-1d2e9efd1ed1",
          "target": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_415ea0a1-5c41-462e-b651-278d873a1ed3_BLOCK_99645686-e906-4524-9f69-82d5da428435__output_IN1",
          "source": "VARIABLE_415ea0a1-5c41-462e-b651-278d873a1ed3",
          "target": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_0614bc99-cb39-4804-ab6a-fb2e26e81b75_BLOCK_99645686-e906-4524-9f69-82d5da428435__output_IN2",
          "source": "VARIABLE_0614bc99-cb39-4804-ab6a-fb2e26e81b75",
          "target": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_99645686-e906-4524-9f69-82d5da428435_VARIABLE_23435736-f1c5-4ba5-b56b-372bc9696b91__OUT_input",
          "source": "BLOCK_99645686-e906-4524-9f69-82d5da428435",
          "target": "VARIABLE_23435736-f1c5-4ba5-b56b-372bc9696b91",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_main_888101fd-cbca-4058-89cf-13b840cb8176",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        610,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_888101fd-cbca-4058-89cf-13b840cb8176",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "2668680",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_ee5e960d-d94a-49ab-89e0-7ff1d772edf1",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2145609",
            "variable": {
              "id": "",
              "name": "Package_detected",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 347,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 347,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 347,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 347,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 347,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6484925",
            "variant": {
              "name": "LT",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "weight",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW0",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "5"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "is_small",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "%MX0.0",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_888101fd-cbca-4058-89cf-13b840cb8176",
          "type": "powerRail",
          "position": {
            "x": 607,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 607
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "9575520",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_ef459b99-4309-4c71-819e-576bf9515fdd",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8345809",
            "variable": {
              "name": "weight",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW0",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_cb1f2566-3832-4551-a58a-174cd5e8792d",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8817132",
            "variable": {
              "name": "5"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b0e69875-f5f8-4619-bd51-b5045fbffc90",
          "type": "variable",
          "position": {
            "x": 377,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 377,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 377,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 377,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "2572315",
            "variable": {
              "name": "is_small",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "%MX0.0",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_main_888101fd-cbca-4058-89cf-13b840cb8176_CONTACT_ee5e960d-d94a-49ab-89e0-7ff1d772edf1__left-rail_input",
          "source": "left-rail-rung_main_888101fd-cbca-4058-89cf-13b840cb8176",
          "target": "CONTACT_ee5e960d-d94a-49ab-89e0-7ff1d772edf1",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_ee5e960d-d94a-49ab-89e0-7ff1d772edf1_BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2__output_IN1",
          "source": "CONTACT_ee5e960d-d94a-49ab-89e0-7ff1d772edf1",
          "target": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2_right-rail-rung_main_888101fd-cbca-4058-89cf-13b840cb8176__OUT_right-rail",
          "source": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
          "target": "right-rail-rung_main_888101fd-cbca-4058-89cf-13b840cb8176",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_ef459b99-4309-4c71-819e-576bf9515fdd_BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2__output_IN1",
          "source": "VARIABLE_ef459b99-4309-4c71-819e-576bf9515fdd",
          "target": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_cb1f2566-3832-4551-a58a-174cd5e8792d_BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2__output_IN2",
          "source": "VARIABLE_cb1f2566-3832-4551-a58a-174cd5e8792d",
          "target": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2_VARIABLE_b0e69875-f5f8-4619-bd51-b5045fbffc90__OUT_input",
          "source": "BLOCK_4e329677-6069-4031-877b-6cabc8a6f8c2",
          "target": "VARIABLE_b0e69875-f5f8-4619-bd51-b5045fbffc90",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        712,
        294
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 210
                },
                "relPosition": {
                  "x": 3,
                  "y": 180
                },
                "id": "branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_R",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 180,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 130
                },
                "relPosition": {
                  "x": 3,
                  "y": 100
                },
                "id": "branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_CU",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 100,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 210
                },
                "relPosition": {
                  "x": 3,
                  "y": 180
                },
                "id": "branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_R",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 180,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 130
                },
                "relPosition": {
                  "x": 3,
                  "y": 100
                },
                "id": "branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_CU",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 100,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "3057843",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "CU",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 196
                },
                "id": "R",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 250
                },
                "relPosition": {
                  "x": 0,
                  "y": 236
                },
                "id": "PV",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 236,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 130
                },
                "relPosition": {
                  "x": 78,
                  "y": 116
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 210
                },
                "relPosition": {
                  "x": 78,
                  "y": 196
                },
                "id": "CV",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "CU",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 196
                },
                "id": "R",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 250
                },
                "relPosition": {
                  "x": 0,
                  "y": 236
                },
                "id": "PV",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 236,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 449,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 130
                },
                "relPosition": {
                  "x": 78,
                  "y": 116
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 210
                },
                "relPosition": {
                  "x": 78,
                  "y": 196
                },
                "id": "CV",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 449,
                "y": 50
              },
              "relPosition": {
                "x": 78,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "9497244",
            "variant": {
              "name": "CTU",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "CU",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "R",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "PV",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "CV",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "body": "",
              "documentation": "The up-counter can be used to signal when a count has reached a maximum value."
            },
            "variable": {
              "id": "9dad9ea4-3e46-4344-a753-3e40764bfe3f",
              "name": "CTU0",
              "type": {
                "definition": "derived",
                "value": "CTU"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "PV",
                "type": "input",
                "variable": {
                  "name": "100"
                }
              },
              {
                "handleId": "R",
                "type": "input",
                "variable": {
                  "id": "",
                  "name": ""
                }
              },
              {
                "handleId": "CV",
                "type": "output",
                "variable": {
                  "name": "Big_Box",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW2",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "CU",
                "type": "input",
                "variable": {
                  "name": "is_BIG",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "%MX0.1",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 78,
          "height": 260,
          "measured": {
            "width": 78,
            "height": 260
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_e4718879-5d58-4e0e-a881-d233bc631418",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 198
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 210
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 210
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 210
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 210
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "5044618",
            "variable": {
              "id": "",
              "name": "reset",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
              "handleId": "R",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_c4736ecb-64a8-4848-8a13-c4337a79f250",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9422963",
            "variable": {
              "id": "",
              "name": "is_BIG",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_c3b106fb-5fa7-4d89-87b4-3c7d85915373",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7974589",
            "variable": {
              "id": "",
              "name": "Package_detected",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
          "type": "powerRail",
          "position": {
            "x": 709,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 709
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "1347333",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_42ea0e76-1a5e-4256-bfaf-3a4a9bde085d",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 234
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 250
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 250
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 250
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "10009421",
            "variable": {
              "name": "100"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
              "handleId": "PV",
              "variableType": {
                "name": "PV",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b081a626-8a6d-4764-9f6f-10c8b35b3c04",
          "type": "variable",
          "position": {
            "x": 479,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 479,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "3931261",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
              "handleId": "Q",
              "variableType": {
                "name": "Q",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_65ab46ac-fe6d-42dd-b26c-1700fedfd382",
          "type": "variable",
          "position": {
            "x": 479,
            "y": 194
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 479,
                "y": 210
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "9395575",
            "variable": {
              "name": "Big_Box",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW2",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
              "handleId": "CV",
              "variableType": {
                "name": "CV",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_right-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62__Q_right-rail",
          "source": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "target": "right-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62_CONTACT_e4718879-5d58-4e0e-a881-d233bc631418__branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_R_input",
          "source": "left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
          "target": "CONTACT_e4718879-5d58-4e0e-a881-d233bc631418",
          "sourceHandle": "branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_R",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_e4718879-5d58-4e0e-a881-d233bc631418_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e__output_R",
          "source": "CONTACT_e4718879-5d58-4e0e-a881-d233bc631418",
          "target": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "sourceHandle": "output",
          "targetHandle": "R"
        },
        {
          "id": "e_left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e__left-rail_EN",
          "source": "left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
          "target": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62_CONTACT_c4736ecb-64a8-4848-8a13-c4337a79f250__branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_CU_input",
          "source": "left-rail-rung_main_1068005d-9a23-4d91-834c-2b7fb4384e62",
          "target": "CONTACT_c4736ecb-64a8-4848-8a13-c4337a79f250",
          "sourceHandle": "branch_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_CU",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_c4736ecb-64a8-4848-8a13-c4337a79f250_CONTACT_c3b106fb-5fa7-4d89-87b4-3c7d85915373__output_input",
          "source": "CONTACT_c4736ecb-64a8-4848-8a13-c4337a79f250",
          "target": "CONTACT_c3b106fb-5fa7-4d89-87b4-3c7d85915373",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_c3b106fb-5fa7-4d89-87b4-3c7d85915373_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e__output_CU",
          "source": "CONTACT_c3b106fb-5fa7-4d89-87b4-3c7d85915373",
          "target": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "sourceHandle": "output",
          "targetHandle": "CU"
        },
        {
          "id": "e_VARIABLE_42ea0e76-1a5e-4256-bfaf-3a4a9bde085d_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e__output_PV",
          "source": "VARIABLE_42ea0e76-1a5e-4256-bfaf-3a4a9bde085d",
          "target": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "sourceHandle": "output",
          "targetHandle": "PV"
        },
        {
          "id": "e_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_VARIABLE_b081a626-8a6d-4764-9f6f-10c8b35b3c04__Q_input",
          "source": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "target": "VARIABLE_b081a626-8a6d-4764-9f6f-10c8b35b3c04",
          "sourceHandle": "Q",
          "targetHandle": "input"
        },
        {
          "id": "e_BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e_VARIABLE_65ab46ac-fe6d-42dd-b26c-1700fedfd382__CV_input",
          "source": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "target": "VARIABLE_65ab46ac-fe6d-42dd-b26c-1700fedfd382",
          "sourceHandle": "CV",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": [
        {
          "blockId": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "handleId": "R",
          "direction": "input",
          "nodeIds": [
            "CONTACT_e4718879-5d58-4e0e-a881-d233bc631418"
          ]
        },
        {
          "blockId": "BLOCK_6475c4fd-896a-4876-b2b7-b1e56e50930e",
          "handleId": "CU",
          "direction": "input",
          "nodeIds": [
            "CONTACT_c4736ecb-64a8-4848-8a13-c4337a79f250",
            "CONTACT_c3b106fb-5fa7-4d89-87b4-3c7d85915373"
          ]
        }
      ]
    },
    {
      "id": "rung_main_161d4c9e-2252-4106-9299-b014661f5668",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        712,
        294
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 210
                },
                "relPosition": {
                  "x": 3,
                  "y": 180
                },
                "id": "branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_R",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 180,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 130
                },
                "relPosition": {
                  "x": 3,
                  "y": 100
                },
                "id": "branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_CU",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 100,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 210
                },
                "relPosition": {
                  "x": 3,
                  "y": 180
                },
                "id": "branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_R",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 180,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 130
                },
                "relPosition": {
                  "x": 3,
                  "y": 100
                },
                "id": "branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_CU",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 100,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6913274",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "CU",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 196
                },
                "id": "R",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 250
                },
                "relPosition": {
                  "x": 0,
                  "y": 236
                },
                "id": "PV",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 236,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 130
                },
                "relPosition": {
                  "x": 78,
                  "y": 116
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 210
                },
                "relPosition": {
                  "x": 78,
                  "y": 196
                },
                "id": "CV",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "CU",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 196
                },
                "id": "R",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 250
                },
                "relPosition": {
                  "x": 0,
                  "y": 236
                },
                "id": "PV",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 236,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 449,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 130
                },
                "relPosition": {
                  "x": 78,
                  "y": 116
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 210
                },
                "relPosition": {
                  "x": 78,
                  "y": 196
                },
                "id": "CV",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 449,
                "y": 50
              },
              "relPosition": {
                "x": 78,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "8725181",
            "variant": {
              "name": "CTU",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "CU",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "R",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "PV",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "CV",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "body": "",
              "documentation": "The up-counter can be used to signal when a count has reached a maximum value."
            },
            "variable": {
              "id": "bfabe546-d56a-487d-8299-813402d73053",
              "name": "CTU2",
              "type": {
                "definition": "derived",
                "value": "CTU"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "PV",
                "type": "input",
                "variable": {
                  "name": "100"
                }
              },
              {
                "handleId": "CV",
                "type": "output",
                "variable": {
                  "name": "small_box",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW4",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "CU",
                "type": "input",
                "variable": {
                  "name": "is_small",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "%MX0.0",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 78,
          "height": 260,
          "measured": {
            "width": 78,
            "height": 260
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_e0d7bfad-c8ad-45ba-a2cd-0bf66a986045",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 198
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 210
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 210
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 210
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 210
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4987617",
            "variable": {
              "id": "",
              "name": "reset",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
              "handleId": "R",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_f461de72-d34a-42a6-a544-702f7f91f745",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "5057475",
            "variable": {
              "id": "",
              "name": "is_small",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_731c64c1-f50f-43ad-91fc-939e29a27be6",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7241615",
            "variable": {
              "id": "",
              "name": "Package_detected",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668",
          "type": "powerRail",
          "position": {
            "x": 709,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 709
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "6643843",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_ffb6d482-7a87-4156-be18-753672f06fbe",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 234
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 250
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 250
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 250
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "9069949",
            "variable": {
              "name": "100"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
              "handleId": "PV",
              "variableType": {
                "name": "PV",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_8260d370-7764-4c33-99de-a8b54f4610c4",
          "type": "variable",
          "position": {
            "x": 479,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 479,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "7531583",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
              "handleId": "Q",
              "variableType": {
                "name": "Q",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_eae34944-3a2d-4b64-b06e-af408ddb1a96",
          "type": "variable",
          "position": {
            "x": 479,
            "y": 194
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 479,
                "y": 210
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "3333702",
            "variable": {
              "name": "small_box",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW4",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
              "handleId": "CV",
              "variableType": {
                "name": "CV",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_right-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668__Q_right-rail",
          "source": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "target": "right-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "reactflow__edge-left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_R-CONTACT_e0d7bfad-c8ad-45ba-a2cd-0bf66a986045input",
          "source": "left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668",
          "target": "CONTACT_e0d7bfad-c8ad-45ba-a2cd-0bf66a986045",
          "sourceHandle": "branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_R",
          "targetHandle": "input"
        },
        {
          "id": "reactflow__edge-CONTACT_e0d7bfad-c8ad-45ba-a2cd-0bf66a986045output-BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3R",
          "source": "CONTACT_e0d7bfad-c8ad-45ba-a2cd-0bf66a986045",
          "target": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "sourceHandle": "output",
          "targetHandle": "R"
        },
        {
          "id": "e_left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3__left-rail_EN",
          "source": "left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668",
          "target": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668_CONTACT_f461de72-d34a-42a6-a544-702f7f91f745__branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_CU_input",
          "source": "left-rail-rung_main_161d4c9e-2252-4106-9299-b014661f5668",
          "target": "CONTACT_f461de72-d34a-42a6-a544-702f7f91f745",
          "sourceHandle": "branch_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_CU",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_f461de72-d34a-42a6-a544-702f7f91f745_CONTACT_731c64c1-f50f-43ad-91fc-939e29a27be6__output_input",
          "source": "CONTACT_f461de72-d34a-42a6-a544-702f7f91f745",
          "target": "CONTACT_731c64c1-f50f-43ad-91fc-939e29a27be6",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_731c64c1-f50f-43ad-91fc-939e29a27be6_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3__output_CU",
          "source": "CONTACT_731c64c1-f50f-43ad-91fc-939e29a27be6",
          "target": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "sourceHandle": "output",
          "targetHandle": "CU"
        },
        {
          "id": "e_VARIABLE_ffb6d482-7a87-4156-be18-753672f06fbe_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3__output_PV",
          "source": "VARIABLE_ffb6d482-7a87-4156-be18-753672f06fbe",
          "target": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "sourceHandle": "output",
          "targetHandle": "PV"
        },
        {
          "id": "e_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_VARIABLE_8260d370-7764-4c33-99de-a8b54f4610c4__Q_input",
          "source": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "target": "VARIABLE_8260d370-7764-4c33-99de-a8b54f4610c4",
          "sourceHandle": "Q",
          "targetHandle": "input"
        },
        {
          "id": "e_BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3_VARIABLE_eae34944-3a2d-4b64-b06e-af408ddb1a96__CV_input",
          "source": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "target": "VARIABLE_eae34944-3a2d-4b64-b06e-af408ddb1a96",
          "sourceHandle": "CV",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": [
        {
          "blockId": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "handleId": "R",
          "direction": "input",
          "nodeIds": [
            "CONTACT_e0d7bfad-c8ad-45ba-a2cd-0bf66a986045"
          ]
        },
        {
          "blockId": "BLOCK_aedb8a53-e2f8-4933-8a4a-126347e9b0d3",
          "handleId": "CU",
          "direction": "input",
          "nodeIds": [
            "CONTACT_f461de72-d34a-42a6-a544-702f7f91f745",
            "CONTACT_731c64c1-f50f-43ad-91fc-939e29a27be6"
          ]
        }
      ]
    },
    {
      "id": "rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        826,
        294
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 130
                },
                "relPosition": {
                  "x": 3,
                  "y": 100
                },
                "id": "branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_CU",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 100,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 210
                },
                "relPosition": {
                  "x": 3,
                  "y": 180
                },
                "id": "branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_R",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 180,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 130
                },
                "relPosition": {
                  "x": 3,
                  "y": 100
                },
                "id": "branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_CU",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 100,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 210
                },
                "relPosition": {
                  "x": 3,
                  "y": 180
                },
                "id": "branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_R",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 180,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "3751740",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "type": "block",
          "position": {
            "x": 485,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 485,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 485,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "CU",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 485,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 196
                },
                "id": "R",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 485,
                  "y": 250
                },
                "relPosition": {
                  "x": 0,
                  "y": 236
                },
                "id": "PV",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 236,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 563,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 563,
                  "y": 130
                },
                "relPosition": {
                  "x": 78,
                  "y": 116
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 563,
                  "y": 210
                },
                "relPosition": {
                  "x": 78,
                  "y": 196
                },
                "id": "CV",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 485,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 485,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "CU",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 485,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 196
                },
                "id": "R",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 485,
                  "y": 250
                },
                "relPosition": {
                  "x": 0,
                  "y": 236
                },
                "id": "PV",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 236,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 563,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 563,
                  "y": 130
                },
                "relPosition": {
                  "x": 78,
                  "y": 116
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 563,
                  "y": 210
                },
                "relPosition": {
                  "x": 78,
                  "y": 196
                },
                "id": "CV",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 196,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 485,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 563,
                "y": 50
              },
              "relPosition": {
                "x": 78,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "1742652",
            "variant": {
              "name": "CTU",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "CU",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "R",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "PV",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "CV",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "body": "",
              "documentation": "The up-counter can be used to signal when a count has reached a maximum value."
            },
            "variable": {
              "id": "7151fb8c-665b-4e11-bf26-4274ad30317f",
              "name": "CTU3",
              "type": {
                "definition": "derived",
                "value": "CTU"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "PV",
                "type": "input",
                "variable": {
                  "name": "100"
                }
              },
              {
                "handleId": "CV",
                "type": "output",
                "variable": {
                  "name": "Medium_Box",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW3",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 78,
          "height": 260,
          "measured": {
            "width": 78,
            "height": 260
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_b313fe4d-d9e8-4d5d-805b-d681fb0ef00c",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "664322",
            "variable": {
              "id": "",
              "name": "is_small",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_8daf8d4d-3601-4f61-9f1d-6bfca061936b",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "250889",
            "variable": {
              "id": "",
              "name": "is_BIG",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_87df4b94-919b-43ce-92af-a5256c14cb50",
          "type": "contact",
          "position": {
            "x": 296,
            "y": 198
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 320,
                  "y": 210
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 320,
                  "y": 210
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 210
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 320,
                "y": 210
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8852164",
            "variable": {
              "id": "",
              "name": "reset",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "R",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_ef83b7ac-e54d-4db7-a170-8319957e1db6",
          "type": "contact",
          "position": {
            "x": 296,
            "y": 118
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 320,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 320,
                  "y": 130
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 320,
                "y": 130
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7288328",
            "variable": {
              "id": "",
              "name": "Package_detected",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "CU",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
          "type": "powerRail",
          "position": {
            "x": 823,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 823
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "6181587",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_db8127dd-bcd6-4bfc-ac56-32e65a505f70",
          "type": "variable",
          "position": {
            "x": 375,
            "y": 234
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 535,
                  "y": 250
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 535,
                  "y": 250
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 535,
                "y": 250
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5069715",
            "variable": {
              "name": "100"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "PV",
              "variableType": {
                "name": "PV",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_d8ed6b27-de26-4598-9a1f-19d5e9bb45d2",
          "type": "variable",
          "position": {
            "x": 593,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 593,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 593,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 593,
                "y": 130
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "4777510",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "Q",
              "variableType": {
                "name": "Q",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_7d4cdb44-de76-4be7-b71c-d671748781bf",
          "type": "variable",
          "position": {
            "x": 593,
            "y": 194
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 593,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 593,
                  "y": 210
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 593,
                "y": 210
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "2640987",
            "variable": {
              "name": "Medium_Box",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW3",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
              "handleId": "CV",
              "variableType": {
                "name": "CV",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_right-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894__Q_right-rail",
          "source": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "target": "right-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894_CONTACT_b313fe4d-d9e8-4d5d-805b-d681fb0ef00c__branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_CU_input",
          "source": "left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
          "target": "CONTACT_b313fe4d-d9e8-4d5d-805b-d681fb0ef00c",
          "sourceHandle": "branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_CU",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_b313fe4d-d9e8-4d5d-805b-d681fb0ef00c_CONTACT_8daf8d4d-3601-4f61-9f1d-6bfca061936b__output_input",
          "source": "CONTACT_b313fe4d-d9e8-4d5d-805b-d681fb0ef00c",
          "target": "CONTACT_8daf8d4d-3601-4f61-9f1d-6bfca061936b",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894_CONTACT_87df4b94-919b-43ce-92af-a5256c14cb50__branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_R_input",
          "source": "left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
          "target": "CONTACT_87df4b94-919b-43ce-92af-a5256c14cb50",
          "sourceHandle": "branch_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_R",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_87df4b94-919b-43ce-92af-a5256c14cb50_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846__output_R",
          "source": "CONTACT_87df4b94-919b-43ce-92af-a5256c14cb50",
          "target": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "sourceHandle": "output",
          "targetHandle": "R"
        },
        {
          "id": "e_left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846__left-rail_EN",
          "source": "left-rail-rung_main_3373cbfd-5e54-4c3b-8dff-0cd433418894",
          "target": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_CONTACT_8daf8d4d-3601-4f61-9f1d-6bfca061936b_CONTACT_ef83b7ac-e54d-4db7-a170-8319957e1db6__output_input",
          "source": "CONTACT_8daf8d4d-3601-4f61-9f1d-6bfca061936b",
          "target": "CONTACT_ef83b7ac-e54d-4db7-a170-8319957e1db6",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_ef83b7ac-e54d-4db7-a170-8319957e1db6_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846__output_CU",
          "source": "CONTACT_ef83b7ac-e54d-4db7-a170-8319957e1db6",
          "target": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "sourceHandle": "output",
          "targetHandle": "CU"
        },
        {
          "id": "e_VARIABLE_db8127dd-bcd6-4bfc-ac56-32e65a505f70_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846__output_PV",
          "source": "VARIABLE_db8127dd-bcd6-4bfc-ac56-32e65a505f70",
          "target": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "sourceHandle": "output",
          "targetHandle": "PV"
        },
        {
          "id": "e_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_VARIABLE_d8ed6b27-de26-4598-9a1f-19d5e9bb45d2__Q_input",
          "source": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "target": "VARIABLE_d8ed6b27-de26-4598-9a1f-19d5e9bb45d2",
          "sourceHandle": "Q",
          "targetHandle": "input"
        },
        {
          "id": "e_BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846_VARIABLE_7d4cdb44-de76-4be7-b71c-d671748781bf__CV_input",
          "source": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "target": "VARIABLE_7d4cdb44-de76-4be7-b71c-d671748781bf",
          "sourceHandle": "CV",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": [
        {
          "blockId": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "handleId": "CU",
          "direction": "input",
          "nodeIds": [
            "CONTACT_b313fe4d-d9e8-4d5d-805b-d681fb0ef00c",
            "CONTACT_8daf8d4d-3601-4f61-9f1d-6bfca061936b",
            "CONTACT_ef83b7ac-e54d-4db7-a170-8319957e1db6"
          ]
        },
        {
          "blockId": "BLOCK_b5b50ea4-051e-4e5d-a4b8-9a48d5f3b846",
          "handleId": "R",
          "direction": "input",
          "nodeIds": [
            "CONTACT_87df4b94-919b-43ce-92af-a5256c14cb50"
          ]
        }
      ]
    },
    {
      "id": "rung_main_e3463c6d-4036-4124-997d-3980d82587a2",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_main_e3463c6d-4036-4124-997d-3980d82587a2",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6477809",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "IN3",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "IN3",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "10200973",
            "variant": {
              "name": "ADD",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                },
                {
                  "name": "IN3",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Arithmetic"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "small_box",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW4",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "Medium_Box",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW3",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN3",
                "type": "input",
                "variable": {
                  "name": "Big_Box",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW2",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "total_count",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "%MW1",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 180,
          "measured": {
            "width": 90,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_main_e3463c6d-4036-4124-997d-3980d82587a2",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "3315288",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_0511959f-d1c5-4904-9619-a7e058333442",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6571052",
            "variable": {
              "name": "small_box",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW4",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_fffa6669-ffbf-4fa9-9b4a-3eb991454de2",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "3785701",
            "variable": {
              "name": "Medium_Box",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW3",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_3941a1f0-cca0-4962-bc43-4d879c5028bb",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "1850068",
            "variable": {
              "name": "Big_Box",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW2",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
              "handleId": "IN3",
              "variableType": {
                "name": "IN3",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_863cdf21-a2f8-4e8b-b1b1-7b2adaca0ce6",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "2335306",
            "variable": {
              "name": "total_count",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "%MW1",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_main_e3463c6d-4036-4124-997d-3980d82587a2_BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93__left-rail_EN",
          "source": "left-rail-rung_main_e3463c6d-4036-4124-997d-3980d82587a2",
          "target": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93_right-rail-rung_main_e3463c6d-4036-4124-997d-3980d82587a2__ENO_right-rail",
          "source": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "target": "right-rail-rung_main_e3463c6d-4036-4124-997d-3980d82587a2",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_0511959f-d1c5-4904-9619-a7e058333442_BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93__output_IN1",
          "source": "VARIABLE_0511959f-d1c5-4904-9619-a7e058333442",
          "target": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_fffa6669-ffbf-4fa9-9b4a-3eb991454de2_BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93__output_IN2",
          "source": "VARIABLE_fffa6669-ffbf-4fa9-9b4a-3eb991454de2",
          "target": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_VARIABLE_3941a1f0-cca0-4962-bc43-4d879c5028bb_BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93__output_IN3",
          "source": "VARIABLE_3941a1f0-cca0-4962-bc43-4d879c5028bb",
          "target": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "sourceHandle": "output",
          "targetHandle": "IN3"
        },
        {
          "id": "e_BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93_VARIABLE_863cdf21-a2f8-4e8b-b1b1-7b2adaca0ce6__OUT_input",
          "source": "BLOCK_2fd3dbf6-303f-49c8-a5e8-25c55231fa93",
          "target": "VARIABLE_863cdf21-a2f8-4e8b-b1b1-7b2adaca0ce6",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": []
    }
  ]
}
END_PROGRAM