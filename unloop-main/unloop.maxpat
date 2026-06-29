{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 8,
   "minor": 5,
   "revision": 4,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   34.0,
   87.0,
   1184.0,
   929.0
  ],
  "bglocked": 0,
  "openinpresentation": 0,
  "default_fontsize": 12.0,
  "default_fontface": 0,
  "default_fontname": "Arial",
  "gridonopen": 1,
  "gridsize": [
   15.0,
   15.0
  ],
  "gridsnaponopen": 1,
  "objectsnaponopen": 1,
  "statusbarvisible": 2,
  "toolbarvisible": 1,
  "lefttoolbarpinned": 0,
  "toptoolbarpinned": 0,
  "righttoolbarpinned": 0,
  "bottomtoolbarpinned": 0,
  "toolbars_unpinned_last_save": 0,
  "tallnewobj": 0,
  "boxanimatetime": 200,
  "enablehscroll": 1,
  "enablevscroll": 1,
  "devicewidth": 0.0,
  "description": "",
  "digest": "",
  "tags": "",
  "style": "",
  "subpatcher_template": "",
  "assistshowspatchername": 0,
  "boxes": [
   {
    "box": {
     "id": "obj-11",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      324.0,
      145.0,
      150.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      18.330566308996367,
      25.0,
      150.0,
      20.0
     ],
     "text": "ctrl"
    }
   },
   {
    "box": {
     "fontsize": 18.0,
     "id": "obj-10",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1479.75,
      123.35933599337773,
      152.0,
      27.0
     ],
     "text": "preset counter"
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1599.25,
      285.333389043808,
      22.0,
      22.0
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1599.25,
      313.666694521904,
      47.0,
      22.0
     ],
     "text": "clearall"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgcolor2": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.2,
      0.2,
      0.2,
      1.0
     ],
     "bgfillcolor_color1": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgfillcolor_color2": [
      0.2,
      0.2,
      0.2,
      1.0
     ],
     "bgfillcolor_proportion": 0.5,
     "bgfillcolor_type": "color",
     "gradient": 1,
     "id": "obj-90",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1585.75,
      255.5,
      39.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      142.20302953531473,
      202.5783410920219,
      39.0,
      22.0
     ],
     "text": "erase"
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1431.0,
      479.6089765790482,
      99.0,
      22.0
     ],
     "text": "s cur-preset-num"
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1365.1862316131592,
      261.5,
      108.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      18.330566308996367,
      175.5783410920219,
      162.87246322631836,
      20.0
     ],
     "text": "presets",
     "textjustification": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgcolor2": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.2,
      0.2,
      0.2,
      1.0
     ],
     "bgfillcolor_color1": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgfillcolor_color2": [
      0.2,
      0.2,
      0.2,
      1.0
     ],
     "bgfillcolor_proportion": 0.5,
     "bgfillcolor_type": "color",
     "gradient": 1,
     "id": "obj-67",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1402.6862316131592,
      290.5,
      33.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      80.14433469583719,
      202.5783410920219,
      53.0,
      22.0
     ],
     "text": "read",
     "textjustification": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgcolor2": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.2,
      0.2,
      0.2,
      1.0
     ],
     "bgfillcolor_color1": [
      0.301961,
      0.301961,
      0.301961,
      1.0
     ],
     "bgfillcolor_color2": [
      0.2,
      0.2,
      0.2,
      1.0
     ],
     "bgfillcolor_proportion": 0.5,
     "bgfillcolor_type": "color",
     "gradient": 1,
     "id": "obj-64",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1365.0,
      290.5,
      34.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      18.330566308996367,
      202.5783410920219,
      53.0,
      22.0
     ],
     "text": "write",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1473.6862316131592,
      272.30735852852627,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1473.6862316131592,
      306.30735852852627,
      99.0,
      22.0
     ],
     "text": "pattrstorage alter"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      311.7183674867556,
      1206.3073585285263,
      55.0,
      22.0
     ],
     "text": "dac~ 1 2"
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      68.61501774235512,
      1202.666694521904,
      55.0,
      22.0
     ],
     "text": "dac~ 1 2"
    }
   },
   {
    "box": {
     "annotation": "",
     "id": "obj-7",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      347.7183674867556,
      1078.9740530504303,
      35.0,
      54.0
     ],
     "presentation": 1,
     "presentation_rect": [
      342.95137771964073,
      235.5783410920219,
      35.0,
      54.0
     ],
     "prototypename": "pan",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "pantwo",
       "parameter_mmax": 1.0,
       "parameter_shortname": "pan wet",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "triangle": 1,
     "varname": "pantwo"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      308.7183674867556,
      1167.666694521904,
      58.0,
      22.0
     ],
     "text": "pan~"
    }
   },
   {
    "box": {
     "channels": 1,
     "id": "obj-2",
     "lastchannelcount": 0,
     "maxclass": "live.gain~",
     "numinlets": 1,
     "numoutlets": 4,
     "orientation": 1,
     "outlettype": [
      "signal",
      "",
      "float",
      "list"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      8.35290813446045,
      181.0,
      136.0,
      41.0
     ],
     "presentation": 1,
     "presentation_rect": [
      77.10867377723321,
      66.00212642088695,
      135.0,
      41.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_linknames": 1,
       "parameter_longname": "input-gain",
       "parameter_mmax": 18.0,
       "parameter_mmin": -70.0,
       "parameter_shortname": "input gain",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "input-gain"
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      1575.25,
      440.30735852852627,
      135.0,
      22.0
     ],
     "restore": {
      "input-gain": [
       0.0
      ],
      "panone": [
       0.283464566929134
      ],
      "pantwo": [
       0.503937007874016
      ]
     },
     "text": "autopattr @autoname 1",
     "varname": "u839009816"
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "preset",
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "preset",
      "int",
      "preset",
      "int",
      ""
     ],
     "patching_rect": [
      1377.6862316131592,
      358.166694521904,
      277.64712911844254,
      79.0
     ],
     "pattrstorage": "alter",
     "presentation": 1,
     "presentation_rect": [
      11.719974170465662,
      231.77834304705425,
      259.0,
      61.19999969005585
     ]
    }
   },
   {
    "box": {
     "active": {
      "input-gain": 0,
      "panone": 0,
      "pantwo": 0
     },
     "id": "obj-257",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1575.25,
      470.30735852852627,
      161.0,
      22.0
     ],
     "saved_object_attributes": {
      "client_rect": [
       721,
       289,
       1496,
       906
      ],
      "parameter_enable": 0,
      "parameter_mappable": 0,
      "storage_rect": [
       583,
       69,
       1034,
       197
      ]
     },
     "text": "pattrstorage alter @greedy 1",
     "varname": "alter"
    }
   },
   {
    "box": {
     "annotation": "",
     "id": "obj-27",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      104.00001561641693,
      1075.333389043808,
      35.0,
      54.0
     ],
     "presentation": 1,
     "presentation_rect": [
      296.7858270501388,
      235.5783410920219,
      35.0,
      54.0
     ],
     "prototypename": "pan",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "panone",
       "parameter_mmax": 1.0,
       "parameter_shortname": "pan dry",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "triangle": 1,
     "varname": "panone"
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      65.00001561641693,
      1164.0260305152817,
      58.0,
      22.0
     ],
     "text": "pan~"
    }
   },
   {
    "box": {
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-1",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "vamper.maxpat",
     "numinlets": 2,
     "numoutlets": 3,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      ""
     ],
     "patching_rect": [
      28.6666921377182,
      302.5,
      558.4367037406773,
      461.0
     ],
     "presentation": 1,
     "presentation_rect": [
      3.176764070987701,
      309.95860119394877,
      558.0,
      457.0
     ],
     "varname": "vamper[1]",
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.427450980392157,
      0.447058823529412,
      0.462745098039216,
      1.0
     ],
     "color": [
      0.564705882352941,
      0.745098039215686,
      0.427450980392157,
      1.0
     ],
     "id": "obj-136",
     "maxclass": "ezadc~",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      8.35290813446045,
      74.64422456181342,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      18.330566308996367,
      57.1493316917763,
      44.0,
      44.0
     ]
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.945098039215686,
      0.780392156862745,
      0.533333333333333,
      1.0
     ],
     "border": 5,
     "bordercolor": [
      0.945098039215686,
      0.533333333333333,
      0.533333333333333,
      1.0
     ],
     "id": "obj-5",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      785.0,
      223.0,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      5.088382035493851,
      7.0,
      554.1767640709877,
      300.95860119394877
     ],
     "proportion": 0.5
    }
   },
   {
    "box": {
     "id": "motion-r-inputgain-db",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      160.0,
      180.0,
      130.0,
      22.0
     ],
     "text": "r motion-inputgain-db"
    }
   },
   {
    "box": {
     "id": "motion-r-filtercutoff",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      160.0,
      235.0,
      130.0,
      22.0
     ],
     "text": "r motion-filtercutoff"
    }
   },
   {
    "box": {
     "id": "motion-r-filterq",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      300.0,
      235.0,
      105.0,
      22.0
     ],
     "text": "r motion-filterq"
    }
   },
   {
    "box": {
     "id": "motion-r-drive",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      440.0,
      235.0,
      90.0,
      22.0
     ],
     "text": "r motion-drive"
    }
   },
   {
    "box": {
     "id": "motion-load-cutoff",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      160.0,
      265.0,
      100.0,
      22.0
     ],
     "text": "loadmess 12000"
    }
   },
   {
    "box": {
     "id": "motion-load-filterq",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      300.0,
      265.0,
      90.0,
      22.0
     ],
     "text": "loadmess 0.7"
    }
   },
   {
    "box": {
     "id": "motion-load-drive",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      440.0,
      265.0,
      85.0,
      22.0
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "motion-filter",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      170.0,
      325.0,
      120.0,
      22.0
     ],
     "text": "lores~ 12000 0.7"
    }
   },
   {
    "box": {
     "id": "motion-drive-mul",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      170.0,
      365.0,
      45.0,
      22.0
     ],
     "text": "*~ 1."
    }
   },
   {
    "box": {
     "id": "motion-clip",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      170.0,
      405.0,
      75.0,
      22.0
     ],
     "text": "clip~ -1. 1."
    }
   },
   {
    "box": {
     "id": "motion-wet-mul",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      170.0,
      445.0,
      45.0,
      22.0
     ],
     "text": "*~ 0."
    }
   },
   {
    "box": {
     "id": "motion-dry-mul",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      60.0,
      445.0,
      45.0,
      22.0
     ],
     "text": "*~ 1."
    }
   },
   {
    "box": {
     "id": "motion-sum",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      115.0,
      500.0,
      35.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "motion-parent-comment",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      160.0,
      150.0,
      360.0,
      20.0
     ],
     "text": "motion input FX: gain -> filter/drive -> VampNet"
    }
   },
   {
    "box": {
     "id": "motion-top-controls-label",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      250.0,
      150.0,
      220.0,
      20.0
     ],
     "text": "motion input FX",
     "textjustification": 1,
     "presentation": 1,
     "presentation_rect": [
      226.0,
      66.0,
      130.0,
      18.0
     ]
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.686274509803922,
      0.427450980392157,
      0.588235294117647,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "motion-top-inputgain-db-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      250.0,
      180.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      226.0,
      88.0,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "motion top input gain dB",
       "parameter_mmax": 18.0,
       "parameter_mmin": -24.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "in gain",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "motion-top-inputgain-db-dial"
    }
   },
   {
    "box": {
     "id": "motion-top-inputgain-db-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      250.0,
      238.0,
      145.0,
      22.0
     ],
     "text": "s motion-inputgain-db"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.23921568627451,
      0.592156862745098,
      0.925490196078431,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "motion-top-filtercutoff-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      305.0,
      180.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      279.0,
      88.0,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        12000.0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "motion top filter cutoff",
       "parameter_mmax": 12000.0,
       "parameter_mmin": 100.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "cutoff",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "varname": "motion-top-filtercutoff-dial"
    }
   },
   {
    "box": {
     "id": "motion-top-filtercutoff-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      305.0,
      238.0,
      145.0,
      22.0
     ],
     "text": "s motion-filtercutoff"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.23921568627451,
      0.592156862745098,
      0.925490196078431,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "motion-top-filterq-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      360.0,
      180.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      332.0,
      88.0,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "motion top filter Q",
       "parameter_mmax": 5.0,
       "parameter_mmin": 0.1,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "filt Q",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "motion-top-filterq-dial"
    }
   },
   {
    "box": {
     "id": "motion-top-filterq-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      360.0,
      238.0,
      145.0,
      22.0
     ],
     "text": "s motion-filterq"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.945098039215686,
      0.533333333333333,
      0.243137254901961,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "motion-top-drive-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      415.0,
      180.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      385.0,
      88.0,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "motion top drive",
       "parameter_mmax": 8.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "drive",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "motion-top-drive-dial"
    }
   },
   {
    "box": {
     "id": "motion-top-drive-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      415.0,
      238.0,
      145.0,
      22.0
     ],
     "text": "s motion-drive"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "obj-25",
      0
     ],
     "source": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-8",
      0
     ],
     "source": [
      "obj-1",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-2",
      0
     ],
     "source": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-84",
      0
     ],
     "source": [
      "obj-173",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-35",
      1
     ],
     "source": [
      "obj-25",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-35",
      0
     ],
     "source": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-25",
      1
     ],
     "source": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-173",
      0
     ],
     "source": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-173",
      0
     ],
     "source": [
      "obj-64",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-173",
      0
     ],
     "source": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-8",
      1
     ],
     "source": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-36",
      1
     ],
     "source": [
      "obj-8",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-36",
      0
     ],
     "source": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-95",
      0
     ],
     "source": [
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-173",
      0
     ],
     "source": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-92",
      0
     ],
     "source": [
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-inputgain-db",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "motion-filter",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "motion-dry-mul",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-filtercutoff",
      0
     ],
     "destination": [
      "motion-filter",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-load-cutoff",
      0
     ],
     "destination": [
      "motion-filter",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-filterq",
      0
     ],
     "destination": [
      "motion-filter",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-load-filterq",
      0
     ],
     "destination": [
      "motion-filter",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-filter",
      0
     ],
     "destination": [
      "motion-drive-mul",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-drive",
      0
     ],
     "destination": [
      "motion-drive-mul",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-load-drive",
      0
     ],
     "destination": [
      "motion-drive-mul",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-drive-mul",
      0
     ],
     "destination": [
      "motion-clip",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-clip",
      0
     ],
     "destination": [
      "motion-wet-mul",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-dry-mul",
      0
     ],
     "destination": [
      "motion-sum",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-wet-mul",
      0
     ],
     "destination": [
      "motion-sum",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-sum",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-top-inputgain-db-dial",
      0
     ],
     "destination": [
      "motion-top-inputgain-db-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-top-filtercutoff-dial",
      0
     ],
     "destination": [
      "motion-top-filtercutoff-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-top-filterq-dial",
      0
     ],
     "destination": [
      "motion-top-filterq-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-top-drive-dial",
      0
     ],
     "destination": [
      "motion-top-drive-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-inputgain-db",
      0
     ],
     "destination": [
      "motion-top-inputgain-db-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-filtercutoff",
      0
     ],
     "destination": [
      "motion-top-filtercutoff-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-filterq",
      0
     ],
     "destination": [
      "motion-top-filterq-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-r-drive",
      0
     ],
     "destination": [
      "motion-top-drive-dial",
      0
     ]
    }
   }
  ],
  "parameters": {
   "obj-1::obj-101": [
    "onsetmask[1]",
    "onset mask",
    0
   ],
   "obj-1::obj-121": [
    "dropout",
    "dropout",
    0
   ],
   "obj-1::obj-133": [
    "live.gain~[7]",
    "live.gain~",
    0
   ],
   "obj-1::obj-211": [
    "number[1]",
    "number",
    0
   ],
   "obj-1::obj-225": [
    "overdub",
    "overdub",
    0
   ],
   "obj-1::obj-269": [
    "periodic prompt[3]",
    "periodic",
    0
   ],
   "obj-1::obj-323": [
    "number[3]",
    "number",
    0
   ],
   "obj-1::obj-363": [
    "drygain",
    "live.gain~",
    0
   ],
   "obj-1::obj-62": [
    "temperature[1]",
    "temperature",
    0
   ],
   "obj-1::obj-69": [
    "beatwidth[1]",
    "beat (ms)",
    0
   ],
   "obj-1::obj-70": [
    "numsteps[1]",
    "steps",
    0
   ],
   "obj-2": [
    "input-gain",
    "input gain",
    0
   ],
   "obj-27": [
    "panone",
    "pan dry",
    0
   ],
   "obj-7": [
    "pantwo",
    "pan wet",
    0
   ],
   "parameterbanks": {
    "0": {
     "index": 0,
     "name": "",
     "parameters": [
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-"
     ]
    }
   },
   "parameter_overrides": {
    "obj-1::obj-101": {
     "parameter_initial": 5,
     "parameter_longname": "onsetmask[1]",
     "parameter_range": [
      0,
      100
     ]
    },
    "obj-1::obj-121": {
     "parameter_initial": 0.0,
     "parameter_invisible": 0,
     "parameter_longname": "dropout",
     "parameter_modmode": 0,
     "parameter_range": [
      0.0,
      1.0
     ],
     "parameter_shortname": "dropout",
     "parameter_type": 0,
     "parameter_unitstyle": 1
    },
    "obj-1::obj-133": {
     "parameter_longname": "live.gain~[7]"
    },
    "obj-1::obj-225": {
     "parameter_initial": 0.85,
     "parameter_initial_enable": 1,
     "parameter_linknames": 1,
     "parameter_longname": "overdub",
     "parameter_range": [
      0.0,
      1.0
     ],
     "parameter_shortname": "overdub",
     "parameter_unitstyle": 1
    },
    "obj-1::obj-269": {
     "parameter_initial": 5,
     "parameter_longname": "periodic prompt[3]",
     "parameter_shortname": "periodic"
    },
    "obj-1::obj-323": {
     "parameter_longname": "number[3]",
     "parameter_shortname": "number"
    },
    "obj-1::obj-363": {
     "parameter_linknames": 1,
     "parameter_longname": "drygain",
     "parameter_shortname": "live.gain~"
    },
    "obj-1::obj-62": {
     "parameter_initial": 1.0,
     "parameter_longname": "temperature[1]",
     "parameter_range": [
      0.0,
      3.0
     ]
    },
    "obj-1::obj-69": {
     "parameter_initial": 0,
     "parameter_longname": "beatwidth[1]",
     "parameter_shortname": "beat (ms)"
    },
    "obj-1::obj-70": {
     "parameter_initial": 24,
     "parameter_longname": "numsteps[1]"
    },
    "motion-top-inputgain-db-dial": {
     "parameter_longname": "motion top input gain dB",
     "parameter_shortname": "in gain",
     "parameter_invisible": 0
    },
    "motion-top-filtercutoff-dial": {
     "parameter_longname": "motion top filter cutoff",
     "parameter_shortname": "cutoff",
     "parameter_invisible": 0
    },
    "motion-top-filterq-dial": {
     "parameter_longname": "motion top filter Q",
     "parameter_shortname": "filt Q",
     "parameter_invisible": 0
    },
    "motion-top-drive-dial": {
     "parameter_longname": "motion top drive",
     "parameter_shortname": "drive",
     "parameter_invisible": 0
    }
   },
   "inherited_shortname": 1,
   "motion-top-inputgain-db-dial": [
    "motion top input gain dB",
    "in gain",
    0
   ],
   "motion-top-filtercutoff-dial": [
    "motion top filter cutoff",
    "cutoff",
    0
   ],
   "motion-top-filterq-dial": [
    "motion top filter Q",
    "filt Q",
    0
   ],
   "motion-top-drive-dial": [
    "motion top drive",
    "drive",
    0
   ]
  },
  "parameter_map": {
   "midi": {
    "button[2]": {
     "srcname": "42.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "button[1]": {
     "srcname": "45.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "button[3]": {
     "srcname": "60.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "zero": {
     "srcname": "0.ctrl.0.chan.midi",
     "min": -70.0,
     "max": 12.0,
     "flags": 2
    },
    "button": {
     "srcname": "44.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "livein": {
     "srcname": "0.ctrl.0.chan.midi",
     "min": -70.0,
     "max": 12.0,
     "flags": 2
    },
    "gain-one": {
     "srcname": "1.ctrl.0.chan.midi",
     "min": -70.0,
     "max": 12.0,
     "flags": 2
    },
    "two": {
     "srcname": "2.ctrl.0.chan.midi",
     "min": -70.0,
     "max": 12.0,
     "flags": 2
    },
    "three": {
     "srcname": "3.ctrl.0.chan.midi",
     "min": -70.0,
     "max": 12.0,
     "flags": 2
    },
    "four": {
     "srcname": "4.ctrl.0.chan.midi",
     "min": -70.0,
     "max": 12.0,
     "flags": 2
    },
    "panzero": {
     "srcname": "16.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "panone": {
     "srcname": "17.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "pantwo": {
     "srcname": "18.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "panthree": {
     "srcname": "19.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    },
    "panfour": {
     "srcname": "20.ctrl.0.chan.midi",
     "min": 0.0,
     "max": 1.0,
     "flags": 2
    }
   }
  },
  "dependency_cache": [
   {
    "name": "karma~.mxo",
    "type": "iLaX"
   },
   {
    "name": "pan~.maxpat",
    "bootpath": "/Users/yingyao/Downloads/VampNet/unloop-main",
    "patcherrelativepath": ".",
    "type": "JSON",
    "implicit": 1
   },
   {
    "name": "shell.mxo",
    "type": "iLaX"
   },
   {
    "name": "vamper.maxpat",
    "bootpath": "/Users/yingyao/Downloads/VampNet/unloop-main",
    "patcherrelativepath": ".",
    "type": "JSON",
    "implicit": 1
   }
  ],
  "autosave": 0,
  "styles": [
   {
    "name": "jasch_new",
    "default": {
     "accentcolor": [
      0.65098,
      0.666667,
      0.662745,
      1.0
     ],
     "bgcolor": [
      0.752268,
      0.752268,
      0.752268,
      1.0
     ],
     "bgfillcolor": {
      "angle": 270.0,
      "autogradient": 0,
      "color": [
       0.290196,
       0.309804,
       0.301961,
       1.0
      ],
      "color1": [
       0.851468,
       0.851468,
       0.851468,
       1.0
      ],
      "color2": [
       0.851468,
       0.851468,
       0.851468,
       1.0
      ],
      "proportion": 0.39,
      "type": "gradient"
     },
     "clearcolor": [
      0.65098,
      0.666667,
      0.662745,
      0.0
     ],
     "color": [
      1.0,
      0.498039,
      0.0,
      1.0
     ],
     "elementcolor": [
      0.451266,
      0.451266,
      0.451266,
      1.0
     ],
     "fontname": [
      "Verdana"
     ],
     "fontsize": [
      10.0
     ],
     "patchlinecolor": [
      0.752941,
      0.720076,
      0.621482,
      0.5
     ],
     "selectioncolor": [
      0.952941,
      0.564706,
      0.098039,
      1.0
     ],
     "textcolor_inverse": [
      0.0,
      0.0,
      0.0,
      1.0
     ]
    },
    "parentstyle": "",
    "multi": 0
   }
  ],
  "toolbaradditions": [
   "audiosolo"
  ],
  "bgcolor": [
   0.450980392156863,
   0.435294117647059,
   0.435294117647059,
   1.0
  ]
 }
}
