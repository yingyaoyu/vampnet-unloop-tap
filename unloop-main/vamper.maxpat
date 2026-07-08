{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 1,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   34.0,
   87.0,
   602.0,
   779.0
  ],
  "openinpresentation": 1,
  "gridsize": [
   15.0,
   15.0
  ],
  "boxes": [
   {
    "box": {
     "id": "obj-257",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2230.0142370128688,
      -541.5512449036178,
      150.0,
      33.0
     ],
     "text": "TODO: what do ab this setsize? "
    }
   },
   {
    "box": {
     "id": "obj-299",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1219.0,
      1564.0,
      87.0,
      22.0
     ],
     "text": "STATUS.ready"
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      830.0,
      -234.0,
      91.0,
      22.0
     ],
     "text": "print @popup 1"
    }
   },
   {
    "box": {
     "id": "obj-252",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      746.1187416527816,
      -286.0,
      58.0,
      22.0
     ],
     "text": "change 5"
    }
   },
   {
    "box": {
     "id": "obj-247",
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      718.1187416527816,
      -359.0,
      24.0,
      24.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-242",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1696.4476520866624,
      -104.0,
      111.0,
      22.0
     ],
     "text": "r #0-msg-unloop"
    }
   },
   {
    "box": {
     "id": "obj-301",
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1623.0,
      2262.0,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      522.9858405053956,
      302.89452872132006,
      11.380673664723417,
      11.380673664723417
     ]
    }
   },
   {
    "box": {
     "id": "obj-300",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1635.0,
      2163.0,
      87.11841928958893,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      417.0001920008074,
      291.2752023860435,
      87.11841928958893,
      20.0
     ],
     "text": "loopdone gate"
    }
   },
   {
    "box": {
     "id": "obj-293",
     "ignoreclick": 1,
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1601.9569070866619,
      2158.265821456909,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      522.9858405053956,
      291.10868043738265,
      11.380673664723417,
      11.380673664723417
     ],
     "svg": ""
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1008.0719805359838,
      242.10255685387415,
      113.0,
      22.0
     ],
     "text": "s #0-msg-unloop"
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      198.0,
      2041.0,
      140.0,
      22.0
     ],
     "text": "r #0-msg-toggle-mute"
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      932.0719805359838,
      203.10255685387415,
      142.0,
      22.0
     ],
     "text": "s #0-msg-toggle-mute"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontname": "Helvetica",
     "fontsize": 13.0,
     "id": "obj-51",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      379.1857778598429,
      291.2752023860435,
      47.0,
      32.0
     ],
     "presentation": 1,
     "presentation_rect": [
      317.0665159463373,
      290.2752023860435,
      96.0,
      19.0
     ],
     "text": "technical",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-297",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      240.0,
      2097.0,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-290",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      264.55170928441623,
      2374.829909324646,
      131.0,
      22.0
     ],
     "text": "gate~ 1 @ramptime 20"
    }
   },
   {
    "box": {
     "id": "obj-288",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      208.80451399087906,
      2204.081611633301,
      29.5,
      22.0
     ],
     "text": "!= 1"
    }
   },
   {
    "box": {
     "id": "obj-287",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      260.11743837594986,
      2235.374128341675,
      50.0,
      22.0
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-284",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      101.9666768213425,
      2385.0339908599854,
      131.0,
      22.0
     ],
     "text": "gate~ 1 @ramptime 20"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 8.0,
     "id": "obj-283",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      954.7058632619026,
      -494.06451815366745,
      123.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      255.77967484497776,
      164.6641267772941,
      25.0,
      15.0
     ],
     "text": "wet",
     "textjustification": 1
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 8.0,
     "id": "obj-282",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      945.0719805359839,
      -476.4891331809197,
      123.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      213.27967484497776,
      164.6641267772941,
      25.0,
      15.0
     ],
     "text": "dry",
     "textjustification": 1
    }
   },
   {
    "box": {
     "fontface": 0,
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-87",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1615.1626627395706,
      1558.5527181124917,
      35.0,
      16.0
     ],
     "presentation": 1,
     "presentation_rect": [
      165.91514274283736,
      204.9045037448252,
      33.799999356269836,
      16.0
     ],
     "text": "auto",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1587.6976520866622,
      1558.5527181124917,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      170.81514242097228,
      176.51110247968086,
      24.0,
      24.0
     ],
     "svg": ""
    }
   },
   {
    "box": {
     "id": "obj-280",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2865.2000019550323,
      551.2000066637993,
      193.54838740825653,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      811.1259283423424,
      417.5703780055046,
      127.59999966621399,
      20.0
     ],
     "text": "internal vari presets"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.349019607843137,
      0.349019607843137,
      0.349019607843137,
      1.0
     ],
     "bgoncolor": [
      0.223529411764706,
      0.309803921568627,
      0.541176470588235,
      1.0
     ],
     "fontname": "Helvetica",
     "fontsize": 8.0,
     "id": "obj-277",
     "legacytextcolor": 1,
     "maxclass": "textbutton",
     "mode": 1,
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      208.80451399087906,
      2163.438764691353,
      77.33354365825653,
      25.677419424057007
     ],
     "presentation": 1,
     "presentation_rect": [
      206.5132207078384,
      265.51110247968086,
      74.26645413713936,
      16.0
     ],
     "rounded": 10.0,
     "text": "mute",
     "textcolor": [
      0.882352941176471,
      0.988235294117647,
      0.992156862745098,
      1.0
     ],
     "texton": "muted",
     "usebgoncolor": 1,
     "varname": "mutebutton"
    }
   },
   {
    "box": {
     "id": "obj-254",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      2724.0,
      515.0,
      29.5,
      22.0
     ],
     "text": "+ 1"
    }
   },
   {
    "box": {
     "id": "obj-227",
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
      2724.0,
      555.0,
      100.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      811.1259283423424,
      459.90613040553285,
      100.0,
      40.0
     ],
     "preset_data": [
      {
       "number": 1,
       "data": [
        5,
        "obj-121",
        "live.dial",
        "float",
        0.0,
        5,
        "obj-101",
        "live.dial",
        "float",
        33.0,
        5,
        "obj-269",
        "live.dial",
        "float",
        3.0,
        5,
        "obj-62",
        "live.dial",
        "float",
        1.0
       ]
      },
      {
       "number": 2,
       "data": [
        5,
        "obj-129",
        "toggle",
        "int",
        0,
        5,
        "obj-121",
        "live.dial",
        "float",
        0.0,
        5,
        "obj-8",
        "umenu",
        "int",
        11,
        5,
        "obj-70",
        "live.dial",
        "float",
        36.0,
        5,
        "obj-101",
        "live.dial",
        "float",
        21.0,
        5,
        "obj-269",
        "live.dial",
        "float",
        3.0,
        5,
        "obj-62",
        "live.dial",
        "float",
        1.0
       ]
      },
      {
       "number": 3,
       "data": [
        5,
        "obj-129",
        "toggle",
        "int",
        0,
        5,
        "obj-121",
        "live.dial",
        "float",
        0.0,
        5,
        "obj-8",
        "umenu",
        "int",
        11,
        5,
        "obj-70",
        "live.dial",
        "float",
        36.0,
        5,
        "obj-101",
        "live.dial",
        "float",
        7.0,
        5,
        "obj-269",
        "live.dial",
        "float",
        3.0,
        5,
        "obj-62",
        "live.dial",
        "float",
        1.0
       ]
      },
      {
       "number": 4,
       "data": [
        5,
        "obj-129",
        "toggle",
        "int",
        0,
        5,
        "obj-121",
        "live.dial",
        "float",
        0.0,
        5,
        "obj-8",
        "umenu",
        "int",
        11,
        5,
        "obj-70",
        "live.dial",
        "float",
        36.0,
        5,
        "obj-101",
        "live.dial",
        "float",
        7.0,
        5,
        "obj-269",
        "live.dial",
        "float",
        5.0,
        5,
        "obj-62",
        "live.dial",
        "float",
        1.0
       ]
      }
     ]
    }
   },
   {
    "box": {
     "id": "obj-241",
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
      58.0,
      -726.0,
      56.0,
      22.0
     ],
     "restore": {
      "atypical": [
       0
      ],
      "auto-generate": [
       0
      ],
      "ckpt-name": [
       "n64"
      ],
      "dropout": [
       0.0
      ],
      "drygain": [
       -37.40541663801753
      ],
      "feedback": [
       0
      ],
      "hostname": [
       "http://127.0.0.1:7860/"
      ],
      "hostname[1]": [
       "/Users/yingyao/anaconda3/envs/vampnet_env/bin/python"
      ],
      "mutebutton": [
       0
      ],
      "number": [
       2048
      ],
      "number[1]": [
       1024
      ],
      "numsteps": [
       36.0
      ],
      "onsetmask": [
       0.0
      ],
      "overdub": [
       0.8
      ],
      "periodic prompt[2]": [
       7.0
      ],
      "rectoggle": [
       0
      ],
      "seed": [
       0
      ],
      "temperature": [
       1.0
      ],
      "textbutton[1]": [
       0
      ],
      "wetgain": [
       -7.712952671227633
      ],
      "compression": [
       3.0
      ]
     },
     "text": "autopattr",
     "varname": "u063004022"
    }
   },
   {
    "box": {
     "id": "obj-238",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2880.980479169496,
      -917.6987489062883,
      86.0,
      22.0
     ],
     "text": "r #0-recplay"
    }
   },
   {
    "box": {
     "id": "obj-236",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      48.5,
      44.27278764321909,
      86.0,
      22.0
     ],
     "text": "r #0-recplay"
    }
   },
   {
    "box": {
     "appearance": 1,
     "id": "obj-225",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      832.1187416527816,
      53.77278764321909,
      25.0,
      36.0
     ],
     "presentation": 1,
     "presentation_rect": [
      244.38139004685422,
      344.055701462717,
      36.89828479812354,
      36.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.85
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "overdub",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "overdub",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "overdub"
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      802.1187416527816,
      -452.7272123567809,
      98.0,
      22.0
     ],
     "text": "r #0-msg-stop"
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      802.1187416527816,
      -423.0,
      97.0,
      22.0
     ],
     "text": "r #0-msg-play"
    }
   },
   {
    "box": {
     "id": "obj-220",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      "bang"
     ],
     "patching_rect": [
      1641.0,
      1503.0,
      32.0,
      22.0
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2143.5871167579667,
      754.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2301.5871167579667,
      754.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2482.5871167579667,
      754.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2653.5871167579667,
      754.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      595.1187416527816,
      406.0,
      188.0,
      22.0
     ],
     "text": "loadmess buffername #0-vamp"
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3125.0,
      -272.9489381623082,
      175.0,
      22.0
     ],
     "text": "loadmess buffername #0-dry"
    }
   },
   {
    "box": {
     "buffername": "#0-dry",
     "id": "obj-223",
     "maxclass": "waveform~",
     "numinlets": 5,
     "numoutlets": 6,
     "outlettype": [
      "float",
      "float",
      "float",
      "float",
      "list",
      ""
     ],
     "patching_rect": [
      3077.0,
      -217.0,
      256.0,
      64.0
     ],
     "presentation": 1,
     "presentation_rect": [
      26.380704970222638,
      42.58961885994336,
      250.65923461495692,
      53.99999952316284
     ],
     "waveformcolor": [
      0.407843137254902,
      0.850980392156863,
      0.356862745098039,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.9125670000001,
      169.0,
      149.0,
      22.0
     ],
     "text": "s #0-msg-toggle-record"
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      640.1082160084115,
      -391.0,
      147.0,
      22.0
     ],
     "text": "r #0-msg-toggle-record"
    }
   },
   {
    "box": {
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      874.9125670000001,
      137.7272123567809,
      113.0,
      22.0
     ],
     "text": "s #0-msg-unloop"
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2025.6000301837921,
      631.7307827472687,
      32.0,
      22.0
     ],
     "text": "print"
    }
   },
   {
    "box": {
     "id": "obj-228",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      2316.1682933085544,
      -743.3499851910744,
      19.0,
      22.0
     ],
     "text": "t i"
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2300.0142370128688,
      -770.3499851910744,
      39.0,
      22.0
     ],
     "text": "round"
    }
   },
   {
    "box": {
     "id": "obj-176",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1837.6523382067683,
      488.0,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1941.5598363229851,
      520.0,
      29.5,
      22.0
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1910.0598363229851,
      515.0,
      29.5,
      22.0
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1879.0,
      190.85221457124317,
      32.0,
      22.0
     ],
     "text": "print"
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      3249.5871167579667,
      754.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-179",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      3693.5871167579667,
      754.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      ""
     ],
     "patching_rect": [
      626.0,
      848.0,
      31.0,
      22.0
     ],
     "text": "t b s"
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      626.0,
      813.0,
      206.0,
      22.0
     ],
     "text": "/Users/yingyao/anaconda3/envs/vampnet_env/bin/python"
    }
   },
   {
    "box": {
     "fontface": 0,
     "fontname": "Nadeem",
     "fontsize": 12.0,
     "id": "obj-25",
     "maxclass": "number~",
     "mode": 2,
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "float"
     ],
     "patching_rect": [
      2854.0,
      -298.0,
      56.0,
      25.0
     ],
     "sig": 0.0
    }
   },
   {
    "box": {
     "id": "obj-289",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       0.0,
       0.0,
       640.0,
       480.0
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "boxes": [
       {
        "box": {
         "id": "obj-283",
         "linecount": 2,
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "bang"
         ],
         "patching_rect": [
          84.0,
          100.0,
          31.0,
          25.0
         ],
         "text": "t b b"
        }
       },
       {
        "box": {
         "id": "obj-284",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          136.50657967296615,
          35.0,
          25.0
         ],
         "text": "clear"
        }
       },
       {
        "box": {
         "id": "obj-286",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          94.99999999999955,
          136.50657967296615,
          76.0,
          25.0
         ],
         "text": "setsize 9000"
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-287",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          84.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-288",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          66.5,
          221.50659199999996,
          30.0,
          30.0
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "obj-284",
          0
         ],
         "source": [
          "obj-283",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-286",
          0
         ],
         "source": [
          "obj-283",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-288",
          0
         ],
         "source": [
          "obj-284",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-288",
          0
         ],
         "source": [
          "obj-286",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-283",
          0
         ],
         "source": [
          "obj-287",
          0
         ]
        }
       }
      ],
      "originid": "pat-239"
     },
     "patching_rect": [
      1696.0,
      -646.0,
      45.0,
      22.0
     ],
     "saved_object_attributes": {
      "globalpatchername": ""
     },
     "text": "p clear"
    }
   },
   {
    "box": {
     "id": "obj-285",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1704.9999999999995,
      -691.0724098571202,
      74.0,
      22.0
     ],
     "text": "r #0-clear"
    }
   },
   {
    "box": {
     "id": "obj-274",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2180.014237012869,
      -793.5446561707456,
      105.0,
      22.0
     ],
     "text": "r #0-load-vamp"
    }
   },
   {
    "box": {
     "id": "obj-272",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2300.0142370128688,
      -816.5446561707456,
      80.0,
      22.0
     ],
     "text": "r #0-buflen"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2071.968252789317,
      -802.7198924196969,
      74.0,
      22.0
     ],
     "text": "r #0-clear"
    }
   },
   {
    "box": {
     "id": "obj-317",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2098.9239140812097,
      -496.0,
      115.0,
      22.0
     ],
     "text": "s #0-dry-bufbang"
    }
   },
   {
    "box": {
     "id": "obj-318",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1957.9682527893165,
      -806.2711587634085,
      111.0,
      22.0
     ],
     "text": "r #0-dry-bufwrite"
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1546.003409415047,
      -441.6970519296874,
      90.0,
      22.0
     ],
     "text": "r #0-bufwrite"
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1533.4146042910575,
      -398.9699076696968,
      93.0,
      22.0
     ],
     "text": "s #0-bufbang"
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1471.3228949279248,
      -619.9699076696968,
      178.0,
      20.0
     ],
     "text": "buffer where we hold audio"
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1528.0034094150467,
      -727.023512657337,
      80.0,
      22.0
     ],
     "text": "r #0-buflen"
    }
   },
   {
    "box": {
     "id": "obj-55",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1405.5685202923773,
      -619.9699076696968,
      66.0,
      22.0
     ],
     "text": "read $1 $2"
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1405.5685202923773,
      -727.023512657337,
      105.0,
      22.0
     ],
     "text": "r #0-load-vamp"
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "bang"
     ],
     "patching_rect": [
      1405.4146042910575,
      -541.5512449036178,
      140.0,
      22.0
     ],
     "text": "buffer~ #0-vamp 9000"
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1405.5685202923773,
      -673.8288807611314,
      90.0,
      22.0
     ],
     "text": "pack s 0. 9000."
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.945098039215686,
      0.980392156862745,
      0.933333333333333,
      1.0
     ],
     "id": "obj-123",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1377.0,
      -755.7198924196969,
      441.88899530000026,
      398.0
     ],
     "proportion": 0.5
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      "bang"
     ],
     "patching_rect": [
      746.1187416527816,
      -211.0,
      32.0,
      22.0
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       0.0,
       0.0,
       640.0,
       480.0
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "boxes": [
       {
        "box": {
         "id": "obj-205",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "int"
         ],
         "patching_rect": [
          87.49999999999989,
          100.0,
          29.5,
          25.0
         ],
         "text": "t b i"
        }
       },
       {
        "box": {
         "id": "obj-180",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          105.50262437870026,
          145.0,
          29.5,
          25.0
         ],
         "text": "!= 1"
        }
       },
       {
        "box": {
         "id": "obj-179",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          104.25262437870015,
          185.0,
          32.0,
          25.0
         ],
         "text": "gate"
        }
       },
       {
        "box": {
         "id": "obj-172",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          185.0,
          32.0,
          25.0
         ],
         "text": "gate"
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-213",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          87.4999717259185,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-216",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          49.9999717259185,
          270.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-228",
         "index": 2,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          104.25259572591847,
          270.0,
          30.0,
          30.0
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "obj-216",
          0
         ],
         "source": [
          "obj-172",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-228",
          0
         ],
         "source": [
          "obj-179",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-179",
          0
         ],
         "source": [
          "obj-180",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-172",
          0
         ],
         "order": 1,
         "source": [
          "obj-205",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-172",
          1
         ],
         "order": 1,
         "source": [
          "obj-205",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-179",
          1
         ],
         "order": 0,
         "source": [
          "obj-205",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-180",
          0
         ],
         "order": 0,
         "source": [
          "obj-205",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-205",
          0
         ],
         "source": [
          "obj-213",
          0
         ]
        }
       }
      ],
      "originid": "pat-241"
     },
     "patching_rect": [
      746.1187416527816,
      -255.0,
      52.0,
      22.0
     ],
     "saved_object_attributes": {
      "globalpatchername": ""
     },
     "text": "p switch"
    }
   },
   {
    "box": {
     "id": "obj-210",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      802.1187416527816,
      -351.0,
      35.0,
      22.0
     ],
     "text": "set 0"
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      802.1187416527816,
      -391.0,
      101.0,
      22.0
     ],
     "text": "r #0-msg-clear"
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1014.5607389239922,
      -772.3265214247854,
      267.83733726042965,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      99.60685934165315,
      238.13526703342995,
      65.0,
      20.0
     ],
     "text": "unloop",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      940.4734369427796,
      -769.3265214247854,
      267.83733726042965,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      20.520818438250444,
      238.13526703342995,
      65.0,
      20.0
     ],
     "text": "record",
     "textjustification": 1
    }
   },
   {
    "box": {
     "checkedcolor": [
      0.815686274509804,
      0.337254901960784,
      0.337254901960784,
      1.0
     ],
     "id": "obj-114",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      746.1187416527816,
      -319.0,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      24.830340172964952,
      176.51110247968086,
      56.380956530570984,
      56.380956530570984
     ],
     "svg": "",
     "uncheckedcolor": [
      0.333333333333333,
      0.286274509803922,
      0.286274509803922,
      1.0
     ],
     "varname": "rectoggle"
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3038.996590584953,
      -870.7371885932773,
      119.0,
      22.0
     ],
     "text": "r #0-msg-overdub"
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3037.0,
      -818.0099762364964,
      69.0,
      22.0
     ],
     "text": "overdub $1"
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      401.0,
      103.0,
      119.0,
      22.0
     ],
     "text": "r #0-msg-overdub"
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      401.0,
      157.0,
      69.0,
      22.0
     ],
     "text": "overdub $1"
    }
   },
   {
    "box": {
     "comment": "signal in. ",
     "id": "obj-57",
     "index": 1,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      -36.14409875479123,
      -892.993165997997,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      821.0286842740815,
      105.0,
      121.0,
      22.0
     ],
     "text": "s #0-msg-overdub"
    }
   },
   {
    "box": {
     "comment": "bang when loop is done",
     "id": "obj-50",
     "index": 3,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      525.6714481661875,
      2664.7806968688965,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3912.0,
      792.0,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3867.5871167579667,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3867.5871167579667,
      894.0,
      92.0,
      22.0
     ],
     "text": "prepend --seed"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 8.0,
     "id": "obj-370",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      593.9583908310053,
      -881.3675296902657,
      123.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.750678778048155,
      61.08961862152478,
      25.0,
      15.0
     ],
     "text": "dry",
     "textjustification": 1
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 8.0,
     "id": "obj-369",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      831.3333300352097,
      -723.3333597183228,
      120.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.750678778048155,
      126.33115145663237,
      28.0,
      15.0
     ],
     "text": "wet",
     "textjustification": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.349019607843137,
      0.349019607843137,
      0.349019607843137,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-364",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      637.3301262349535,
      -141.89780067875677,
      35.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      118.13024848612781,
      362.72302633354184,
      46.054894212927366,
      20.0
     ],
     "text": "reset",
     "textjustification": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.741176470588235,
      0.117647058823529,
      0.317647058823529,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-365",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      591.8301262349535,
      -141.89780067875677,
      34.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      66.19406968371209,
      362.72302633354184,
      46.054894212927366,
      20.0
     ],
     "text": "stop",
     "textjustification": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.309803921568627,
      0.686274509803922,
      0.266666666666667,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-366",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      918.9125670000001,
      -141.89780067875677,
      34.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.321806656665899,
      362.72302633354184,
      49.2324726893728,
      20.0
     ],
     "text": "play",
     "textjustification": 1
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.815686274509804,
      0.337254901960784,
      0.337254901960784,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-367",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      746.1187416527816,
      -141.89780067875677,
      46.0,
      20.0
     ],
     "text": "rec",
     "textjustification": 1
    }
   },
   {
    "box": {
     "channels": 1,
     "id": "obj-363",
     "lastchannelcount": 0,
     "maxclass": "live.gain~",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "",
      "float",
      "list"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      106.69456874333957,
      2468.6440412688444,
      45.0,
      137.0
     ],
     "presentation": 1,
     "presentation_rect": [
      200.27967484497776,
      176.51110247968086,
      51.0,
      86.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "drygain",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "live.gain~",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "showname": 0,
     "varname": "drygain"
    }
   },
   {
    "box": {
     "comment": "dry signal out",
     "id": "obj-356",
     "index": 1,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      106.88933376336047,
      2651.9637691664884,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-354",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1991.744205832481,
      269.19877940628817,
      131.0,
      22.0
     ],
     "text": "r #0-feedback-mode"
    }
   },
   {
    "box": {
     "id": "obj-355",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      2080.7442058324814,
      330.6386453606815,
      29.5,
      22.0
     ],
     "text": "!= 1"
    }
   },
   {
    "box": {
     "id": "obj-353",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1658.9476520866624,
      285.0,
      131.0,
      22.0
     ],
     "text": "r #0-feedback-mode"
    }
   },
   {
    "box": {
     "id": "obj-352",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1613.9476520866624,
      242.14102690856544,
      133.0,
      22.0
     ],
     "text": "s #0-feedback-mode"
    }
   },
   {
    "box": {
     "id": "obj-351",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2742.480479169496,
      -933.6987489062883,
      92.0,
      22.0
     ],
     "text": "r #0-msg-rec"
    }
   },
   {
    "box": {
     "id": "obj-350",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2977.0,
      -917.6987489062883,
      98.0,
      22.0
     ],
     "text": "r #0-msg-stop"
    }
   },
   {
    "box": {
     "id": "obj-349",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2875.480479169496,
      -944.6987489062883,
      97.0,
      22.0
     ],
     "text": "r #0-msg-play"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-221",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2982.5,
      -876.1859527495656,
      34.0,
      20.0
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-222",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2871.480479169496,
      -876.1859527495656,
      34.0,
      20.0
     ],
     "text": "play"
    }
   },
   {
    "box": {
     "id": "obj-226",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2742.480479169496,
      -827.4359374995656,
      43.0,
      22.0
     ],
     "text": "record"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-230",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2742.480479169496,
      -870.7371885932773,
      46.0,
      20.0
     ],
     "text": "rec"
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      288.9965905849533,
      71.27278764321909,
      101.0,
      22.0
     ],
     "text": "r #0-msg-clear"
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      193.11874165278164,
      66.5,
      92.0,
      22.0
     ],
     "text": "r #0-msg-rec"
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      111.83402358495334,
      99.27278764321909,
      98.0,
      22.0
     ],
     "text": "r #0-msg-stop"
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      43.0,
      4.27278764321909,
      97.0,
      22.0
     ],
     "text": "r #0-msg-play"
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      764.1187416527816,
      171.0,
      103.0,
      22.0
     ],
     "text": "s #0-msg-clear"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      718.1187416527816,
      139.0,
      94.0,
      22.0
     ],
     "text": "s #0-msg-rec"
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      674.3661172740814,
      105.0,
      100.0,
      22.0
     ],
     "text": "s #0-msg-stop"
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      627.3661172740814,
      54.0,
      99.0,
      22.0
     ],
     "text": "s #0-msg-play"
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 11,
     "numoutlets": 16,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      620.0,
      -95.0,
      900.0,
      22.0
     ],
     "text": "route play stop rec reset url overdub unloop toggle-record toggle-mute unloop compression pitch_shift top_p sample_cutoff preset"
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2050.0,
      994.0,
      91.0,
      22.0
     ],
     "text": "print @popup 1"
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3693.5871167579667,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3693.5871167579667,
      894.0,
      127.0,
      22.0
     ],
     "text": "prepend --dropout"
    }
   },
   {
    "box": {
     "id": "obj-276",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      774.3661172740814,
      22.0,
      63.0,
      22.0
     ],
     "text": "s #0-url"
    }
   },
   {
    "box": {
     "id": "obj-273",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1979.0,
      944.0,
      41.0,
      22.0
     ],
     "text": "set $1"
    }
   },
   {
    "box": {
     "id": "obj-271",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1979.0,
      908.0,
      61.0,
      22.0
     ],
     "text": "r #0-url"
    }
   },
   {
    "box": {
     "id": "obj-270",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1765.0,
      427.44876415628823,
      113.0,
      22.0
     ],
     "text": "s #0-dry-bufwrite"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-268",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1642.8150009463388,
      190.85221457124317,
      79.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      174.9659789937757,
      336.055701462717,
      56.0,
      18.0
     ],
     "text": "feedback?"
    }
   },
   {
    "box": {
     "id": "obj-267",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2121.7954370528,
      210.06192630112105,
      113.0,
      22.0
     ],
     "text": "r #0-dry-bufbang"
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2080.7442058324814,
      379.6596935951766,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1956.2954370527991,
      385.7216198962976,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-264",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1740.9476520866622,
      374.6596935951766,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      1747.9476520866622,
      322.9760396276513,
      29.5,
      22.0
     ],
     "text": "!= 1"
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1613.9476520866624,
      128.9760396276513,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1658.9476520866624,
      379.6596935951766,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-251",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1613.9476520866624,
      194.02727547136305,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      190.4477043885015,
      358.055701462717,
      24.0,
      24.0
     ],
     "svg": "",
     "varname": "feedback"
    }
   },
   {
    "box": {
     "id": "obj-239",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "patching_rect": [
      1885.2442058324814,
      1539.0,
      31.0,
      22.0
     ],
     "text": "t s b"
    }
   },
   {
    "box": {
     "id": "status-unloop-starting",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1934.0,
      1564.0,
      121.0,
      22.0
     ],
     "text": "STATUS.STARTING"
    }
   },
   {
    "box": {
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1956.0,
      1840.0,
      61.0,
      22.0
     ],
     "text": "delay 300"
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      -97.64410399999997,
      -22.0,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-209",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      -97.64410399999997,
      28.996093799999983,
      115.0,
      22.0
     ],
     "text": "expr (1 - $i1) * 2048"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-211",
     "maxclass": "number",
     "minimum": 0,
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      -97.64410399999997,
      68.0,
      50.0,
      22.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        256
       ],
       "parameter_initial_enable": 1,
       "parameter_invisible": 1,
       "parameter_longname": "number[1]",
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "number",
       "parameter_type": 3
      }
     },
     "varname": "number"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-212",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      -97.64410399999997,
      105.41076659999999,
      55.0,
      22.0
     ],
     "text": "ramp $1"
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1842.000000655651,
      2098.0,
      97.0,
      22.0
     ],
     "text": "r #0-loopdone"
    }
   },
   {
    "box": {
     "id": "obj-203",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1132.5,
      1523.5527181124917,
      142.0,
      22.0
     ],
     "text": "loadmess STATUS.ready"
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      310.9965905849533,
      406.0,
      99.0,
      22.0
     ],
     "text": "s #0-loopdone"
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      ""
     ],
     "patching_rect": [
      310.9965905849533,
      365.9760396276513,
      34.0,
      22.0
     ],
     "text": "sel 1"
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      310.9965905849533,
      320.0,
      42.0,
      22.0
     ],
     "text": "> 0.99"
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      ""
     ],
     "patching_rect": [
      1898.2442058324814,
      956.0,
      31.0,
      22.0
     ],
     "text": "t b s"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-166",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1050.862059354782,
      -547.0933092705955,
      67.0,
      27.0
     ],
     "presentation": 1,
     "presentation_rect": [
      3.790440352184305,
      396.867317807659,
      131.15384769439697,
      20.0
     ],
     "text": "powered by VampNet \ud83e\udd16"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-165",
     "linecount": 4,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      719.1082160084115,
      -606.7980291120757,
      68.0,
      47.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      190.4477043885015,
      391.81143253871915,
      106.95820327461615,
      30.0
     ],
     "text": "\n flores electronics \ud83c\udf3b"
    }
   },
   {
    "box": {
     "align": 1,
     "allowdrag": 0,
     "bgcolor": [
      0.2,
      0.2,
      0.2,
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
     "fontname": "Helvetica",
     "id": "obj-111",
     "ignoreclick": 1,
     "items": [
      "stop",
      ",",
      "play",
      ",",
      "record",
      ",",
      "overdub",
      ",",
      "append",
      ",",
      "initial"
     ],
     "maxclass": "umenu",
     "menumode": 2,
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      617.3301475849535,
      283.25734848162847,
      74.99995730000023,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      10.321806656665899,
      336.055701462717,
      153.86333604238928,
      20.0
     ],
     "textjustification": 1
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "format": 6,
     "id": "obj-139",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      562.6078880849534,
      283.25734848162847,
      49.999957300000176,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "format": 6,
     "id": "obj-112",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      507.88562858495345,
      283.25734848162847,
      49.99995730000023,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "format": 6,
     "id": "obj-141",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      453.16339958495337,
      281.75734848162847,
      49.99995730000023,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "format": 6,
     "id": "obj-116",
     "ignoreclick": 1,
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      288.9965905849533,
      281.75734848162847,
      50.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "bgcolor": [
      0.75,
      0.75,
      0.75,
      1.0
     ],
     "bgoncolor": [
      0.662639,
      0.263952,
      0.677225,
      1.0
     ],
     "id": "obj-143",
     "ignoreclick": 1,
     "legacytextcolor": 1,
     "maxclass": "textbutton",
     "mode": 1,
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      398.4411095849533,
      281.75734848162847,
      34.0,
      20.0
     ],
     "text": "rec",
     "textcolor": [
      0.15,
      0.15,
      0.15,
      1.0
     ],
     "texton": "rec",
     "textoncolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "textovercolor": [
      0.1,
      0.1,
      0.1,
      1.0
     ],
     "usebgoncolor": 1,
     "usetextovercolor": 1,
     "varname": "textbutton[1]"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.75,
      0.75,
      0.75,
      1.0
     ],
     "bgoncolor": [
      0.662639,
      0.263952,
      0.677225,
      1.0
     ],
     "id": "obj-144",
     "ignoreclick": 1,
     "legacytextcolor": 1,
     "maxclass": "textbutton",
     "mode": 1,
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      343.7188495849533,
      281.75734848162847,
      34.0,
      20.0
     ],
     "text": "play",
     "textcolor": [
      0.15,
      0.15,
      0.15,
      1.0
     ],
     "texton": "play",
     "textoncolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "textovercolor": [
      0.1,
      0.1,
      0.1,
      1.0
     ],
     "usebgoncolor": 1,
     "usetextovercolor": 1
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      288.9965905849533,
      251.7370244816284,
      402.0558165000002,
      22.0
     ],
     "text": "unjoin 7"
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      295.5,
      147.90158629220593,
      76.0,
      22.0
     ],
     "text": "s #0-clear"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-163",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      288.9965905849533,
      119.5630495716589,
      35.0,
      20.0
     ],
     "text": "clear"
    }
   },
   {
    "box": {
     "comment": "messages: play, stop, rec, clear, url, overdub, toggle-record",
     "id": "obj-17",
     "index": 2,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      26.199467932498123,
      -892.993165997997,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "",
     "id": "obj-125",
     "index": 2,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      377.2618096087914,
      2664.7393387116394,
      30.0,
      30.0
     ],
     "varname": "wet"
    }
   },
   {
    "box": {
     "channels": 1,
     "id": "obj-133",
     "lastchannelcount": 0,
     "maxclass": "live.gain~",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "signal",
      "",
      "float",
      "list"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      377.40414201222995,
      2457.1000158786774,
      30.0,
      136.0
     ],
     "presentation": 1,
     "presentation_rect": [
      253.27967484497776,
      176.51110247968086,
      30.0,
      87.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "live.gain~[7]",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "live.gain~",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "showname": 0,
     "varname": "wetgain"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-156",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      123.10852037870029,
      135.44876415628823,
      34.0,
      20.0
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-155",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      65.33402358495334,
      131.10219932124323,
      34.0,
      20.0
     ],
     "text": "play"
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      212.11874165278164,
      139.0,
      43.0,
      22.0
     ],
     "text": "record"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgcolor2": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.235294117647059,
      0.317647058823529,
      0.392156862745098,
      1.0
     ],
     "bgfillcolor_color1": [
      0.184313725490196,
      0.247058823529412,
      0.305882352941176,
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
     "fontname": "Helvetica",
     "fontsize": 12.0,
     "gradient": 1,
     "id": "obj-148",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      212.11874165278164,
      107.5,
      46.0,
      20.0
     ],
     "text": "rec"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 3,
     "outlettype": [
      "signal",
      "signal",
      "list"
     ],
     "patching_rect": [
      71.33402358495334,
      203.10255685387415,
      179.0,
      22.0
     ],
     "text": "karma~ #0-vamp @syncout 1"
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1587.6976520866622,
      1523.5527181124917,
      29.5,
      22.0
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1587.6976520866622,
      1457.1087936758995,
      74.0,
      22.0
     ],
     "text": "r #0-clear"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      329.9965905849533,
      498.2370244816284,
      82.0,
      22.0
     ],
     "text": "s #0-buflen"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "patching_rect": [
      2657.1731959862755,
      -50.50238154788394,
      31.0,
      22.0
     ],
     "text": "t s b"
    }
   },
   {
    "box": {
     "fontname": "Geneva",
     "fontsize": 9.0,
     "id": "obj-89",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2727.6731959862755,
      5.674909047235587,
      68.0,
      20.0
     ],
     "text": "substitute \" \""
    }
   },
   {
    "box": {
     "fontname": "Geneva",
     "fontsize": 9.0,
     "id": "obj-102",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      2634.1731959862755,
      94.49761845211606,
      73.0,
      20.0
     ],
     "text": "regexp ^.+:"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1885.2442058324814,
      1505.0,
      71.0,
      22.0
     ],
     "text": "fromsymbol"
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1734.4126627395704,
      1564.0,
      29.5,
      22.0
     ],
     "text": "pkill"
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3050.0871167579658,
      770.5619840679856,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2839.0871167579658,
      770.5619840679856,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1885.2442058324814,
      1438.0,
      80.0,
      22.0
     ],
     "text": "append 2>&1"
    }
   },
   {
    "box": {
     "color": [
      1.0,
      0.890196,
      0.090196,
      1.0
     ],
     "fontname": "Geneva",
     "fontsize": 9.0,
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1885.2442058324814,
      1474.0000100135803,
      51.0,
      20.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3472.775962462059,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3249.5871167579667,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3050.0871167579658,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2839.0871167579658,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2653.5871167579667,
      948.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2463.8818041085574,
      944.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2275.4397730826713,
      944.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2166.2924294073755,
      944.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1898.2442058324814,
      1152.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1256.1626627395708,
      936.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1514.1626627395708,
      1039.0,
      57.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      946.1626627395708,
      888.9740329040603,
      69.0,
      22.0
     ],
     "text": "r #0-cwd"
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      946.1626627395708,
      932.9740329040603,
      191.0,
      22.0
     ],
     "text": "combine path / unloop / unloop.py"
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1255.0,
      1658.1087936758995,
      85.0,
      22.0
     ],
     "text": "route STATUS"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 20.0,
     "id": "obj-137",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1131.6248345779431,
      -494.06451815366745,
      125.0,
      26.0
     ],
     "presentation": 1,
     "presentation_rect": [
      96.30930681720997,
      6.458492231353603,
      124.0,
      26.0
     ],
     "text": "unloop",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      626.2442058324814,
      1038.227834224701,
      72.0,
      22.0
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "patching_rect": [
      1273.7847967147827,
      979.9691495573654,
      41.0,
      22.0
     ],
     "text": "t b b s"
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1256.0,
      848.0,
      150.0,
      20.0
     ],
     "text": "path to our input file"
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3472.775962462059,
      890.5879511639253,
      163.0,
      22.0
     ],
     "text": "prepend --checkpoint_name"
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      3432.275962462059,
      816.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "items": [
      "default",
      ",",
      "percussion",
      ",",
      "machines",
      ",",
      "orchestral",
      ",",
      "choir",
      ",",
      "opera",
      ",",
      "saxophone",
      ",",
      "sax-new",
      ",",
      "sax-sep",
      ",",
      "sample-instrument",
      ",",
      "supermetroid",
      ",",
      "n64",
      ",",
      "cat10",
      ",",
      "xeno-canto",
      ",",
      "lazaro-ros",
      ",",
      "lazaro-ros-sep",
      ",",
      "march-31",
      ",",
      "nesquik"
     ],
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "parameter_mappable": 0,
     "patching_rect": [
      3432.275962462059,
      852.5619840679856,
      100.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      373.3665141701189,
      424.0,
      161.0,
      22.0
     ],
     "pattrmode": 1,
     "varname": "ckpt-name"
    }
   },
   {
    "box": {
     "id": "model-select-label",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3375.0,
      852.5619840679856,
      48.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      317.0665159463373,
      425.0,
      48.0,
      20.0
     ],
     "text": "model"
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3050.0871167579658,
      897.5619840679856,
      132.0,
      22.0
     ],
     "text": "prepend --typical_filter"
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2839.0871167579658,
      897.5619840679856,
      155.0,
      22.0
     ],
     "text": "prepend --downbeats_only"
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1256.0,
      896.5527181124917,
      128.0,
      22.0
     ],
     "text": "prepend --audio_path"
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2463.8818041085574,
      894.0,
      170.0,
      22.0
     ],
     "text": "prepend --onset_mask_width"
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3249.5871167579667,
      894.0,
      127.0,
      22.0
     ],
     "text": "prepend --num_steps"
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2653.5871167579667,
      894.0,
      152.0,
      22.0
     ],
     "text": "prepend --beat_mask_ms"
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2275.4397730826713,
      894.0,
      166.0,
      22.0
     ],
     "text": "prepend --periodic_hint_freq"
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2166.2924294073755,
      894.0,
      93.0,
      22.0
     ],
     "text": "prepend --temp"
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1898.2442058324814,
      1113.1700585067176,
      129.0,
      22.0
     ],
     "text": "prepend --servername"
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1514.1626627395708,
      999.0,
      132.0,
      22.0
     ],
     "text": "prepend --output_path"
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1514.0,
      848.0,
      150.0,
      20.0
     ],
     "text": "path to our output file"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 8.0,
     "id": "obj-86",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      578.1626627395706,
      734.5527181124917,
      193.0,
      14.0
     ],
     "presentation": 1,
     "presentation_rect": [
      317.0665159463373,
      380.29526917798603,
      171.0,
      14.0
     ],
     "text": "path to python installation (see the README)"
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      626.2442058324814,
      971.4018178987044,
      29.5,
      22.0
     ],
     "text": "$2"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 8.0,
     "id": "obj-79",
     "maxclass": "textedit",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      626.2442058324814,
      929.2009089493522,
      147.0,
      23.01412570476532
     ],
     "presentation": 1,
     "presentation_rect": [
      317.0665159463373,
      396.867317807659,
      223.29999822378159,
      19.811594009399414
     ],
     "text": "/Users/yingyao/anaconda3/envs/vampnet_env/bin/python",
     "varname": "hostname[1]"
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      626.2442058324814,
      766.0,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      659.2442058324814,
      888.9740329040603,
      41.0,
      22.0
     ],
     "text": "set $1"
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1837.6523382067683,
      14.191832160961212,
      69.0,
      22.0
     ],
     "text": "r #0-cwd"
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1986.0000000000002,
      14.191832160961212,
      86.0,
      22.0
     ],
     "text": "r #0-patchid"
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1816.5000000000002,
      58.19183216096121,
      245.0,
      22.0
     ],
     "text": "combine path / audio/vampnet-input- s .wav"
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1514.1626627395708,
      892.0,
      69.0,
      22.0
     ],
     "text": "r #0-cwd"
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2418.253282203438,
      37.527275471363055,
      150.0,
      20.0
     ],
     "text": "max patch id"
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2634.1731959862755,
      136.33352376378434,
      71.0,
      22.0
     ],
     "text": "s #0-cwd"
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2767.1731959862755,
      48.236893115221164,
      150.0,
      20.0
     ],
     "text": "current working dir"
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2634.1731959862755,
      181.0248939234791,
      314.0,
      22.0
     ],
     "text": "/Users/yingyao/Downloads/VampNet/unloop-main"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2654.1731959862755,
      -86.56803323122949,
      67.0,
      22.0
     ],
     "text": "loadmess ."
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2634.1731959862755,
      13.236893115221164,
      77.0,
      22.0
     ],
     "text": "absolutepath"
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1689.6626627395708,
      892.0,
      86.0,
      22.0
     ],
     "text": "r #0-patchid"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2418.253282203438,
      -7.164094688331716,
      88.0,
      22.0
     ],
     "text": "s #0-patchid"
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2418.253282203438,
      -50.858973091434564,
      39.0,
      22.0
     ],
     "text": "#0"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2418.253282203438,
      -92.89744314612585,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1514.1626627395708,
      936.0,
      253.0,
      22.0
     ],
     "text": "combine path / audio/vampnet-output- s .wav"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1725.4034086366805,
      2235.0,
      420.0,
      22.0
     ],
     "text": "/Users/yingyao/Downloads/VampNet/unloop-main/audio/vampnet-output-1058.wav"
    }
   },
   {
    "box": {
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1663.828434286026,
      999.0,
      133.0,
      22.0
     ],
     "text": "s #0-output-filename"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "newobj",
     "numinlets": 19,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1005.0,
      1245.0,
      3600.0,
      22.0
     ],
     "text": "pack python /Users/yingyao/Downloads/VampNet/unloop-main/vamp.py inputfile outputfile servername temp phint onsetmask beatmask downbeats typical numsteps checkpointname dropout seed compression top_p pitchshift samplecutoff"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2126.4034086366805,
      2206.6329107284546,
      131.0,
      22.0
     ],
     "text": "r #0-output-filename"
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1905.9942058324814,
      1070.9691495573654,
      29.5,
      22.0
     ],
     "text": "$2"
    }
   },
   {
    "box": {
     "id": "obj-249",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2008.2442058324814,
      217.52727547136305,
      91.0,
      22.0
     ],
     "text": "r #0-bufbang"
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1667.9476520866622,
      427.44876415628823,
      92.0,
      22.0
     ],
     "text": "s #0-bufwrite"
    }
   },
   {
    "box": {
     "id": "obj-245",
     "linecount": 4,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1483.097444767769,
      1527.5527181124917,
      89.13043594360352,
      60.0
     ],
     "text": "automatically generate once generation is done? "
    }
   },
   {
    "box": {
     "id": "obj-237",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1833.7442058324814,
      818.5619840679856,
      58.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1885.2442058324814,
      1400.0000100135803,
      39.0,
      22.0
     ],
     "text": "zl.join"
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      999.4024361371994,
      1315.5276569223633,
      2700.0,
      22.0
     ],
     "text": "/Users/yingyao/anaconda3/envs/vampnet_env/bin/python /Users/yingyao/Downloads/VampNet/unloop-main/vamp.py \"--audio_path /Users/yingyao/Downloads/VampNet/unloop-main/audio/vampnet-input-1058.wav\" \"--output_path /Users/yingyao/Downloads/VampNet/unloop-main/audio/vampnet-output-1058.wav\" \"--servername http://127.0.0.1:7860/\" \"--temp 1.0000\" \"--periodic_hint_freq 0\" \"--onset_mask_width 0\" beatmask downbeats \"--typical_filter 0\" \"--num_steps 36\" \"--checkpoint_name n64\" \"--dropout 0.0000\" \"--seed 0\" \"--n_mask_codebooks 3\""
    }
   },
   {
    "box": {
     "id": "obj-214",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1833.7442058324814,
      863.0,
      213.0,
      22.0
     ],
     "text": "set http://127.0.0.1:7860/"
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1507.1626627395706,
      585.0,
      29.5,
      22.0
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1763.923013319603,
      1980.3876230716705,
      372.2139536142349,
      20.0
     ],
     "text": "wait until loop is done to load the new one to avoid clicks? (todo)"
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2116.221486086662,
      667.3207854628563,
      124.0,
      22.0
     ],
     "text": "r #0-input-filename"
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1902.8825675894664,
      126.90683567080305,
      126.0,
      22.0
     ],
     "text": "s #0-input-filename"
    }
   },
   {
    "box": {
     "id": "obj-188",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1986.0000000000002,
      501.0,
      323.0,
      47.0
     ],
     "text": "this cute little mess right here lets filter other buffer messages so that we launch ONLY when generate is pressed"
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1844.7461742063674,
      1658.1087936758995,
      106.0,
      22.0
     ],
     "text": "s #0-shell-done"
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2005.275962462059,
      1613.2089964168854,
      119.0,
      22.0
     ],
     "text": "s #0-shell-running"
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1507.1626627395706,
      554.2685193419456,
      117.0,
      22.0
     ],
     "text": "r #0-shell-running"
    }
   },
   {
    "box": {
     "id": "obj-181",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1963.963602900505,
      1880.8772404789925,
      91.0,
      22.0
     ],
     "text": "s #0-auto-go"
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1863.963602900505,
      2306.3724018352814,
      91.0,
      22.0
     ],
     "text": "print @popup 1"
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       34.0,
       115.0,
       1612.0,
       901.0
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "boxes": [
       {
        "box": {
         "id": "obj-27",
         "linecount": 4,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          605.0000000000001,
          46.0,
          253.0,
          60.0
         ],
         "text": "Process messages to have waveform~ display the appropriate sample, position, and selection without needing to use additional UI objects."
        }
       },
       {
        "box": {
         "id": "obj-23",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          668.0,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 4"
        }
       },
       {
        "box": {
         "id": "obj-22",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          418.51190476190493,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 3"
        }
       },
       {
        "box": {
         "id": "obj-21",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          216.0000000000001,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 2"
        }
       },
       {
        "box": {
         "id": "obj-19",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          41.0,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 1"
        }
       },
       {
        "box": {
         "id": "obj-17",
         "linecount": 3,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          198.0,
          37.5,
          128.0,
          47.0
         ],
         "text": "from karma list outlet (and position/window messages)"
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          824.5,
          545.9611264545453,
          33.0,
          22.0
         ],
         "text": "* 0.4"
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          824.5,
          599.5123627272725,
          259.0,
          22.0
         ],
         "text": "selectioncolor 0.501961 0.501961 0.501961 $1"
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 3,
         "outlettype": [
          "",
          "int",
          "int"
         ],
         "patching_rect": [
          824.5,
          492.409890181818,
          48.0,
          22.0
         ],
         "text": "change"
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          824.5,
          438.8586539090908,
          32.0,
          22.0
         ],
         "text": "!= 1."
        }
       },
       {
        "box": {
         "id": "obj-1",
         "maxclass": "newobj",
         "numinlets": 4,
         "numoutlets": 4,
         "outlettype": [
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          161.0000000000001,
          107.55123627272727,
          246.0,
          22.0
         ],
         "text": "route position window list"
        }
       },
       {
        "box": {
         "id": "obj-94",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          312.3333333333335,
          161.10247254545453,
          280.5,
          22.0
         ],
         "text": "unjoin 7"
        }
       },
       {
        "box": {
         "id": "obj-73",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          634.5000000000001,
          599.5123627272725,
          91.0,
          22.0
         ],
         "text": "switch 2"
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          747.0000000000001,
          545.9611264545453,
          29.5,
          22.0
         ],
         "text": "- 1"
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          747.0000000000001,
          599.5123627272725,
          55.0,
          22.0
         ],
         "text": "invert $1"
        }
       },
       {
        "box": {
         "id": "obj-55",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          388.33333333333337,
          599.5123627272725,
          91.0,
          22.0
         ],
         "text": "switch 2"
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          634.5000000000001,
          492.409890181818,
          137.0,
          22.0
         ],
         "text": "if $f1 > $f2 then 2 else 1"
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 3,
         "outlettype": [
          "",
          "int",
          "int"
         ],
         "patching_rect": [
          461.76190476190493,
          224.6537088181818,
          61.0,
          22.0
         ],
         "text": "change 0."
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          460.33333333333337,
          492.409890181818,
          132.5000000000001,
          22.0
         ],
         "text": "% 1."
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          426.26190476190493,
          331.7561813636363,
          54.5,
          22.0
         ],
         "text": "* 1."
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          504.33333333333337,
          331.7561813636363,
          54.5,
          22.0
         ],
         "text": "* 1."
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "float"
         ],
         "patching_rect": [
          504.33333333333337,
          385.30741763636354,
          29.5,
          22.0
         ],
         "text": "t b f"
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          460.33333333333337,
          438.8586539090908,
          73.5,
          22.0
         ],
         "text": "+ 0."
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          312.3333333333335,
          278.20494509090906,
          60.5,
          22.0
         ],
         "text": "* 1."
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          312.3333333333335,
          331.7561813636363,
          75.0,
          22.0
         ],
         "text": "prepend line"
        }
       },
       {
        "box": {
         "comment": "from karma list outlet (and position/window messages)",
         "id": "obj-95",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "list"
         ],
         "patching_rect": [
          161.0000000000001,
          46.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet ",
         "id": "obj-99",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          107.50000000000011,
          653.063599,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet 2",
         "id": "obj-100",
         "index": 2,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          184.0000000000001,
          653.063599,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet 3",
         "id": "obj-101",
         "index": 3,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          388.33333333333337,
          653.0635989999997,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet 4",
         "id": "obj-102",
         "index": 4,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          634.5000000000001,
          653.0635989999997,
          30.0,
          30.0
         ]
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
         "order": 1,
         "source": [
          "obj-1",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-30",
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
          "obj-6",
          0
         ],
         "midpoints": [
          246.1666666666668,
          140.704945090909,
          834.0,
          140.704945090909
         ],
         "order": 0,
         "source": [
          "obj-1",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-94",
          0
         ],
         "source": [
          "obj-1",
          2
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          834.0,
          636.5317995,
          117.00000000000011,
          636.5317995
         ],
         "source": [
          "obj-11",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-11",
          0
         ],
         "source": [
          "obj-12",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-7",
          0
         ],
         "source": [
          "obj-14",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-35",
          0
         ],
         "order": 2,
         "source": [
          "obj-24",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-42",
          0
         ],
         "midpoints": [
          469.83333333333337,
          476.1342720454544,
          644.0000000000001,
          476.1342720454544
         ],
         "order": 1,
         "source": [
          "obj-24",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-73",
          1
         ],
         "order": 0,
         "source": [
          "obj-24",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-59",
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
          "obj-24",
          0
         ],
         "midpoints": [
          435.76190476190493,
          424.80741763636354,
          469.83333333333337,
          424.80741763636354
         ],
         "order": 1,
         "source": [
          "obj-30",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-55",
          1
         ],
         "order": 2,
         "source": [
          "obj-30",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-73",
          2
         ],
         "order": 0,
         "source": [
          "obj-30",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-55",
          2
         ],
         "source": [
          "obj-35",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-14",
          1
         ],
         "midpoints": [
          471.26190476190493,
          261.92932695454545,
          363.3333333333335,
          261.92932695454545
         ],
         "order": 4,
         "source": [
          "obj-37",
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
         "midpoints": [
          471.26190476190493,
          261.70494509090906,
          549.3333333333334,
          261.70494509090906
         ],
         "order": 2,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-30",
          1
         ],
         "order": 3,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-35",
          1
         ],
         "midpoints": [
          471.26190476190493,
          261.0317994999999,
          583.3333333333335,
          261.0317994999999
         ],
         "order": 1,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-42",
          1
         ],
         "midpoints": [
          471.26190476190493,
          261.0317994999999,
          762.0000000000001,
          261.0317994999999
         ],
         "order": 0,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-55",
          0
         ],
         "midpoints": [
          644.0000000000001,
          531.4611264545453,
          397.83333333333337,
          531.4611264545453
         ],
         "order": 2,
         "source": [
          "obj-42",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-70",
          0
         ],
         "midpoints": [
          644.0000000000001,
          529.6855083181816,
          756.5000000000001,
          529.6855083181816
         ],
         "order": 0,
         "source": [
          "obj-42",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-73",
          0
         ],
         "order": 1,
         "source": [
          "obj-42",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-101",
          0
         ],
         "source": [
          "obj-55",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-24",
          1
         ],
         "source": [
          "obj-59",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-24",
          0
         ],
         "midpoints": [
          513.8333333333334,
          424.58303577272716,
          469.83333333333337,
          424.58303577272716
         ],
         "source": [
          "obj-59",
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
          "obj-6",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          756.5000000000001,
          637.7879808636362,
          117.00000000000011,
          637.7879808636362
         ],
         "source": [
          "obj-61",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          321.8333333333335,
          637.9098901818181,
          117.00000000000011,
          637.9098901818181
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
          "obj-61",
          0
         ],
         "source": [
          "obj-70",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-102",
          0
         ],
         "source": [
          "obj-73",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-12",
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
          "obj-100",
          0
         ],
         "midpoints": [
          471.26190476190493,
          210.58303577272727,
          193.5000000000001,
          210.58303577272727
         ],
         "order": 2,
         "source": [
          "obj-94",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-14",
          1
         ],
         "midpoints": [
          471.26190476190493,
          210.1537088181818,
          363.3333333333335,
          210.1537088181818
         ],
         "order": 1,
         "source": [
          "obj-94",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-14",
          0
         ],
         "source": [
          "obj-94",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-37",
          0
         ],
         "order": 0,
         "source": [
          "obj-94",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          433.90476190476204,
          196.58303577272727,
          117.00000000000011,
          196.58303577272727
         ],
         "source": [
          "obj-94",
          3
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-1",
          0
         ],
         "source": [
          "obj-95",
          0
         ]
        }
       }
      ],
      "originid": "pat-243"
     },
     "patching_rect": [
      233.21884958495332,
      448.5203240000001,
      255.0,
      22.0
     ],
     "saved_object_attributes": {
      "globalpatchername": ""
     },
     "text": "p waveformDisplay"
    }
   },
   {
    "box": {
     "buffername": "#0-vamp",
     "fontname": "Helvetica",
     "grid": 500.0,
     "id": "obj-81",
     "maxclass": "waveform~",
     "numinlets": 5,
     "numoutlets": 6,
     "outlettype": [
      "float",
      "float",
      "float",
      "float",
      "list",
      ""
     ],
     "patching_rect": [
      233.74075598852062,
      541.3051400266877,
      332.97079146191027,
      93.0
     ],
     "presentation": 1,
     "presentation_rect": [
      26.380704970222638,
      107.83115169505095,
      250.65923461495692,
      53.99999952316284
     ],
     "ticks": 8,
     "vlabels": 1,
     "waveformcolor": [
      0.996078431372549,
      0.427450980392157,
      0.980392156862745,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1523.1626627395706,
      2192.0,
      29.5,
      22.0
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1618.118419289589,
      1933.165402173996,
      104.0,
      22.0
     ],
     "text": "r #0-shell-done"
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1724.4034086366805,
      2021.7896337509155,
      644.0,
      22.0
     ],
     "text": "/Users/yingyao/anaconda3/envs/vampnet_env/bin/python"
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      1806.3008095622063,
      1694.1087936758995,
      29.5,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1635.1626627395706,
      679.04358959198,
      95.0,
      22.0
     ],
     "text": "print shell-ready"
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1793.3008095622063,
      1829.8772404789925,
      138.0,
      22.0
     ],
     "text": "print #0-auto-pressed"
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1832.2442058324814,
      1613.2089964168854,
      145.0,
      22.0
     ],
     "text": "print #0-shell-launched"
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1837.6523382067683,
      -22.551235843711765,
      162.0,
      22.0
     ],
     "text": "print #0-generate-pressed"
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1816.9959366173018,
      -100.58470903675834,
      89.0,
      22.0
     ],
     "text": "r #0-auto-go"
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1793.3008095622063,
      1774.957851946354,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "bgcolor": [
      0.564705882352941,
      0.745098039215686,
      0.427450980392157,
      1.0
     ],
     "bgcolor2": [
      0.564705882352941,
      0.745098039215686,
      0.427450980392157,
      1.0
     ],
     "bgfillcolor_angle": 270.0,
     "bgfillcolor_autogradient": 0.0,
     "bgfillcolor_color": [
      0.341176470588235,
      0.458823529411765,
      0.564705882352941,
      1.0
     ],
     "bgfillcolor_color1": [
      0.564705882352941,
      0.745098039215686,
      0.427450980392157,
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
     "id": "obj-74",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1806.3008095622063,
      1658.1087936758995,
      29.5,
      22.0
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1635.1626627395706,
      590.0043678283691,
      70.0,
      22.0
     ],
     "text": "loadmess 1"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1740.9476520866622,
      676.0043678283691,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1782.1626627395706,
      640.90229359198,
      60.0,
      20.0
     ],
     "text": "run-btn"
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1322.1626627395706,
      1708.1087936758995,
      96.0,
      22.0
     ],
     "text": "print #0-shout"
    }
   },
   {
    "box": {
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1724.4034086366805,
      2059.6329107284546,
      348.0,
      22.0
     ],
     "text": "route /Users/yingyao/Downloads/VampNet/unloop-main/audio/vampnet-output-#0.wav"
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "patching_rect": [
      1851.4397730826713,
      233.9760396276513,
      31.0,
      22.0
     ],
     "text": "t s b"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1753.9476520866622,
      710.17542559198,
      381.27383399999985,
      22.0
     ],
     "text": "/Users/yingyao/Downloads/VampNet/unloop-main/audio/vampnet-input-1058.wav"
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1969.275962462059,
      1658.1087936758995,
      220.0,
      24.0
     ],
     "text": "print #0-\ud83e\udd16\ud83e\udd16\ud83e\udd16 @popup 1"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1725.4034086366805,
      2306.3724018352814,
      107.0,
      22.0
     ],
     "text": "s #0-load-vamp"
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "patching_rect": [
      1792.2367429634246,
      1613.2089964168854,
      33.0,
      22.0
     ],
     "saved_object_attributes": {
      "shell": "(default)"
     },
     "text": "shell"
    }
   },
   {
    "box": {
     "blinkcolor": [
      0.945098039215686,
      0.72156862745098,
      0.07843137254902,
      1.0
     ],
     "id": "obj-14",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "outlinecolor": [
      0.513725490196078,
      0.392156862745098,
      0.03921568627451,
      1.0
     ],
     "parameter_enable": 0,
     "parameter_mappable": 0,
     "patching_rect": [
      1816.7809259643934,
      -56.46832828622428,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      103.91638107636766,
      176.51110247968086,
      56.380956530570984,
      56.380956530570984
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-20",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1816.5000000000002,
      105.58979106485367,
      79.0,
      22.0
     ],
     "text": "writewave $1"
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1961.856266895899,
      604.7307827472687,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1915.5598363229851,
      557.3068801526297,
      24.0,
      24.0
     ],
     "svg": ""
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.945098039215686,
      0.980392156862745,
      0.933333333333333,
      1.0
     ],
     "id": "obj-151",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2373.888870770601,
      -107.97272452863695,
      217.88899530000026,
      184.22273977863688
     ],
     "proportion": 0.5
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.945098039215686,
      0.980392156862745,
      0.933333333333333,
      1.0
     ],
     "id": "obj-154",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2608.8087845534383,
      -107.97272452863695,
      362.88899530000026,
      327.2227397786369
     ],
     "proportion": 0.5
    }
   },
   {
    "box": {
     "id": "obj-321",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2599.4805788336685,
      -916.1859527495656,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-322",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2599.4805788336685,
      -865.1898589495656,
      115.0,
      22.0
     ],
     "text": "expr (1 - $i1) * 1024"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-323",
     "maxclass": "number",
     "minimum": 0,
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2609.4805788336685,
      -827.4359374995656,
      50.0,
      22.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        256
       ],
       "parameter_initial_enable": 1,
       "parameter_invisible": 1,
       "parameter_longname": "number[3]",
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "number",
       "parameter_type": 3
      }
     },
     "varname": "number[1]"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-324",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2614.4805788336685,
      -780.7751861495656,
      55.0,
      22.0
     ],
     "text": "ramp $1"
    }
   },
   {
    "box": {
     "id": "obj-336",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3053.996590584953,
      -310.9489381623082,
      104.0,
      22.0
     ],
     "text": "s #0-dry-buflen"
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.0,
      0.501960784313725,
      0.647058823529412,
      1.0
     ],
     "border": 3,
     "bordercolor": [
      0.945098039215686,
      0.72156862745098,
      0.07843137254902,
      1.0
     ],
     "id": "obj-162",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      670.1187416527818,
      -816.0981812350501,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.750678778048155,
      0.515938870571063,
      301.9192869993059,
      428.5185205936432
     ],
     "proportion": 0.5,
     "rounded": 0
    }
   },
   {
    "box": {
     "id": "obj-292",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       59.0,
       106.0,
       640.0,
       480.0
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "boxes": [
       {
        "box": {
         "id": "obj-282",
         "linecount": 2,
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "bang"
         ],
         "patching_rect": [
          84.0,
          100.0,
          31.0,
          35.0
         ],
         "text": "t b b"
        }
       },
       {
        "box": {
         "id": "obj-281",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          136.50657967296615,
          35.0,
          22.0
         ],
         "text": "clear"
        }
       },
       {
        "box": {
         "id": "obj-173",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          94.99999999999955,
          136.50657967296615,
          76.0,
          22.0
         ],
         "text": "setsize 9000"
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-290",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          84.0,
          40.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "",
         "id": "obj-291",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          66.5,
          221.50659199999996,
          30.0,
          30.0
         ]
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "obj-291",
          0
         ],
         "source": [
          "obj-173",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-291",
          0
         ],
         "source": [
          "obj-281",
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
          "obj-282",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-281",
          0
         ],
         "source": [
          "obj-282",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-282",
          0
         ],
         "source": [
          "obj-290",
          0
         ]
        }
       }
      ],
      "originid": "pat-245"
     },
     "patching_rect": [
      2021.3682526462662,
      -727.7499978228836,
      82.60000014305069,
      22.0
     ],
     "saved_object_attributes": {
      "globalpatchername": ""
     },
     "text": "p clear"
    }
   },
   {
    "box": {
     "id": "obj-278",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2302.014237012869,
      -699.8434171604804,
      93.0,
      22.0
     ],
     "text": "prepend setsize"
    }
   },
   {
    "box": {
     "id": "obj-275",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2180.014237012869,
      -694.2434170770339,
      22.0,
      22.0
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-259",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2180.014237012869,
      -638.76880161948,
      134.0,
      22.0
     ],
     "text": "setsize 9000"
    }
   },
   {
    "box": {
     "id": "obj-319",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "bang"
     ],
     "patching_rect": [
      1990.968252789317,
      -581.0083692510568,
      127.0,
      22.0
     ],
     "text": "buffer~ #0-dry 9000"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-335",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "list"
     ],
     "patching_rect": [
      2847.9965905849535,
      -447.68341447604394,
      100.0,
      22.0
     ],
     "text": "karma~ #0-dry"
    }
   },
   {
    "box": {
     "id": "obj-337",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 0,
       "revision": 1,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       34.0,
       115.0,
       1612.0,
       901.0
      ],
      "gridsize": [
       15.0,
       15.0
      ],
      "boxes": [
       {
        "box": {
         "id": "obj-27",
         "linecount": 4,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          605.0000000000001,
          46.0,
          253.0,
          60.0
         ],
         "text": "Process messages to have waveform~ display the appropriate sample, position, and selection without needing to use additional UI objects."
        }
       },
       {
        "box": {
         "id": "obj-23",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          668.0,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 4"
        }
       },
       {
        "box": {
         "id": "obj-22",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          418.51190476190493,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 3"
        }
       },
       {
        "box": {
         "id": "obj-21",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          216.0000000000001,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 2"
        }
       },
       {
        "box": {
         "id": "obj-19",
         "linecount": 2,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          41.0,
          651.5635990000001,
          71.0,
          33.0
         ],
         "text": "waveform~ inlet 1"
        }
       },
       {
        "box": {
         "id": "obj-17",
         "linecount": 3,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          198.0,
          37.5,
          128.0,
          47.0
         ],
         "text": "from karma list outlet (and position/window messages)"
        }
       },
       {
        "box": {
         "id": "obj-12",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          824.5,
          545.9611264545453,
          33.0,
          22.0
         ],
         "text": "* 0.4"
        }
       },
       {
        "box": {
         "id": "obj-11",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          824.5,
          599.5123627272725,
          259.0,
          22.0
         ],
         "text": "selectioncolor 0.501961 0.501961 0.501961 $1"
        }
       },
       {
        "box": {
         "id": "obj-8",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 3,
         "outlettype": [
          "",
          "int",
          "int"
         ],
         "patching_rect": [
          824.5,
          492.409890181818,
          48.0,
          22.0
         ],
         "text": "change"
        }
       },
       {
        "box": {
         "id": "obj-6",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          824.5,
          438.8586539090908,
          32.0,
          22.0
         ],
         "text": "!= 1."
        }
       },
       {
        "box": {
         "id": "obj-1",
         "maxclass": "newobj",
         "numinlets": 4,
         "numoutlets": 4,
         "outlettype": [
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          161.0000000000001,
          107.55123627272727,
          246.0,
          22.0
         ],
         "text": "route position window list"
        }
       },
       {
        "box": {
         "id": "obj-94",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 8,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          312.3333333333335,
          161.10247254545453,
          280.5,
          22.0
         ],
         "text": "unjoin 7"
        }
       },
       {
        "box": {
         "id": "obj-73",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          634.5000000000001,
          599.5123627272725,
          91.0,
          22.0
         ],
         "text": "switch 2"
        }
       },
       {
        "box": {
         "id": "obj-70",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          747.0000000000001,
          545.9611264545453,
          29.5,
          22.0
         ],
         "text": "- 1"
        }
       },
       {
        "box": {
         "id": "obj-61",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          747.0000000000001,
          599.5123627272725,
          55.0,
          22.0
         ],
         "text": "invert $1"
        }
       },
       {
        "box": {
         "id": "obj-55",
         "maxclass": "newobj",
         "numinlets": 3,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          388.33333333333337,
          599.5123627272725,
          91.0,
          22.0
         ],
         "text": "switch 2"
        }
       },
       {
        "box": {
         "id": "obj-42",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          634.5000000000001,
          492.409890181818,
          137.0,
          22.0
         ],
         "text": "if $f1 > $f2 then 2 else 1"
        }
       },
       {
        "box": {
         "id": "obj-37",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 3,
         "outlettype": [
          "",
          "int",
          "int"
         ],
         "patching_rect": [
          461.76190476190493,
          224.6537088181818,
          61.0,
          22.0
         ],
         "text": "change 0."
        }
       },
       {
        "box": {
         "id": "obj-35",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          460.33333333333337,
          492.409890181818,
          132.5000000000001,
          22.0
         ],
         "text": "% 1."
        }
       },
       {
        "box": {
         "id": "obj-30",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          426.26190476190493,
          331.7561813636363,
          54.5,
          22.0
         ],
         "text": "* 1."
        }
       },
       {
        "box": {
         "id": "obj-25",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          504.33333333333337,
          331.7561813636363,
          54.5,
          22.0
         ],
         "text": "* 1."
        }
       },
       {
        "box": {
         "id": "obj-59",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "float"
         ],
         "patching_rect": [
          504.33333333333337,
          385.30741763636354,
          29.5,
          22.0
         ],
         "text": "t b f"
        }
       },
       {
        "box": {
         "id": "obj-24",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          460.33333333333337,
          438.8586539090908,
          73.5,
          22.0
         ],
         "text": "+ 0."
        }
       },
       {
        "box": {
         "id": "obj-14",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "float"
         ],
         "patching_rect": [
          312.3333333333335,
          278.20494509090906,
          60.5,
          22.0
         ],
         "text": "* 1."
        }
       },
       {
        "box": {
         "id": "obj-7",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          312.3333333333335,
          331.7561813636363,
          75.0,
          22.0
         ],
         "text": "prepend line"
        }
       },
       {
        "box": {
         "comment": "from karma list outlet (and position/window messages)",
         "id": "obj-95",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "list"
         ],
         "patching_rect": [
          161.0000000000001,
          46.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet ",
         "id": "obj-99",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          107.50000000000011,
          653.063599,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet 2",
         "id": "obj-100",
         "index": 2,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          184.0000000000001,
          653.063599,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet 3",
         "id": "obj-101",
         "index": 3,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          388.33333333333337,
          653.0635989999997,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "waveform~ inlet 4",
         "id": "obj-102",
         "index": 4,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          634.5000000000001,
          653.0635989999997,
          30.0,
          30.0
         ]
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
         "order": 1,
         "source": [
          "obj-1",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-30",
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
          "obj-6",
          0
         ],
         "midpoints": [
          246.1666666666668,
          140.704945090909,
          834.0,
          140.704945090909
         ],
         "order": 0,
         "source": [
          "obj-1",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-94",
          0
         ],
         "source": [
          "obj-1",
          2
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          834.0,
          636.5317995,
          117.00000000000011,
          636.5317995
         ],
         "source": [
          "obj-11",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-11",
          0
         ],
         "source": [
          "obj-12",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-7",
          0
         ],
         "source": [
          "obj-14",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-35",
          0
         ],
         "order": 2,
         "source": [
          "obj-24",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-42",
          0
         ],
         "midpoints": [
          469.83333333333337,
          476.1342720454544,
          644.0000000000001,
          476.1342720454544
         ],
         "order": 1,
         "source": [
          "obj-24",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-73",
          1
         ],
         "order": 0,
         "source": [
          "obj-24",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-59",
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
          "obj-24",
          0
         ],
         "midpoints": [
          435.76190476190493,
          424.80741763636354,
          469.83333333333337,
          424.80741763636354
         ],
         "order": 1,
         "source": [
          "obj-30",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-55",
          1
         ],
         "order": 2,
         "source": [
          "obj-30",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-73",
          2
         ],
         "order": 0,
         "source": [
          "obj-30",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-55",
          2
         ],
         "source": [
          "obj-35",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-14",
          1
         ],
         "midpoints": [
          471.26190476190493,
          261.92932695454545,
          363.3333333333335,
          261.92932695454545
         ],
         "order": 4,
         "source": [
          "obj-37",
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
         "midpoints": [
          471.26190476190493,
          261.70494509090906,
          549.3333333333334,
          261.70494509090906
         ],
         "order": 2,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-30",
          1
         ],
         "order": 3,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-35",
          1
         ],
         "midpoints": [
          471.26190476190493,
          261.0317994999999,
          583.3333333333335,
          261.0317994999999
         ],
         "order": 1,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-42",
          1
         ],
         "midpoints": [
          471.26190476190493,
          261.0317994999999,
          762.0000000000001,
          261.0317994999999
         ],
         "order": 0,
         "source": [
          "obj-37",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-55",
          0
         ],
         "midpoints": [
          644.0000000000001,
          531.4611264545453,
          397.83333333333337,
          531.4611264545453
         ],
         "order": 2,
         "source": [
          "obj-42",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-70",
          0
         ],
         "midpoints": [
          644.0000000000001,
          529.6855083181816,
          756.5000000000001,
          529.6855083181816
         ],
         "order": 0,
         "source": [
          "obj-42",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-73",
          0
         ],
         "order": 1,
         "source": [
          "obj-42",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-101",
          0
         ],
         "source": [
          "obj-55",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-24",
          1
         ],
         "source": [
          "obj-59",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-24",
          0
         ],
         "midpoints": [
          513.8333333333334,
          424.58303577272716,
          469.83333333333337,
          424.58303577272716
         ],
         "source": [
          "obj-59",
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
          "obj-6",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          756.5000000000001,
          637.7879808636362,
          117.00000000000011,
          637.7879808636362
         ],
         "source": [
          "obj-61",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          321.8333333333335,
          637.9098901818181,
          117.00000000000011,
          637.9098901818181
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
          "obj-61",
          0
         ],
         "source": [
          "obj-70",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-102",
          0
         ],
         "source": [
          "obj-73",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-12",
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
          "obj-100",
          0
         ],
         "midpoints": [
          471.26190476190493,
          210.58303577272727,
          193.5000000000001,
          210.58303577272727
         ],
         "order": 2,
         "source": [
          "obj-94",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-14",
          1
         ],
         "midpoints": [
          471.26190476190493,
          210.1537088181818,
          363.3333333333335,
          210.1537088181818
         ],
         "order": 1,
         "source": [
          "obj-94",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-14",
          0
         ],
         "source": [
          "obj-94",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-37",
          0
         ],
         "order": 0,
         "source": [
          "obj-94",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-99",
          0
         ],
         "midpoints": [
          433.90476190476204,
          196.58303577272727,
          117.00000000000011,
          196.58303577272727
         ],
         "source": [
          "obj-94",
          3
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "obj-1",
          0
         ],
         "source": [
          "obj-95",
          0
         ]
        }
       }
      ],
      "originid": "pat-247"
     },
     "patching_rect": [
      2992.4804791694964,
      -376.7372104876483,
      255.0,
      22.0
     ],
     "saved_object_attributes": {
      "globalpatchername": ""
     },
     "text": "p waveformDisplay"
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.945098039215686,
      0.980392156862745,
      0.933333333333333,
      1.0
     ],
     "id": "obj-279",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1941.5598363229851,
      -755.7198924196969,
      471.88899530000026,
      208.0
     ],
     "proportion": 0.5
    }
   },
   {
    "box": {
     "fontface": 0,
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-373",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3871.087116757966,
      805.2331491491166,
      35.0,
      16.0
     ],
     "presentation": 1,
     "presentation_rect": [
      492.20643910235674,
      255.3111019849623,
      50.0,
      16.0
     ],
     "text": "seed",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-372",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      3871.087116757966,
      828.5619840679856,
      50.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      492.20643910235674,
      219.3111019849623,
      50.0,
      22.0
     ],
     "varname": "seed"
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
     "id": "obj-121",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      3693.5871167579667,
      808.5619840679856,
      38.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      501.0,
      120.88736510375952,
      55.0,
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
       "parameter_longname": "dropout",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "dropout",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "dropout"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "obj-269",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2295.4397730826713,
      808.5619840679856,
      70.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      310.56651445622117,
      120.88736510375952,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        7
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "periodic prompt[3]",
       "parameter_mmax": 31.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "periodic",
       "parameter_steps": 600,
       "parameter_type": 1,
       "parameter_unitstyle": 0
      }
     },
     "varname": "periodic prompt[2]"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontname": "Helvetica",
     "fontsize": 13.0,
     "id": "obj-159",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      988.1125210523605,
      -575.6948599733123,
      47.0,
      32.0
     ],
     "presentation": 1,
     "presentation_rect": [
      380.0,
      89.0,
      96.0,
      19.0
     ],
     "text": "prompts",
     "textjustification": 1
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontname": "Helvetica",
     "fontsize": 13.0,
     "id": "obj-158",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1060.862059354782,
      -627.8252120293503,
      47.0,
      32.0
     ],
     "presentation": 1,
     "presentation_rect": [
      379.8524445463778,
      183.27519916739266,
      96.0,
      19.0
     ],
     "text": "sampling",
     "textjustification": 1
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-140",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1150.0,
      1788.0,
      106.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      317.0665159463373,
      325.72302633354184,
      122.0,
      18.0
     ],
     "text": "STATUS.READY"
    }
   },
   {
    "box": {
     "fontface": 0,
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-128",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3043.587116757966,
      743.5619840679856,
      82.0,
      16.0
     ],
     "presentation": 1,
     "presentation_rect": [
      428.8702115122038,
      254.8111019849623,
      55.69999986886978,
      16.0
     ],
     "text": "typical filt.",
     "textjustification": 1
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      3050.0871167579658,
      808.5619840679856,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      444.7202114466387,
      219.3111019849623,
      24.0,
      24.0
     ],
     "svg": "",
     "varname": "atypical"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "id": "obj-91",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1873.7442058324814,
      772.9691495573654,
      249.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      317.0665159463373,
      354.81143253871915,
      47.99999701976776,
      18.0
     ],
     "text": "API"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "obj-240",
     "maxclass": "textedit",
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1930.5,
      1024.5,
      159.0,
      30.0
     ],
     "presentation": 1,
     "presentation_rect": [
      373.3665141701189,
      354.81143253871915,
      161.0,
      21.86747927833926
     ],
     "text": "http://127.0.0.1:7860/",
     "varname": "hostname"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "obj-101",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2463.8818041085574,
      808.5619840679856,
      80.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      406.0,
      120.88736510375952,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        5
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "onsetmask[1]",
       "parameter_mmax": 100.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "onset mask",
       "parameter_type": 1,
       "parameter_unitstyle": 0
      }
     },
     "varname": "onsetmask"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "obj-69",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2653.5871167579667,
      808.5619840679856,
      50.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      454.0,
      120.88736510375952,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "beatwidth[1]",
       "parameter_mmax": 200.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "beat (ms)",
       "parameter_steps": 200,
       "parameter_type": 1,
       "parameter_unitstyle": 0
      }
     },
     "varname": "beatwidth"
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1410.6355885671628,
      640.90229359198,
      216.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      444.7202114466387,
      323.22302633354184,
      48.79999750852585,
      20.0
     ],
     "text": "ready?"
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1635.1626627395706,
      640.90229359198,
      24.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      510.366514170119,
      323.22302633354184,
      24.0,
      24.0
     ],
     "svg": ""
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
     "id": "obj-70",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      3249.5871167579667,
      808.5619840679856,
      38.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      373.3665141701189,
      214.8111019849623,
      59.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        24
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "numsteps[1]",
       "parameter_mmax": 64.0,
       "parameter_mmin": 12.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "steps",
       "parameter_type": 1,
       "parameter_unitstyle": 0
      }
     },
     "varname": "numsteps"
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
     "id": "obj-62",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2166.2924294073755,
      808.5619840679856,
      63.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      310.56651445622117,
      214.8111019849623,
      61.0,
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
       "parameter_longname": "temperature[1]",
       "parameter_mmax": 3.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "temperature",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "temperature"
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.67843137254902,
      0.407843137254902,
      0.576470588235294,
      1.0
     ],
     "border": 3,
     "bordercolor": [
      0.309803921568627,
      0.686274509803922,
      0.266666666666667,
      1.0
     ],
     "id": "obj-145",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1137.4111948760108,
      -669.0656607432516,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      298.7202114466387,
      0.515938870571063,
      258.2644661994783,
      180.2044017028618
     ],
     "proportion": 0.5,
     "rounded": 0
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.219607843137255,
      0.654901960784314,
      0.403921568627451,
      1.0
     ],
     "border": 3,
     "bordercolor": [
      0.815686274509804,
      0.07843137254902,
      0.945098039215686,
      1.0
     ],
     "id": "obj-136",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      681.7275546059991,
      -658.7086937896956,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      298.7202114466387,
      176.51110247968086,
      258.2644661994783,
      108.35062292218208
     ],
     "proportion": 0.5,
     "rounded": 0
    }
   },
   {
    "box": {
     "angle": 270.0,
     "bgcolor": [
      0.27843137254902,
      0.505882352941176,
      0.498039215686275,
      1.0
     ],
     "border": 3,
     "bordercolor": [
      0.996078431372549,
      0.427450980392157,
      0.450980392156863,
      1.0
     ],
     "id": "obj-161",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      835.3228029607992,
      -644.5512449036178,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      298.7202114466387,
      283.1506427240429,
      258.0126248927919,
      169.71649186934656
     ],
     "proportion": 0.5,
     "rounded": 0
    }
   },
   {
    "box": {
     "id": "obj-263",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1428.9569070866619,
      2071.6329107284546,
      29.5,
      22.0
     ],
     "text": "0"
    }
   },
   {
    "box": {
     "id": "obj-281",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1428.9569070866619,
      2043.6329107284546,
      74.0,
      22.0
     ],
     "text": "r #0-clear"
    }
   },
   {
    "box": {
     "id": "reset-auto-go-clear-r",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2038.0,
      1805.0,
      74.0,
      22.0
     ],
     "text": "r #0-clear"
    }
   },
   {
    "box": {
     "id": "reset-auto-go-stop-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2038.0,
      1840.0,
      35.0,
      22.0
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "id": "obj-286",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1516.9569070866619,
      2042.6329107284546,
      70.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-291",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1674.794244347091,
      2114.6329107284546,
      29.5,
      22.0
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-294",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1601.9569070866619,
      2200.0,
      32.0,
      22.0
     ],
     "text": "gate"
    }
   },
   {
    "box": {
     "id": "motion-osc-comment",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4210.0,
      90.0,
      260.0,
      20.0
     ],
     "text": "motion OSC from motion_to_unloop.py"
    }
   },
   {
    "box": {
     "id": "motion-osc-recv",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4210.0,
      120.0,
      105.0,
      22.0
     ],
     "text": "udpreceive 9100",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-parse",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4210.0,
      155.0,
      70.0,
      22.0
     ],
     "text": "oscparse",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-route-motion",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4210.0,
      190.0,
      90.0,
      22.0
     ],
     "text": "route motion",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-route-controls",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 14,
     "patching_rect": [
      4210.0,
      225.0,
      880.0,
      22.0
     ],
     "text": "route temperature dropout onsetmask periodic unloop feedback steps inputgain inputgain_db filtercutoff filterq drive gain",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-unloop-sel",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4470.0,
      265.0,
      45.0,
      22.0
     ],
     "text": "sel 1",
     "outlettype": [
      "bang",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-print",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4210.0,
      305.0,
      105.0,
      22.0
     ],
     "text": "print motion-osc",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-route-direct",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 14,
     "patching_rect": [
      4210.0,
      155.0,
      1160.0,
      22.0
     ],
     "text": "route /motion/temperature /motion/dropout /motion/onsetmask /motion/periodic /motion/unloop /motion/feedback /motion/steps /motion/inputgain /motion/inputgain_db /motion/filtercutoff /motion/filterq /motion/drive /motion/gain",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-max-event-comment",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4210.0,
      315.0,
      340.0,
      20.0
     ],
     "text": "Max record/unloop events to motion_to_unloop.py"
    }
   },
   {
    "box": {
     "id": "motion-max-event-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4210.0,
      430.0,
      170.0,
      22.0
     ],
     "text": "udpsend 127.0.0.1 9101",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-record-event-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4210.0,
      350.0,
      120.0,
      22.0
     ],
     "text": "/max/record $1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-unloop-trigger",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1816.7809259643934,
      -16.0,
      55.0,
      22.0
     ],
     "text": "t b b b",
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "motion-unloop-event-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4335.0,
      350.0,
      115.0,
      22.0
     ],
     "text": "/max/unloop 1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-unloop-delay",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1816.7809259643934,
      20.0,
      55.0,
      22.0
     ],
     "text": "del 200",
     "outlettype": [
      "bang"
     ]
    }
   },
   {
    "box": {
     "id": "motion-record-zero-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4210.0,
      390.0,
      120.0,
      22.0
     ],
     "text": "/max/record 0",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-osc-unloop-speedlim",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4320.0,
      255.0,
      85.0,
      22.0
     ],
     "text": "speedlim 500",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "motion-dsp-comment",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4210.0,
      560.0,
      220.0,
      20.0
     ],
     "text": "motion DSP controls",
     "presentation": 1,
     "presentation_rect": [
      310.0,
      292.0,
      170.0,
      20.0
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
     "id": "motion-inputgain-db-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4210.0,
      590.0,
      47.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      310.0,
      316.0,
      47.0,
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
       "parameter_longname": "motion input gain dB",
       "parameter_mmax": 80.0,
       "parameter_mmin": -24.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "in gain",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "inputgain-db-dial"
    }
   },
   {
    "box": {
     "id": "motion-inputgain-db-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      4210.0,
      652.0,
      155.0,
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
     "id": "motion-filtercutoff-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4270.0,
      590.0,
      47.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      360.0,
      316.0,
      47.0,
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
       "parameter_longname": "motion filter cutoff",
       "parameter_mmax": 12000.0,
       "parameter_mmin": 100.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "cutoff",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "varname": "filtercutoff-dial"
    }
   },
   {
    "box": {
     "id": "motion-filtercutoff-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      4270.0,
      652.0,
      155.0,
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
     "id": "motion-filterq-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4330.0,
      590.0,
      47.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      410.0,
      316.0,
      47.0,
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
       "parameter_longname": "motion filter Q",
       "parameter_mmax": 5.0,
       "parameter_mmin": 0.1,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "filt Q",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "filterq-dial"
    }
   },
   {
    "box": {
     "id": "motion-filterq-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      4330.0,
      652.0,
      155.0,
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
     "id": "motion-drive-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4390.0,
      590.0,
      47.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      460.0,
      316.0,
      47.0,
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
       "parameter_longname": "motion drive",
       "parameter_mmax": 8.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "drive",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "drive-dial"
    }
   },
   {
    "box": {
     "id": "motion-drive-send",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "patching_rect": [
      4390.0,
      652.0,
      155.0,
      22.0
     ],
     "text": "s motion-drive"
    }
   },
   {
    "box": {
     "id": "motion-osc-unpack-gain",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      4970.0,
      265.0,
      75.0,
      22.0
     ],
     "text": "unpack f f"
    }
   },
   {
    "box": {
     "id": "comp-loadbang",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2380.0,
      760.0,
      90.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "comp-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2380.0,
      815.0,
      60.0,
      55.0
     ],
     "presentation": 1,
     "presentation_rect": [
      358.0,
      120.88736510375952,
      45.0,
      45.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        3
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "compression prompt",
       "parameter_mmax": 14.0,
       "parameter_mmin": 0.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "comp",
       "parameter_steps": 14,
       "parameter_type": 1,
       "parameter_unitstyle": 0
      }
     },
     "varname": "compression"
    }
   },
   {
    "box": {
     "id": "comp-prepend",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2380.0,
      910.0,
      205.0,
      22.0
     ],
     "text": "prepend --n_mask_codebooks"
    }
   },
   {
    "box": {
     "id": "comp-symbol",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2380.0,
      965.0,
      80.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "fontname": "Helvetica",
     "fontsize": 10.0,
     "id": "comp-label",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2380.0,
      790.0,
      45.0,
      16.0
     ],
     "presentation": 1,
     "presentation_rect": [
      358.0,
      108.0,
      45.0,
      16.0
     ],
     "text": "comp",
     "textjustification": 1
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "top-p-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2630.0,
      815.0,
      60.0,
      55.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "top p",
       "parameter_mmax": 1.0,
       "parameter_mmin": 0.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "top p",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "top_p"
    }
   },
   {
    "box": {
     "id": "top-p-prepend",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2630.0,
      910.0,
      205.0,
      22.0
     ],
     "text": "prepend --top_p"
    }
   },
   {
    "box": {
     "id": "top-p-symbol",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2630.0,
      965.0,
      80.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "top-p-load",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2630.0,
      760.0,
      90.0,
      22.0
     ],
     "text": "loadmess 0."
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "pitch-shift-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2880.0,
      815.0,
      60.0,
      55.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "pitch shift",
       "parameter_mmax": 12.0,
       "parameter_mmin": -12.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "pitch",
       "parameter_type": 1,
       "parameter_unitstyle": 0,
       "parameter_steps": 24
      }
     },
     "varname": "pitch_shift"
    }
   },
   {
    "box": {
     "id": "pitch-shift-prepend",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2880.0,
      910.0,
      205.0,
      22.0
     ],
     "text": "prepend --pitch_shift_amt"
    }
   },
   {
    "box": {
     "id": "pitch-shift-symbol",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2880.0,
      965.0,
      80.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "pitch-shift-load",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2880.0,
      760.0,
      90.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "activedialcolor": [
      0.0,
      0.854901960784314,
      0.282352941176471,
      1.0
     ],
     "fontname": "Helvetica",
     "id": "sample-cutoff-dial",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      3130.0,
      815.0,
      60.0,
      55.0
     ],
     "saved_attribute_attributes": {
      "activedialcolor": {
       "expression": "themecolor.live_macro_assignment"
      },
      "valueof": {
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_linknames": 1,
       "parameter_longname": "sample cutoff",
       "parameter_mmax": 1.0,
       "parameter_mmin": 0.0,
       "parameter_modmode": 0,
       "parameter_osc_name": "<default>",
       "parameter_shortname": "samp cut",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "sample_cutoff"
    }
   },
   {
    "box": {
     "id": "sample-cutoff-prepend",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3130.0,
      910.0,
      205.0,
      22.0
     ],
     "text": "prepend --sample_cutoff"
    }
   },
   {
    "box": {
     "id": "sample-cutoff-symbol",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3130.0,
      965.0,
      80.0,
      22.0
     ],
     "text": "tosymbol"
    }
   },
   {
    "box": {
     "id": "sample-cutoff-load",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3130.0,
      760.0,
      90.0,
      22.0
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "gen-preset-route",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "bang",
      "bang",
      "bang",
      "bang",
      ""
     ],
     "patching_rect": [
      1120.0,
      -15.0,
      420.0,
      22.0
     ],
     "text": "sel default small_variation medium_variation large_variation"
    }
   },
   {
    "box": {
     "id": "gen-preset-default-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1120.0,
      35.0,
      100.0,
      22.0
     ],
     "text": "7 3 0 0. 0"
    }
   },
   {
    "box": {
     "id": "gen-preset-small-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1260.0,
      35.0,
      100.0,
      22.0
     ],
     "text": "5 4 0 0. 0"
    }
   },
   {
    "box": {
     "id": "gen-preset-medium-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1400.0,
      35.0,
      100.0,
      22.0
     ],
     "text": "7 4 0 0. 0"
    }
   },
   {
    "box": {
     "id": "gen-preset-large-msg",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1540.0,
      35.0,
      120.0,
      22.0
     ],
     "text": "13 4 0 0.2 0"
    }
   },
   {
    "box": {
     "id": "gen-preset-unpack",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "int",
      "int",
      "int",
      "float",
      "int"
     ],
     "patching_rect": [
      1320.0,
      95.0,
      150.0,
      22.0
     ],
     "text": "unpack i i i f i"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "obj-24",
      6
     ],
     "midpoints": [
      2284.9397730826713,
      1194.0,
      2249.706355858399,
      1194.0
     ],
     "source": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-43",
      0
     ],
     "midpoints": [
      1826.3008095622063,
      1729.1087936758995,
      1735.4817361508885,
      1729.1087936758995,
      1735.4817361508885,
      629.90229359198,
      1644.6626627395706,
      629.90229359198
     ],
     "source": [
      "obj-100",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-88",
      1
     ],
     "midpoints": [
      1815.8008095622063,
      1722.0,
      1815.8008095622063,
      1722.0
     ],
     "source": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-109",
      0
     ],
     "midpoints": [
      2473.3818041085574,
      855.0,
      2473.3818041085574,
      855.0
     ],
     "source": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-59",
      1
     ],
     "midpoints": [
      2643.6731959862755,
      117.0,
      2938.6731959862755,
      117.0
     ],
     "order": 0,
     "source": [
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-64",
      0
     ],
     "midpoints": [
      2643.6731959862755,
      117.0,
      2643.6731959862755,
      117.0
     ],
     "order": 1,
     "source": [
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-29",
      0
     ],
     "midpoints": [
      3482.275962462059,
      918.0,
      3482.275962462059,
      918.0
     ],
     "source": [
      "obj-103",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-55",
      0
     ],
     "midpoints": [
      1415.0685202923773,
      -645.0,
      1415.0685202923773,
      -645.0
     ],
     "source": [
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-9",
      0
     ],
     "midpoints": [
      2175.7924294073755,
      921.0,
      2175.7924294073755,
      921.0
     ],
     "source": [
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-10",
      0
     ],
     "midpoints": [
      2284.9397730826713,
      921.0,
      2284.9397730826713,
      921.0
     ],
     "source": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-69",
      0
     ],
     "midpoints": [
      2663.0871167579667,
      795.0,
      2663.0871167579667,
      795.0
     ],
     "source": [
      "obj-172",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-107",
      0
     ],
     "midpoints": [
      2663.0871167579667,
      879.0,
      2663.0871167579667,
      879.0
     ],
     "source": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-69",
      0
     ],
     "midpoints": [
      2733.5,
      795.0,
      2663.0871167579667,
      795.0
     ],
     "order": 4,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-22",
      0
     ],
     "midpoints": [
      2663.0871167579667,
      921.0,
      2663.0871167579667,
      921.0
     ],
     "source": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-28",
      0
     ],
     "midpoints": [
      3259.0871167579667,
      921.0,
      3259.0871167579667,
      921.0
     ],
     "source": [
      "obj-108",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      0
     ],
     "midpoints": [
      2473.3818041085574,
      921.0,
      2473.3818041085574,
      921.0
     ],
     "source": [
      "obj-109",
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
     "midpoints": [
      3441.775962462059,
      843.0,
      3441.775962462059,
      843.0
     ],
     "source": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-67",
      0
     ],
     "midpoints": [
      3703.0871167579667,
      921.0,
      3703.0871167579667,
      921.0
     ],
     "source": [
      "obj-110",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-5",
      0
     ],
     "midpoints": [
      1265.5,
      924.0,
      1265.6626627395708,
      924.0
     ],
     "source": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-252",
      0
     ],
     "source": [
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-192",
      0
     ],
     "midpoints": [
      298.4965905849533,
      315.0,
      320.4965905849533,
      315.0
     ],
     "source": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-80",
      0
     ],
     "midpoints": [
      1733.9034086366805,
      2049.0,
      1733.9034086366805,
      2049.0
     ],
     "source": [
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-23",
      0
     ],
     "midpoints": [
      2848.5871167579658,
      924.0,
      2848.5871167579658,
      924.0
     ],
     "source": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      7
     ],
     "midpoints": [
      2473.3818041085574,
      1194.0,
      2455.566450970845,
      1194.0
     ],
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-220",
      0
     ],
     "midpoints": [
      1597.1976520866622,
      1497.0,
      1650.5,
      1497.0
     ],
     "source": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-110",
      0
     ],
     "midpoints": [
      3703.0871167579667,
      855.0,
      3703.0871167579667,
      855.0
     ],
     "source": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-117",
      0
     ],
     "midpoints": [
      1627.618419289589,
      2007.0,
      1733.9034086366805,
      2007.0
     ],
     "source": [
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-85",
      0
     ],
     "midpoints": [
      1597.1976520866622,
      1551.0,
      1597.1976520866622,
      1551.0
     ],
     "source": [
      "obj-124",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-293",
      0
     ],
     "source": [
      "obj-126",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-26",
      0
     ],
     "midpoints": [
      3059.5871167579658,
      924.0,
      3059.5871167579658,
      924.0
     ],
     "source": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-127",
      0
     ],
     "midpoints": [
      3059.5871167579658,
      834.0,
      3059.5871167579658,
      834.0
     ],
     "source": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-98",
      0
     ],
     "midpoints": [
      1915.4942058324814,
      1098.0,
      1907.7442058324814,
      1098.0
     ],
     "source": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-36",
      0
     ],
     "midpoints": [
      321.38551625162,
      483.0,
      339.4965905849533,
      483.0
     ],
     "order": 0,
     "source": [
      "obj-131",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-81",
      3
     ],
     "midpoints": [
      478.7188495849533,
      474.0,
      478.7188495849533,
      474.0
     ],
     "source": [
      "obj-131",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-81",
      2
     ],
     "midpoints": [
      400.0521829182867,
      483.0,
      423.0,
      483.0,
      423.0,
      534.0,
      400.22615171947575,
      534.0
     ],
     "source": [
      "obj-131",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-81",
      1
     ],
     "midpoints": [
      321.38551625162,
      483.0,
      315.0,
      483.0,
      315.0,
      534.0,
      321.7334538539982,
      534.0
     ],
     "order": 1,
     "source": [
      "obj-131",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-81",
      0
     ],
     "midpoints": [
      242.71884958495332,
      537.0,
      243.24075598852062,
      537.0
     ],
     "source": [
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      2
     ],
     "midpoints": [
      1305.2847967147827,
      1194.0,
      1426.2659754086153,
      1194.0
     ],
     "source": [
      "obj-132",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      0
     ],
     "midpoints": [
      1283.2847967147827,
      1194.0,
      1014.5457851837236,
      1194.0
     ],
     "source": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-42",
      0
     ],
     "midpoints": [
      1294.2847967147827,
      1005.0,
      1500.0,
      1005.0,
      1500.0,
      930.0,
      1523.6626627395708,
      930.0
     ],
     "source": [
      "obj-132",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-125",
      0
     ],
     "midpoints": [
      386.90414201222995,
      2595.0,
      386.7618096087914,
      2595.0
     ],
     "source": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      0
     ],
     "midpoints": [
      635.7442058324814,
      1194.0,
      1014.5457851837236,
      1194.0
     ],
     "source": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-140",
      1
     ],
     "midpoints": [
      1264.5,
      1686.0,
      1246.5,
      1686.0
     ],
     "source": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-31",
      0
     ],
     "midpoints": [
      1330.5,
      1686.0,
      1331.6626627395706,
      1686.0
     ],
     "source": [
      "obj-138",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-152",
      0
     ],
     "midpoints": [
      410.5,
      183.0,
      80.83402358495334,
      183.0
     ],
     "source": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-135",
      0
     ],
     "midpoints": [
      221.61874165278164,
      129.0,
      221.61874165278164,
      129.0
     ],
     "source": [
      "obj-148",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-111",
      0
     ],
     "midpoints": [
      626.8301475849535,
      276.0,
      626.8301475849535,
      276.0
     ],
     "source": [
      "obj-149",
      6
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-112",
      0
     ],
     "midpoints": [
      517.3856285849535,
      276.0,
      517.3856285849535,
      276.0
     ],
     "source": [
      "obj-149",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-116",
      0
     ],
     "midpoints": [
      298.4965905849533,
      276.0,
      298.4965905849533,
      276.0
     ],
     "source": [
      "obj-149",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-139",
      0
     ],
     "midpoints": [
      572.1078880849534,
      276.0,
      572.1078880849534,
      276.0
     ],
     "source": [
      "obj-149",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-141",
      0
     ],
     "midpoints": [
      462.6633690849534,
      276.0,
      462.66339958495337,
      276.0
     ],
     "source": [
      "obj-149",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-143",
      0
     ],
     "midpoints": [
      407.9411095849534,
      276.0,
      407.9411095849533,
      276.0
     ],
     "source": [
      "obj-149",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-144",
      0
     ],
     "midpoints": [
      353.2188500849534,
      276.0,
      353.2188495849533,
      276.0
     ],
     "source": [
      "obj-149",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-142",
      0
     ],
     "midpoints": [
      957.6661172740814,
      70.0,
      1010.0,
      70.0,
      1010.0,
      165.0,
      915.0,
      165.0,
      915.0,
      195.0,
      941.5719805359838,
      195.0
     ],
     "source": [
      "obj-15",
      8
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-185",
      0
     ],
     "midpoints": [
      636.8661172740814,
      -24.0,
      636.8661172740814,
      -24.0
     ],
     "source": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-187",
      0
     ],
     "midpoints": [
      676.9661172740814,
      39.0,
      738.0,
      39.0,
      738.0,
      90.0,
      683.8661172740814,
      90.0
     ],
     "source": [
      "obj-15",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-194",
      0
     ],
     "midpoints": [
      717.0661172740814,
      39.0,
      759.0,
      39.0,
      759.0,
      90.0,
      774.0,
      90.0,
      774.0,
      132.0,
      727.6187416527816,
      132.0
     ],
     "source": [
      "obj-15",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-196",
      0
     ],
     "midpoints": [
      757.1661172740814,
      90.0,
      807.0,
      90.0,
      807.0,
      135.0,
      813.0,
      135.0,
      813.0,
      165.0,
      773.6187416527816,
      165.0
     ],
     "source": [
      "obj-15",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-208",
      0
     ],
     "midpoints": [
      877.4661172740814,
      90.0,
      942.0,
      90.0,
      942.0,
      132.0,
      884.4125670000001,
      132.0
     ],
     "source": [
      "obj-15",
      6
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-217",
      0
     ],
     "midpoints": [
      917.5661172740813,
      79.0,
      998.0,
      79.0,
      998.0,
      162.0,
      928.4125670000001,
      162.0
     ],
     "source": [
      "obj-15",
      7
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-262",
      0
     ],
     "midpoints": [
      997.7661172740814,
      53.0,
      1083.0,
      53.0,
      1083.0,
      234.0,
      1017.5719805359838,
      234.0
     ],
     "source": [
      "obj-15",
      9
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-276",
      0
     ],
     "midpoints": [
      797.2661172740814,
      -24.0,
      783.8661172740814,
      -24.0
     ],
     "source": [
      "obj-15",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-54",
      0
     ],
     "midpoints": [
      837.3661172740814,
      9.0,
      867.0,
      9.0,
      867.0,
      99.0,
      830.5286842740815,
      99.0
     ],
     "source": [
      "obj-15",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-147",
      0
     ],
     "midpoints": [
      410.5,
      129.0,
      410.5,
      129.0
     ],
     "source": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      240.83402358495334,
      228.0,
      242.71884958495332,
      228.0
     ],
     "order": 1,
     "source": [
      "obj-152",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-149",
      0
     ],
     "midpoints": [
      240.83402358495334,
      237.0,
      298.4965905849533,
      237.0
     ],
     "order": 0,
     "source": [
      "obj-152",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-284",
      1
     ],
     "midpoints": [
      80.83402358495334,
      2370.0,
      223.4666768213425,
      2370.0
     ],
     "source": [
      "obj-152",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-157",
      0
     ],
     "midpoints": [
      1535.9146042910575,
      -402.0,
      1542.9146042910575,
      -402.0
     ],
     "source": [
      "obj-153",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-152",
      0
     ],
     "midpoints": [
      74.83402358495334,
      189.0,
      80.83402358495334,
      189.0
     ],
     "source": [
      "obj-155",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-152",
      0
     ],
     "midpoints": [
      132.6085203787003,
      189.0,
      80.83402358495334,
      189.0
     ],
     "source": [
      "obj-156",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-6",
      1
     ],
     "midpoints": [
      2135.9034086366805,
      2232.0,
      2135.9034086366805,
      2232.0
     ],
     "order": 0,
     "source": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-80",
      1
     ],
     "midpoints": [
      2135.9034086366805,
      2232.0,
      2112.0,
      2232.0,
      2112.0,
      2058.0,
      2073.0,
      2058.0,
      2073.0,
      2055.0,
      2062.9034086366805,
      2055.0
     ],
     "order": 1,
     "source": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-177",
      0
     ],
     "midpoints": [
      298.4965905849533,
      141.0,
      305.0,
      141.0
     ],
     "source": [
      "obj-163",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-104",
      0
     ],
     "midpoints": [
      1415.0685202923773,
      -699.0,
      1415.0685202923773,
      -699.0
     ],
     "source": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-168",
      0
     ],
     "midpoints": [
      3048.496590584953,
      -822.0,
      3046.5,
      -822.0
     ],
     "source": [
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-335",
      0
     ],
     "midpoints": [
      3046.5,
      -789.0,
      2857.4965905849535,
      -789.0
     ],
     "source": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-170",
      0
     ],
     "midpoints": [
      635.5,
      840.0,
      635.5,
      840.0
     ],
     "source": [
      "obj-169",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "midpoints": [
      35.69946793249812,
      -457.9965829989985,
      636.8661172740814,
      -457.9965829989985
     ],
     "source": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-79",
      0
     ],
     "midpoints": [
      635.5,
      876.0,
      635.7442058324814,
      876.0
     ],
     "source": [
      "obj-170",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-83",
      0
     ],
     "midpoints": [
      647.5,
      882.0,
      668.7442058324814,
      882.0
     ],
     "source": [
      "obj-170",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-65",
      0
     ],
     "midpoints": [
      1919.5598363229851,
      549.0,
      1925.0598363229851,
      549.0
     ],
     "source": [
      "obj-173",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-101",
      0
     ],
     "midpoints": [
      2492.0871167579667,
      795.0,
      2473.3818041085574,
      795.0
     ],
     "source": [
      "obj-174",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-65",
      0
     ],
     "midpoints": [
      1951.0598363229851,
      546.0,
      1926.0,
      546.0,
      1926.0,
      552.0,
      1925.0598363229851,
      552.0
     ],
     "source": [
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-65",
      0
     ],
     "midpoints": [
      1847.1523382067683,
      552.0,
      1925.0598363229851,
      552.0
     ],
     "source": [
      "obj-176",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-121",
      0
     ],
     "midpoints": [
      3703.0871167579667,
      780.0,
      3703.0871167579667,
      780.0
     ],
     "source": [
      "obj-179",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-21",
      0
     ],
     "midpoints": [
      2427.753282203438,
      -63.0,
      2427.753282203438,
      -63.0
     ],
     "source": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-70",
      0
     ],
     "midpoints": [
      3259.0871167579667,
      780.0,
      3259.0871167579667,
      780.0
     ],
     "source": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      1516.6626627395706,
      582.0,
      1516.6626627395706,
      582.0
     ],
     "source": [
      "obj-182",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-269",
      0
     ],
     "midpoints": [
      2311.0871167579667,
      795.0,
      2304.9397730826713,
      795.0
     ],
     "source": [
      "obj-184",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      14
     ],
     "midpoints": [
      3877.0871167579667,
      1194.0,
      3896.5871167579667,
      1194.0
     ],
     "source": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-60",
      1
     ],
     "midpoints": [
      2125.721486086662,
      693.0,
      2125.721486086662,
      693.0
     ],
     "source": [
      "obj-190",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-210",
      0
     ],
     "midpoints": [
      811.6187416527816,
      -363.0,
      811.6187416527816,
      -363.0
     ],
     "source": [
      "obj-191",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-201",
      0
     ],
     "midpoints": [
      320.4965905849533,
      348.0,
      320.4965905849533,
      348.0
     ],
     "source": [
      "obj-192",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-43",
      0
     ],
     "midpoints": [
      1516.6626627395706,
      627.0,
      1644.6626627395706,
      627.0
     ],
     "source": [
      "obj-195",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-155",
      0
     ],
     "midpoints": [
      52.5,
      30.0,
      30.0,
      30.0,
      30.0,
      117.0,
      74.83402358495334,
      117.0
     ],
     "source": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-156",
      0
     ],
     "midpoints": [
      121.33402358495334,
      126.0,
      132.6085203787003,
      126.0
     ],
     "source": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-148",
      0
     ],
     "midpoints": [
      202.61874165278164,
      93.0,
      221.61874165278164,
      93.0
     ],
     "source": [
      "obj-199",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-3",
      0
     ],
     "midpoints": [
      955.6626627395708,
      915.0,
      955.6626627395708,
      915.0
     ],
     "source": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-160",
      0
     ],
     "midpoints": [
      1826.0000000000002,
      177.0,
      1888.5,
      177.0
     ],
     "order": 0,
     "source": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-73",
      0
     ],
     "midpoints": [
      1826.0000000000002,
      219.0,
      1860.9397730826713,
      219.0
     ],
     "order": 1,
     "source": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      298.4965905849533,
      99.0,
      298.4965905849533,
      99.0
     ],
     "source": [
      "obj-200",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-202",
      0
     ],
     "midpoints": [
      320.4965905849533,
      393.0,
      320.4965905849533,
      393.0
     ],
     "source": [
      "obj-201",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-140",
      1
     ],
     "midpoints": [
      1142.0,
      1605.0,
      1242.0,
      1605.0,
      1242.0,
      1698.0,
      1246.5,
      1698.0
     ],
     "source": [
      "obj-203",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-294",
      1
     ],
     "source": [
      "obj-204",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-223",
      0
     ],
     "midpoints": [
      3134.5,
      -243.0,
      3087.0,
      -243.0,
      3087.0,
      -219.0,
      3086.5,
      -219.0
     ],
     "source": [
      "obj-205",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-211",
      0
     ],
     "midpoints": [
      -88.14410399999997,
      51.0,
      -88.14410399999997,
      51.0
     ],
     "source": [
      "obj-209",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-52",
      0
     ],
     "midpoints": [
      2427.753282203438,
      -21.0,
      2427.753282203438,
      -21.0
     ],
     "source": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-114",
      0
     ],
     "midpoints": [
      811.6187416527816,
      -321.0,
      756.0,
      -321.0,
      756.0,
      -315.0,
      755.6187416527816,
      -315.0
     ],
     "source": [
      "obj-210",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-212",
      0
     ],
     "midpoints": [
      -88.14410399999997,
      93.0,
      -88.14410399999997,
      93.0
     ],
     "source": [
      "obj-211",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-152",
      0
     ],
     "midpoints": [
      -88.14410399999997,
      129.0,
      51.0,
      129.0,
      51.0,
      189.0,
      80.83402358495334,
      189.0
     ],
     "source": [
      "obj-212",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-228",
      0
     ],
     "midpoints": [
      2309.5142370128688,
      -741.0,
      2322.0,
      -741.0,
      2322.0,
      -747.0,
      2325.6682933085544,
      -747.0
     ],
     "source": [
      "obj-213",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-97",
      0
     ],
     "midpoints": [
      1843.2442058324814,
      942.0,
      1907.7442058324814,
      942.0
     ],
     "source": [
      "obj-214",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-209",
      0
     ],
     "midpoints": [
      -88.14410399999997,
      6.0,
      -88.14410399999997,
      6.0
     ],
     "source": [
      "obj-215",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-114",
      0
     ],
     "midpoints": [
      649.6082160084115,
      -325.0,
      755.6187416527816,
      -325.0
     ],
     "order": 0,
     "source": [
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-247",
      0
     ],
     "order": 1,
     "source": [
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-81",
      0
     ],
     "midpoints": [
      604.6187416527816,
      483.0,
      243.24075598852062,
      483.0
     ],
     "source": [
      "obj-218",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-62",
      0
     ],
     "midpoints": [
      2153.0871167579667,
      795.0,
      2175.7924294073755,
      795.0
     ],
     "source": [
      "obj-219",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      8
     ],
     "midpoints": [
      2663.0871167579667,
      975.0,
      2661.4265460832908,
      975.0
     ],
     "source": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-124",
      0
     ],
     "midpoints": [
      1663.5,
      1539.0,
      1626.0,
      1539.0,
      1626.0,
      1509.0,
      1597.1976520866622,
      1509.0
     ],
     "order": 0,
     "source": [
      "obj-220",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-299",
      0
     ],
     "midpoints": [
      1663.5,
      1554.0,
      1228.5,
      1554.0
     ],
     "order": 1,
     "source": [
      "obj-220",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-37",
      0
     ],
     "midpoints": [
      1650.5,
      1545.0,
      1743.9126627395704,
      1545.0
     ],
     "source": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-335",
      0
     ],
     "midpoints": [
      2992.0,
      -852.0,
      2859.0,
      -852.0,
      2859.0,
      -450.0,
      2857.4965905849535,
      -450.0
     ],
     "source": [
      "obj-221",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-335",
      0
     ],
     "midpoints": [
      2880.980479169496,
      -852.0,
      2859.0,
      -852.0,
      2859.0,
      -450.0,
      2857.4965905849535,
      -450.0
     ],
     "source": [
      "obj-222",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-210",
      0
     ],
     "midpoints": [
      811.6187416527816,
      -423.0,
      811.6187416527816,
      -423.0
     ],
     "source": [
      "obj-224",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-54",
      0
     ],
     "midpoints": [
      841.6187416527816,
      90.0,
      830.5286842740815,
      90.0
     ],
     "source": [
      "obj-225",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-335",
      0
     ],
     "midpoints": [
      2751.980479169496,
      -450.0,
      2857.4965905849535,
      -450.0
     ],
     "source": [
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-101",
      0
     ],
     "midpoints": [
      2733.5,
      795.0,
      2473.3818041085574,
      795.0
     ],
     "order": 1,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-121",
      0
     ],
     "midpoints": [
      2733.5,
      720.0,
      3678.0,
      720.0,
      3678.0,
      795.0,
      3703.0871167579667,
      795.0
     ],
     "order": 0,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-269",
      0
     ],
     "midpoints": [
      2733.5,
      795.0,
      2304.9397730826713,
      795.0
     ],
     "order": 2,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-62",
      0
     ],
     "midpoints": [
      2733.5,
      795.0,
      2175.7924294073755,
      795.0
     ],
     "order": 3,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-278",
      0
     ],
     "midpoints": [
      2325.6682933085544,
      -714.0,
      2313.0,
      -714.0,
      2313.0,
      -702.0,
      2311.514237012869,
      -702.0
     ],
     "source": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      9
     ],
     "midpoints": [
      2848.5871167579658,
      1194.0,
      2867.2866411957366,
      1194.0
     ],
     "source": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-226",
      0
     ],
     "midpoints": [
      2751.980479169496,
      -846.0,
      2751.980479169496,
      -846.0
     ],
     "source": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "reset-auto-go-stop-msg",
      0
     ],
     "source": [
      "reset-auto-go-clear-r",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-232",
      0
     ],
     "source": [
      "reset-auto-go-stop-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-181",
      0
     ],
     "midpoints": [
      1965.5,
      1872.0,
      1973.463602900505,
      1872.0
     ],
     "source": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-32",
      0
     ],
     "midpoints": [
      1894.7442058324814,
      1428.0,
      1894.7442058324814,
      1428.0
     ],
     "source": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-244",
      0
     ],
     "midpoints": [
      755.6187416527816,
      -215.0,
      755.6187416527816,
      -215.0
     ],
     "source": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-365",
      0
     ],
     "midpoints": [
      788.6187416527816,
      -144.0,
      601.3301262349535,
      -144.0
     ],
     "source": [
      "obj-235",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-155",
      0
     ],
     "midpoints": [
      58.0,
      117.0,
      74.83402358495334,
      117.0
     ],
     "source": [
      "obj-236",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-214",
      0
     ],
     "midpoints": [
      1843.2442058324814,
      846.0,
      1843.2442058324814,
      846.0
     ],
     "source": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-222",
      0
     ],
     "midpoints": [
      2890.480479169496,
      -888.0,
      2880.980479169496,
      -888.0
     ],
     "source": [
      "obj-238",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-183",
      0
     ],
     "midpoints": [
      1894.7442058324814,
      1599.0,
      2014.775962462059,
      1599.0
     ],
     "order": 0,
     "source": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-27",
      0
     ],
     "midpoints": [
      1894.7442058324814,
      1599.0,
      1801.7367429634246,
      1599.0
     ],
     "order": 2,
     "source": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-37",
      0
     ],
     "midpoints": [
      1906.7442058324814,
      1566.0,
      1773.0,
      1566.0,
      1773.0,
      1551.0,
      1743.9126627395704,
      1551.0
     ],
     "source": [
      "obj-239",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "status-unloop-starting",
      0
     ],
     "midpoints": [
      1906.7442058324814,
      1566.0,
      1943.5,
      1566.0
     ],
     "source": [
      "obj-239",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-140",
      1
     ],
     "midpoints": [
      1943.5,
      1605.0,
      1246.5,
      1605.0
     ],
     "source": [
      "status-unloop-starting",
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
     "midpoints": [
      1894.7442058324814,
      1599.0,
      1841.7442058324814,
      1599.0
     ],
     "order": 1,
     "source": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-233",
      1
     ],
     "midpoints": [
      1014.5457851837236,
      1302.0,
      3512.9024361371994,
      1302.0
     ],
     "order": 0,
     "source": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-234",
      0
     ],
     "midpoints": [
      1014.5457851837236,
      1302.0,
      984.0,
      1302.0,
      984.0,
      1386.0,
      1894.7442058324814,
      1386.0
     ],
     "order": 1,
     "source": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      1940.0,
      1056.0,
      1915.4942058324814,
      1056.0
     ],
     "source": [
      "obj-240",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-14",
      0
     ],
     "source": [
      "obj-242",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-367",
      0
     ],
     "midpoints": [
      755.6187416527816,
      -183.0,
      755.6187416527816,
      -183.0
     ],
     "source": [
      "obj-244",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      768.6187416527816,
      -181.0,
      298.4965905849533,
      -181.0,
      298.4965905849533,
      116.0
     ],
     "source": [
      "obj-244",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-266",
      1
     ],
     "midpoints": [
      2017.7442058324814,
      255.0,
      1978.7954370527991,
      255.0
     ],
     "source": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-352",
      0
     ],
     "midpoints": [
      1623.4476520866624,
      219.0,
      1623.4476520866624,
      219.0
     ],
     "source": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-235",
      0
     ],
     "order": 1,
     "source": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-255",
      0
     ],
     "order": 0,
     "source": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-227",
      0
     ],
     "midpoints": [
      2733.5,
      543.0,
      2733.5,
      543.0
     ],
     "source": [
      "obj-254",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-246",
      0
     ],
     "midpoints": [
      1668.4476520866624,
      414.0,
      1677.4476520866622,
      414.0
     ],
     "source": [
      "obj-256",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-277",
      0
     ],
     "source": [
      "obj-258",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      10
     ],
     "midpoints": [
      3059.5871167579658,
      1194.0,
      3073.1467363081824,
      1194.0
     ],
     "source": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-251",
      0
     ],
     "midpoints": [
      1623.4476520866624,
      156.0,
      1623.4476520866624,
      156.0
     ],
     "source": [
      "obj-260",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-264",
      0
     ],
     "midpoints": [
      1757.4476520866622,
      360.0,
      1750.4476520866622,
      360.0
     ],
     "source": [
      "obj-261",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-293",
      0
     ],
     "source": [
      "obj-263",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-270",
      0
     ],
     "midpoints": [
      1750.4476520866622,
      414.0,
      1774.5,
      414.0
     ],
     "source": [
      "obj-264",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-66",
      1
     ],
     "midpoints": [
      2090.2442058324814,
      444.0,
      1971.0,
      444.0,
      1971.0,
      591.0,
      1984.356266895899,
      591.0
     ],
     "source": [
      "obj-265",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-66",
      1
     ],
     "midpoints": [
      1965.7954370527991,
      507.0,
      1971.0,
      507.0,
      1971.0,
      591.0,
      1984.356266895899,
      591.0
     ],
     "source": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-265",
      1
     ],
     "midpoints": [
      2131.2954370528,
      366.0,
      2103.2442058324814,
      366.0
     ],
     "source": [
      "obj-267",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-106",
      0
     ],
     "midpoints": [
      2304.9397730826713,
      879.0,
      2284.9397730826713,
      879.0
     ],
     "source": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-117",
      1
     ],
     "midpoints": [
      1801.7367429634246,
      1761.0,
      2358.9034086366805,
      1761.0
     ],
     "order": 0,
     "source": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-138",
      0
     ],
     "midpoints": [
      1801.7367429634246,
      1641.0,
      1264.5,
      1641.0
     ],
     "order": 1,
     "source": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-186",
      0
     ],
     "midpoints": [
      1815.7367429634246,
      1653.0,
      1854.2461742063674,
      1653.0
     ],
     "order": 1,
     "source": [
      "obj-27",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-56",
      0
     ],
     "midpoints": [
      1815.7367429634246,
      1650.0,
      1978.775962462059,
      1650.0
     ],
     "order": 0,
     "source": [
      "obj-27",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-74",
      0
     ],
     "midpoints": [
      1815.7367429634246,
      1641.0,
      1815.8008095622063,
      1641.0
     ],
     "order": 2,
     "source": [
      "obj-27",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-273",
      0
     ],
     "midpoints": [
      1988.5,
      936.0,
      1988.5,
      936.0
     ],
     "source": [
      "obj-271",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-213",
      0
     ],
     "midpoints": [
      2309.5142370128688,
      -786.0,
      2309.5142370128688,
      -786.0
     ],
     "source": [
      "obj-272",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-171",
      0
     ],
     "midpoints": [
      1988.5,
      981.0,
      2059.5,
      981.0
     ],
     "order": 0,
     "source": [
      "obj-273",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-97",
      0
     ],
     "midpoints": [
      1988.5,
      972.0,
      1941.0,
      972.0,
      1941.0,
      942.0,
      1907.7442058324814,
      942.0
     ],
     "order": 1,
     "source": [
      "obj-273",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-275",
      0
     ],
     "midpoints": [
      2189.514237012869,
      -765.0,
      2189.514237012869,
      -765.0
     ],
     "source": [
      "obj-274",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-259",
      0
     ],
     "midpoints": [
      2189.514237012869,
      -642.0,
      2189.514237012869,
      -642.0
     ],
     "source": [
      "obj-275",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-288",
      0
     ],
     "midpoints": [
      218.30451399087906,
      2190.0,
      218.30451399087906,
      2190.0
     ],
     "source": [
      "obj-277",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-259",
      1
     ],
     "midpoints": [
      2311.514237012869,
      -669.0,
      2304.514237012869,
      -669.0
     ],
     "source": [
      "obj-278",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      11
     ],
     "midpoints": [
      3259.0871167579667,
      1194.0,
      3279.0068314206287,
      1194.0
     ],
     "source": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-263",
      0
     ],
     "source": [
      "obj-281",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-133",
      0
     ],
     "midpoints": [
      111.4666768213425,
      2442.0,
      386.90414201222995,
      2442.0
     ],
     "source": [
      "obj-284",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-289",
      0
     ],
     "midpoints": [
      1714.4999999999995,
      -663.0,
      1705.5,
      -663.0
     ],
     "source": [
      "obj-285",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-293",
      0
     ],
     "source": [
      "obj-286",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-284",
      0
     ],
     "midpoints": [
      218.30451399087906,
      2370.0,
      111.4666768213425,
      2370.0
     ],
     "order": 2,
     "source": [
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-287",
      1
     ],
     "midpoints": [
      218.30451399087906,
      2232.0,
      300.61743837594986,
      2232.0
     ],
     "order": 0,
     "source": [
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-290",
      0
     ],
     "midpoints": [
      218.30451399087906,
      2361.0,
      274.05170928441623,
      2361.0
     ],
     "order": 1,
     "source": [
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-153",
      0
     ],
     "midpoints": [
      1705.5,
      -618.0,
      1414.9146042910575,
      -618.0
     ],
     "source": [
      "obj-289",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      12
     ],
     "midpoints": [
      3482.275962462059,
      1203.0,
      3484.8669265330745,
      1203.0
     ],
     "source": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-363",
      0
     ],
     "midpoints": [
      274.05170928441623,
      2454.0,
      116.19456874333957,
      2454.0
     ],
     "source": [
      "obj-290",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-293",
      0
     ],
     "source": [
      "obj-291",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-319",
      0
     ],
     "midpoints": [
      2030.8682526462662,
      -699.0,
      2000.468252789317,
      -699.0
     ],
     "source": [
      "obj-292",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-294",
      0
     ],
     "source": [
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-301",
      0
     ],
     "order": 1,
     "source": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-50",
      0
     ],
     "midpoints": [
      1611.4569070866619,
      2334.0,
      535.1714481661875,
      2334.0
     ],
     "order": 2,
     "source": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-6",
      0
     ],
     "order": 0,
     "source": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-277",
      0
     ],
     "source": [
      "obj-297",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-140",
      1
     ],
     "source": [
      "obj-299",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      1
     ],
     "midpoints": [
      955.6626627395708,
      1194.0,
      1220.4058802961695,
      1194.0
     ],
     "source": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-44",
      0
     ],
     "midpoints": [
      1894.7442058324814,
      1497.0,
      1894.7442058324814,
      1497.0
     ],
     "source": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-319",
      0
     ],
     "midpoints": [
      1967.4682527893165,
      -600.0,
      2000.468252789317,
      -600.0
     ],
     "source": [
      "obj-318",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-317",
      0
     ],
     "midpoints": [
      2108.468252789317,
      -519.0,
      2108.4239140812097,
      -519.0
     ],
     "source": [
      "obj-319",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-30",
      0
     ],
     "midpoints": [
      1894.7442058324814,
      1464.0,
      1894.7442058324814,
      1464.0
     ],
     "source": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-322",
      0
     ],
     "midpoints": [
      2608.9805788336685,
      -888.0,
      2608.9805788336685,
      -888.0
     ],
     "source": [
      "obj-321",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-323",
      0
     ],
     "midpoints": [
      2608.9805788336685,
      -831.0,
      2618.9805788336685,
      -831.0
     ],
     "source": [
      "obj-322",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-324",
      0
     ],
     "midpoints": [
      2618.9805788336685,
      -786.0,
      2623.9805788336685,
      -786.0
     ],
     "source": [
      "obj-323",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-335",
      0
     ],
     "midpoints": [
      2623.9805788336685,
      -453.0,
      2857.4965905849535,
      -453.0
     ],
     "source": [
      "obj-324",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-25",
      0
     ],
     "midpoints": [
      2857.4965905849535,
      -303.0,
      2863.5,
      -303.0
     ],
     "order": 0,
     "source": [
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-290",
      1
     ],
     "midpoints": [
      2857.4965905849535,
      974.073247424301,
      386.05170928441623,
      974.073247424301
     ],
     "order": 1,
     "source": [
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-337",
      0
     ],
     "midpoints": [
      2938.4965905849535,
      -378.0,
      3001.9804791694964,
      -378.0
     ],
     "source": [
      "obj-335",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-223",
      3
     ],
     "midpoints": [
      3237.9804791694964,
      -219.0,
      3264.25,
      -219.0
     ],
     "source": [
      "obj-337",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-223",
      2
     ],
     "midpoints": [
      3159.31381250283,
      -219.0,
      3205.0,
      -219.0
     ],
     "source": [
      "obj-337",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-223",
      1
     ],
     "midpoints": [
      3080.647145836163,
      -222.0,
      3145.75,
      -222.0
     ],
     "order": 0,
     "source": [
      "obj-337",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-223",
      0
     ],
     "midpoints": [
      3001.9804791694964,
      -222.0,
      3086.5,
      -222.0
     ],
     "source": [
      "obj-337",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-336",
      0
     ],
     "midpoints": [
      3080.647145836163,
      -348.0,
      3066.0,
      -348.0,
      3066.0,
      -312.0,
      3063.496590584953,
      -312.0
     ],
     "order": 1,
     "source": [
      "obj-337",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-129",
      0
     ],
     "midpoints": [
      3059.5871167579658,
      798.0,
      3059.5871167579658,
      798.0
     ],
     "source": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-222",
      0
     ],
     "midpoints": [
      2884.980479169496,
      -879.0,
      2880.980479169496,
      -879.0
     ],
     "source": [
      "obj-349",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-221",
      0
     ],
     "midpoints": [
      2986.5,
      -882.0,
      2992.0,
      -882.0
     ],
     "source": [
      "obj-350",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-230",
      0
     ],
     "midpoints": [
      2751.980479169496,
      -903.0,
      2751.980479169496,
      -903.0
     ],
     "source": [
      "obj-351",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-256",
      0
     ],
     "midpoints": [
      1668.4476520866624,
      312.0,
      1668.4476520866624,
      312.0
     ],
     "order": 1,
     "source": [
      "obj-353",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-261",
      0
     ],
     "midpoints": [
      1668.4476520866624,
      321.0,
      1743.0,
      321.0,
      1743.0,
      318.0,
      1757.4476520866622,
      318.0
     ],
     "order": 0,
     "source": [
      "obj-353",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-266",
      0
     ],
     "midpoints": [
      2001.244205832481,
      372.0,
      1965.7954370527991,
      372.0
     ],
     "order": 1,
     "source": [
      "obj-354",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-355",
      0
     ],
     "midpoints": [
      2001.244205832481,
      315.0,
      2090.2442058324814,
      315.0
     ],
     "order": 0,
     "source": [
      "obj-354",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-265",
      0
     ],
     "midpoints": [
      2090.2442058324814,
      357.0,
      2090.2442058324814,
      357.0
     ],
     "source": [
      "obj-355",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-356",
      0
     ],
     "midpoints": [
      116.19456874333957,
      2607.0,
      116.38933376336047,
      2607.0
     ],
     "source": [
      "obj-363",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "midpoints": [
      646.8301262349535,
      -117.0,
      636.8661172740814,
      -117.0
     ],
     "source": [
      "obj-364",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "midpoints": [
      601.3301262349535,
      -57.0,
      636.8661172740814,
      -57.0
     ],
     "source": [
      "obj-365",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "midpoints": [
      928.4125670000001,
      -80.0,
      636.8661172740814,
      -80.0
     ],
     "source": [
      "obj-366",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "midpoints": [
      755.6187416527816,
      -94.0,
      636.8661172740814,
      -94.0
     ],
     "source": [
      "obj-367",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-27",
      0
     ],
     "midpoints": [
      1743.9126627395704,
      1599.0,
      1801.7367429634246,
      1599.0
     ],
     "source": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-38",
      0
     ],
     "midpoints": [
      3880.587116757966,
      888.0,
      3877.0871167579667,
      888.0
     ],
     "source": [
      "obj-372",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-19",
      0
     ],
     "midpoints": [
      3877.0871167579667,
      921.0,
      3877.0871167579667,
      921.0
     ],
     "source": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-60",
      0
     ],
     "midpoints": [
      1750.4476520866622,
      702.0,
      1763.4476520866622,
      702.0
     ],
     "source": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      3
     ],
     "midpoints": [
      1523.6626627395708,
      1194.0,
      1632.1260705210614,
      1194.0
     ],
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-63",
      0
     ],
     "midpoints": [
      2666.6731959862755,
      0.0,
      2643.6731959862755,
      0.0
     ],
     "source": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-89",
      0
     ],
     "midpoints": [
      2678.6731959862755,
      0.0,
      2737.1731959862755,
      0.0
     ],
     "source": [
      "obj-40",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-292",
      0
     ],
     "midpoints": [
      2081.468252789317,
      -774.0,
      2030.8682526462662,
      -774.0
     ],
     "source": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-1",
      0
     ],
     "midpoints": [
      1523.6626627395708,
      984.0,
      1673.328434286026,
      984.0
     ],
     "order": 0,
     "source": [
      "obj-42",
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
     "midpoints": [
      1523.6626627395708,
      963.0,
      1523.6626627395708,
      963.0
     ],
     "order": 1,
     "source": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-39",
      0
     ],
     "midpoints": [
      1644.6626627395706,
      666.0,
      1746.0,
      666.0,
      1746.0,
      672.0,
      1750.4476520866622,
      672.0
     ],
     "order": 0,
     "source": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-99",
      0
     ],
     "midpoints": [
      1644.6626627395706,
      666.0,
      1644.6626627395706,
      666.0
     ],
     "order": 1,
     "source": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-239",
      0
     ],
     "midpoints": [
      1894.7442058324814,
      1533.0,
      1894.7442058324814,
      1533.0
     ],
     "source": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-372",
      0
     ],
     "midpoints": [
      3921.5,
      819.0,
      3906.0,
      819.0,
      3906.0,
      822.0,
      3880.587116757966,
      822.0
     ],
     "source": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-43",
      0
     ],
     "midpoints": [
      1644.6626627395706,
      618.0,
      1644.6626627395706,
      618.0
     ],
     "source": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-153",
      0
     ],
     "midpoints": [
      1555.503409415047,
      -411.0,
      1416.0,
      -411.0,
      1416.0,
      -543.0,
      1414.9146042910575,
      -543.0
     ],
     "source": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-132",
      0
     ],
     "midpoints": [
      1265.6626627395708,
      972.0,
      1283.2847967147827,
      972.0
     ],
     "source": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-42",
      3
     ],
     "midpoints": [
      1699.1626627395708,
      918.0,
      1699.1626627395708,
      918.0
     ],
     "source": [
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-153",
      0
     ],
     "midpoints": [
      1415.0685202923773,
      -591.0,
      1414.9146042910575,
      -591.0
     ],
     "source": [
      "obj-55",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-152",
      0
     ],
     "midpoints": [
      -26.64409875479123,
      -330.44530457206145,
      80.83402358495334,
      -330.44530457206145
     ],
     "order": 1,
     "source": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-335",
      0
     ],
     "midpoints": [
      -26.64409875479123,
      -655.8382902370205,
      2857.4965905849535,
      -655.8382902370205
     ],
     "order": 0,
     "source": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-126",
      0
     ],
     "midpoints": [
      1734.9034086366805,
      2262.0,
      1466.0,
      2262.0,
      1466.0,
      2177.0,
      1532.6626627395706,
      2177.0
     ],
     "order": 2,
     "source": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-178",
      0
     ],
     "midpoints": [
      1734.9034086366805,
      2292.0,
      1873.463602900505,
      2292.0
     ],
     "order": 0,
     "source": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-45",
      0
     ],
     "midpoints": [
      1734.9034086366805,
      2262.0,
      1734.9034086366805,
      2262.0
     ],
     "order": 1,
     "source": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-113",
      0
     ],
     "midpoints": [
      1763.4476520866622,
      834.0,
      1416.0,
      834.0,
      1416.0,
      882.0,
      1265.5,
      882.0
     ],
     "source": [
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-40",
      0
     ],
     "midpoints": [
      2663.6731959862755,
      -54.0,
      2666.6731959862755,
      -54.0
     ],
     "source": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-105",
      0
     ],
     "midpoints": [
      2175.7924294073755,
      855.0,
      2175.7924294073755,
      855.0
     ],
     "source": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-102",
      0
     ],
     "midpoints": [
      2643.6731959862755,
      39.0,
      2643.6731959862755,
      39.0
     ],
     "source": [
      "obj-63",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-66",
      0
     ],
     "midpoints": [
      1925.0598363229851,
      591.0,
      1971.356266895899,
      591.0
     ],
     "source": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-175",
      0
     ],
     "midpoints": [
      1971.356266895899,
      630.0,
      1947.0,
      630.0,
      1947.0,
      591.0,
      1971.0,
      591.0,
      1971.0,
      516.0,
      1951.0598363229851,
      516.0
     ],
     "order": 1,
     "source": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-248",
      0
     ],
     "midpoints": [
      1971.356266895899,
      630.0,
      2010.0,
      630.0,
      2010.0,
      618.0,
      2035.1000301837921,
      618.0
     ],
     "order": 0,
     "source": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-39",
      1
     ],
     "midpoints": [
      1971.356266895899,
      675.0,
      1773.0,
      675.0,
      1773.0,
      672.0,
      1763.4476520866622,
      672.0
     ],
     "order": 2,
     "source": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      13
     ],
     "midpoints": [
      3703.0871167579667,
      1194.0,
      3690.7270216455204,
      1194.0
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
      "obj-24",
      4
     ],
     "midpoints": [
      1907.7442058324814,
      1194.0,
      1837.9861656335072,
      1194.0
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
      "obj-108",
      0
     ],
     "midpoints": [
      3259.0871167579667,
      855.0,
      3259.0871167579667,
      855.0
     ],
     "source": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-104",
      2
     ],
     "midpoints": [
      1537.5034094150467,
      -699.0,
      1485.0,
      -699.0,
      1485.0,
      -675.0,
      1486.0685202923773,
      -675.0
     ],
     "source": [
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-42",
      0
     ],
     "midpoints": [
      1523.6626627395708,
      918.0,
      1523.6626627395708,
      918.0
     ],
     "source": [
      "obj-72",
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
     "midpoints": [
      1872.9397730826713,
      414.0,
      1919.5598363229851,
      414.0
     ],
     "source": [
      "obj-73",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-256",
      1
     ],
     "midpoints": [
      1860.9397730826713,
      360.0,
      1681.4476520866624,
      360.0
     ],
     "order": 1,
     "source": [
      "obj-73",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-264",
      1
     ],
     "midpoints": [
      1860.9397730826713,
      360.0,
      1763.4476520866622,
      360.0
     ],
     "order": 0,
     "source": [
      "obj-73",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-100",
      0
     ],
     "midpoints": [
      1815.8008095622063,
      1686.0,
      1815.8008095622063,
      1686.0
     ],
     "source": [
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-77",
      0
     ],
     "midpoints": [
      1847.1523382067683,
      42.0,
      1826.0000000000002,
      42.0
     ],
     "source": [
      "obj-75",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-77",
      3
     ],
     "midpoints": [
      1995.5000000000002,
      42.0,
      1995.5000000000002,
      42.0
     ],
     "source": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-189",
      0
     ],
     "midpoints": [
      1826.0000000000002,
      93.0,
      1912.3825675894664,
      93.0
     ],
     "order": 0,
     "source": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-20",
      0
     ],
     "midpoints": [
      1826.0000000000002,
      84.0,
      1826.0000000000002,
      84.0
     ],
     "order": 1,
     "source": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-134",
      0
     ],
     "midpoints": [
      635.7442058324814,
      999.0,
      635.7442058324814,
      999.0
     ],
     "source": [
      "obj-78",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-78",
      0
     ],
     "midpoints": [
      635.7442058324814,
      954.0,
      635.7442058324814,
      954.0
     ],
     "source": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-103",
      0
     ],
     "midpoints": [
      3482.275962462059,
      879.0,
      3482.275962462059,
      879.0
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
      "obj-291",
      0
     ],
     "order": 1,
     "source": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-6",
      0
     ],
     "midpoints": [
      1733.9034086366805,
      2229.0,
      1734.9034086366805,
      2229.0
     ],
     "order": 0,
     "source": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-169",
      0
     ],
     "midpoints": [
      635.7442058324814,
      792.0,
      635.5,
      792.0
     ],
     "source": [
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-79",
      0
     ],
     "midpoints": [
      668.7442058324814,
      915.0,
      635.7442058324814,
      915.0
     ],
     "source": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-210",
      0
     ],
     "midpoints": [
      811.6187416527816,
      -393.0,
      811.6187416527816,
      -393.0
     ],
     "source": [
      "obj-84",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-88",
      0
     ],
     "midpoints": [
      1597.1976520866622,
      1761.0,
      1802.8008095622063,
      1761.0
     ],
     "source": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-232",
      0
     ],
     "midpoints": [
      1802.8008095622063,
      1815.0,
      1965.5,
      1815.0
     ],
     "order": 0,
     "source": [
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-96",
      0
     ],
     "midpoints": [
      1802.8008095622063,
      1800.0,
      1802.8008095622063,
      1800.0
     ],
     "order": 1,
     "source": [
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-102",
      0
     ],
     "midpoints": [
      2737.1731959862755,
      81.0,
      2643.6731959862755,
      81.0
     ],
     "source": [
      "obj-89",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      5
     ],
     "midpoints": [
      2175.7924294073755,
      1194.0,
      2043.846260745953,
      1194.0
     ],
     "source": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-4",
      0
     ],
     "midpoints": [
      1523.6626627395708,
      1026.0,
      1523.6626627395708,
      1026.0
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
      "obj-14",
      0
     ],
     "midpoints": [
      1826.4959366173018,
      -72.0,
      1826.2809259643934,
      -72.0
     ],
     "source": [
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-240",
      0
     ],
     "midpoints": [
      1919.7442058324814,
      1011.0,
      1940.0,
      1011.0
     ],
     "source": [
      "obj-97",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-240",
      0
     ],
     "midpoints": [
      1907.7442058324814,
      1011.0,
      1940.0,
      1011.0
     ],
     "source": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-7",
      0
     ],
     "midpoints": [
      1907.7442058324814,
      1140.0,
      1907.7442058324814,
      1140.0
     ],
     "source": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-recv",
      0
     ],
     "destination": [
      "motion-osc-parse",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-parse",
      0
     ],
     "destination": [
      "motion-osc-route-motion",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-motion",
      0
     ],
     "destination": [
      "motion-osc-route-controls",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-motion",
      1
     ],
     "destination": [
      "motion-osc-print",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      0
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      1
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      2
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      3
     ],
     "destination": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      4
     ],
     "destination": [
      "motion-osc-unloop-sel",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-unloop-sel",
      0
     ],
     "destination": [
      "motion-osc-unloop-speedlim",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-unloop-speedlim",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      5
     ],
     "destination": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      6
     ],
     "destination": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-recv",
      0
     ],
     "destination": [
      "motion-osc-route-direct",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      0
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      1
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      2
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      3
     ],
     "destination": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      4
     ],
     "destination": [
      "motion-osc-unloop-sel",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      5
     ],
     "destination": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      6
     ],
     "destination": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      0
     ],
     "destination": [
      "motion-record-event-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-record-event-msg",
      0
     ],
     "destination": [
      "motion-max-event-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "motion-unloop-trigger",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-unloop-trigger",
      2
     ],
     "destination": [
      "obj-365",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-unloop-trigger",
      1
     ],
     "destination": [
      "motion-unloop-event-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-unloop-event-msg",
      0
     ],
     "destination": [
      "motion-max-event-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-unloop-trigger",
      0
     ],
     "destination": [
      "motion-unloop-delay",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-unloop-delay",
      0
     ],
     "destination": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-unloop-delay",
      0
     ],
     "destination": [
      "obj-94",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-224",
      0
     ],
     "destination": [
      "motion-record-zero-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      0
     ],
     "destination": [
      "motion-record-zero-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
      0
     ],
     "destination": [
      "motion-record-zero-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-record-zero-msg",
      0
     ],
     "destination": [
      "motion-max-event-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-inputgain-db-dial",
      0
     ],
     "destination": [
      "motion-inputgain-db-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-filtercutoff-dial",
      0
     ],
     "destination": [
      "motion-filtercutoff-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-filterq-dial",
      0
     ],
     "destination": [
      "motion-filterq-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-drive-dial",
      0
     ],
     "destination": [
      "motion-drive-send",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      8
     ],
     "destination": [
      "motion-inputgain-db-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      9
     ],
     "destination": [
      "motion-filtercutoff-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      10
     ],
     "destination": [
      "motion-filterq-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      11
     ],
     "destination": [
      "motion-drive-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      12
     ],
     "destination": [
      "motion-osc-unpack-gain",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-controls",
      13
     ],
     "destination": [
      "motion-osc-print",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      8
     ],
     "destination": [
      "motion-inputgain-db-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      9
     ],
     "destination": [
      "motion-filtercutoff-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      10
     ],
     "destination": [
      "motion-filterq-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      11
     ],
     "destination": [
      "motion-drive-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      12
     ],
     "destination": [
      "motion-osc-unpack-gain",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-route-direct",
      13
     ],
     "destination": [
      "motion-osc-print",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "motion-osc-unpack-gain",
      1
     ],
     "destination": [
      "motion-inputgain-db-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "comp-loadbang",
      0
     ],
     "destination": [
      "comp-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "comp-dial",
      0
     ],
     "destination": [
      "comp-prepend",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "comp-prepend",
      0
     ],
     "destination": [
      "comp-symbol",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "comp-symbol",
      0
     ],
     "destination": [
      "obj-24",
      15
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "top-p-load",
      0
     ],
     "destination": [
      "top-p-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "top-p-dial",
      0
     ],
     "destination": [
      "top-p-prepend",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "top-p-prepend",
      0
     ],
     "destination": [
      "top-p-symbol",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "top-p-symbol",
      0
     ],
     "destination": [
      "obj-24",
      16
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "pitch-shift-load",
      0
     ],
     "destination": [
      "pitch-shift-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "pitch-shift-dial",
      0
     ],
     "destination": [
      "pitch-shift-prepend",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "pitch-shift-prepend",
      0
     ],
     "destination": [
      "pitch-shift-symbol",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "pitch-shift-symbol",
      0
     ],
     "destination": [
      "obj-24",
      17
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "sample-cutoff-load",
      0
     ],
     "destination": [
      "sample-cutoff-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "sample-cutoff-dial",
      0
     ],
     "destination": [
      "sample-cutoff-prepend",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "sample-cutoff-prepend",
      0
     ],
     "destination": [
      "sample-cutoff-symbol",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "sample-cutoff-symbol",
      0
     ],
     "destination": [
      "obj-24",
      18
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      10
     ],
     "destination": [
      "comp-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      11
     ],
     "destination": [
      "pitch-shift-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      12
     ],
     "destination": [
      "top-p-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      13
     ],
     "destination": [
      "sample-cutoff-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      14
     ],
     "destination": [
      "gen-preset-route",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-route",
      0
     ],
     "destination": [
      "gen-preset-default-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-route",
      1
     ],
     "destination": [
      "gen-preset-small-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-route",
      2
     ],
     "destination": [
      "gen-preset-medium-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-route",
      3
     ],
     "destination": [
      "gen-preset-large-msg",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-default-msg",
      0
     ],
     "destination": [
      "gen-preset-unpack",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-small-msg",
      0
     ],
     "destination": [
      "gen-preset-unpack",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-medium-msg",
      0
     ],
     "destination": [
      "gen-preset-unpack",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-large-msg",
      0
     ],
     "destination": [
      "gen-preset-unpack",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-unpack",
      0
     ],
     "destination": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-unpack",
      1
     ],
     "destination": [
      "comp-dial",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-unpack",
      2
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-unpack",
      3
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "gen-preset-unpack",
      4
     ],
     "destination": [
      "obj-69",
      0
     ]
    }
   }
  ],
  "originid": "pat-237",
  "styles": [
   {
    "name": "MP-M4L",
    "default": {
     "accentcolor": [
      0.411764705882353,
      0.411764705882353,
      0.411764705882353,
      1.0
     ],
     "bgcolor": [
      0.098039215686275,
      0.098039215686275,
      0.098039215686275,
      1.0
     ],
     "bgfillcolor": {
      "color": [
       0.266666666666667,
       0.266666666666667,
       0.266666666666667,
       1.0
      ],
      "color1": [
       0.376470588235294,
       0.384313725490196,
       0.4,
       1.0
      ],
      "color2": [
       0.290196078431373,
       0.309803921568627,
       0.301960784313725,
       1.0
      ],
      "dynamiccolor": [
       0.266666666666667,
       0.266666666666667,
       0.266666666666667,
       1.0,
       "live_contrast_frame",
       1,
       0.266666666666667,
       0.266666666666667,
       0.266666666666667,
       1.0,
       "Control Border"
      ],
      "type": "color"
     },
     "color": [
      0.333333333333333,
      0.870588235294118,
      0.964705882352941,
      1.0
     ],
     "editing_bgcolor": [
      0.56078431372549,
      0.56078431372549,
      0.56078431372549,
      1.0
     ],
     "elementcolor": [
      0.313725490196078,
      0.313725490196078,
      0.313725490196078,
      1.0
     ],
     "locked_bgcolor": [
      0.56078431372549,
      0.56078431372549,
      0.56078431372549,
      1.0
     ],
     "patchlinecolor": [
      0.313725490196078,
      0.313725490196078,
      0.313725490196078,
      1.0
     ],
     "selectioncolor": [
      1.0,
      0.694117647058824,
      0.0,
      1.0
     ],
     "stripecolor": [
      0.313725490196078,
      0.313725490196078,
      0.313725490196078,
      1.0
     ],
     "textcolor": [
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
  "parameters": {
   "top-p-dial": [
    "top p",
    "top p",
    0
   ],
   "parameter_overrides": {
    "top-p-dial": {
     "parameter_initial": 0.0,
     "parameter_longname": "top p",
     "parameter_range": [
      0.0,
      1.0
     ],
     "parameter_shortname": "top p"
    },
    "pitch-shift-dial": {
     "parameter_initial": 0,
     "parameter_longname": "pitch shift",
     "parameter_range": [
      -12,
      12
     ],
     "parameter_shortname": "pitch"
    },
    "sample-cutoff-dial": {
     "parameter_initial": 1.0,
     "parameter_longname": "sample cutoff",
     "parameter_range": [
      0.0,
      1.0
     ],
     "parameter_shortname": "samp cut"
    }
   },
   "pitch-shift-dial": [
    "pitch shift",
    "pitch",
    0
   ],
   "sample-cutoff-dial": [
    "sample cutoff",
    "samp cut",
    0
   ]
  }
 }
}
