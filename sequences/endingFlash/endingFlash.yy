{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "endingFlash",
  "autoRecord": true,
  "backdropHeight": 480,
  "backdropImageOpacity": 0.5,
  "backdropImagePath": "",
  "backdropWidth": 640,
  "backdropXOffset": 0.0,
  "backdropYOffset": 0.0,
  "events": {
    "resourceType": "KeyframeStore<MessageEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "eventStubScript": {
    "name": "endingFlash_Events38",
    "path": "scripts/endingFlash_Events38/endingFlash_Events38.yy",
  },
  "eventToFunction": {
    "0": "",
    "1": "",
    "2": "",
    "3": "seqPausing",
    "4": "",
    "5": "",
    "6": "",
  },
  "length": 300.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "endingFlash_atk21Data",
            ],},},"Disabled":false,"id":"d93c8de2-42c3-425a-adda-cb03b671b5e0","IsCreationKey":false,"Key":214.0,"Length":1.0,"Stretch":false,},
    ],
  },
  "parent": {
    "name": "Sequences",
    "path": "folders/Sequences.yy",
  },
  "playback": 0,
  "playbackSpeed": 60.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": false,
  "spriteId": null,
  "timeUnits": 1,
  "tracks": [
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"battlepixel","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"battlepixel","path":"sprites/battlepixel/battlepixel.yy",},},},"Disabled":false,"id":"630c8d67-3c34-4feb-bf39-d0d1c9f165da","IsCreationKey":false,"Key":0.0,"Length":300.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4282970705,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":0,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"Colour Multiply","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"alpha","colour":4294967295,"points":[
                            {"th0":0.0,"th1":0.2489054,"tv0":0.0,"tv1":7.163315,"x":0.0,"y":1.0,},
                            {"th0":-0.14289981,"th1":0.1322388,"tv0":-4.4233236,"tv1":4.0933228,"x":0.7148657,"y":261.97266,},
                            {"th0":-0.057026863,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"red","colour":4278190335,"points":[
                            {"th0":0.0,"th1":0.08000005,"tv0":0.0,"tv1":0.0,"x":0.0,"y":255.0,},
                            {"th0":-0.08000005,"th1":0.07933339,"tv0":0.0,"tv1":0.0,"x":0.40000024,"y":255.0,},
                            {"th0":-0.07933339,"th1":0.04066657,"tv0":0.0,"tv1":0.0,"x":0.79666716,"y":255.0,},
                            {"th0":-0.04066657,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":255.0,},
                          ],"visible":false,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"green","colour":4278255360,"points":[
                            {"th0":0.0,"th1":0.08000005,"tv0":0.0,"tv1":0.0,"x":0.0,"y":255.0,},
                            {"th0":-0.08000005,"th1":0.07933339,"tv0":0.0,"tv1":0.0,"x":0.40000024,"y":255.0,},
                            {"th0":-0.07933339,"th1":0.04066657,"tv0":0.0,"tv1":0.0,"x":0.79666716,"y":255.0,},
                            {"th0":-0.04066657,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":255.0,},
                          ],"visible":false,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"blue","colour":4294901760,"points":[
                            {"th0":0.0,"th1":0.08000005,"tv0":0.0,"tv1":0.0,"x":0.0,"y":255.0,},
                            {"th0":-0.08000005,"th1":0.07933339,"tv0":0.0,"tv1":0.0,"x":0.40000024,"y":255.0,},
                            {"th0":-0.07933339,"th1":0.04066657,"tv0":0.0,"tv1":0.0,"x":0.79666716,"y":255.0,},
                            {"th0":-0.04066657,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":255.0,},
                          ],"visible":false,},
                      ],"function":2,},},},"Disabled":false,"id":"4784c112-e8c5-4fc0-a98b-651be5216947","IsCreationKey":false,"Key":0.0,"Length":299.99982,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970705,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"f4c1fb42-5957-407e-b84f-7f810b3462db","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970705,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"715e1a25-eb90-4e13-a2ea-a367cc0e20b4","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970705,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"032dd6af-c604-45a9-8c31-817cb768fa6c","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970705,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":320.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":240.0,},},"Disabled":false,"id":"51b6c6ca-1a84-4bb4-aa6b-9be65e85389b","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970705,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 299.9999,
  },
  "volume": 1.0,
  "xorigin": 0,
  "yorigin": 0,
}