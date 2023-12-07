{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "battleIntro",
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
    "name": "battleIntro_Events37",
    "path": "scripts/battleIntro_Events37/battleIntro_Events37.yy",
  },
  "eventToFunction": {
    "0": "battleIntro_SetVariables",
    "1": "",
    "2": "",
    "3": "battleIntro_pauseFunction",
    "4": "",
    "5": "",
    "6": "",
  },
  "length": 480.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "battleIntro_FadeBattleBox",
            ],},},"Disabled":false,"id":"314eae9b-5f4b-4954-a0d0-cce11ed2df80","IsCreationKey":false,"Key":117.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "battleIntro_FadeSprite",
            ],},},"Disabled":false,"id":"239eb84c-6b68-4937-a756-dc6db47c74a6","IsCreationKey":false,"Key":238.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "battleIntro_introDialogue",
            ],},},"Disabled":false,"id":"aa217207-0a72-40a4-afd4-4d6ea5321155","IsCreationKey":false,"Key":359.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "TransitionFinished",
            ],},},"Disabled":false,"id":"b29f60e9-cd98-4e77-8f85-f55d0fbca410","IsCreationKey":false,"Key":474.0,"Length":1.0,"Stretch":false,},
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
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"soul","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"soul","path":"sprites/soul/soul.yy",},},},"Disabled":false,"id":"0042085c-7319-4768-9389-82fb9541d33f","IsCreationKey":false,"Key":0.0,"Length":52.0,"Stretch":false,},
        ],},"modifiers":[
        {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
      ],"trackColour":4284019272,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"e6b2ad42-a1ea-44b4-a71d-6d71ffbc6d86","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4284019272,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":-0.1,"th1":0.17069097,"tv0":0.0,"tv1":99.818726,"x":0.0,"y":-191.0,},
                            {"th0":-0.43200225,"th1":0.1,"tv0":-0.3284089,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":false,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.36370397,"tv0":0.0,"tv1":45.388283,"x":0.0,"y":55.0,},
                            {"th0":-0.059794545,"th1":0.0,"tv0":0.07833862,"tv1":0.0,"x":1.0,"y":100.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":-0.1,"th1":0.17069097,"tv0":0.0,"tv1":99.818726,"x":0.0,"y":-191.0,},
                            {"th0":-0.43200225,"th1":0.1,"tv0":-0.3284089,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":false,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.36370397,"tv0":0.0,"tv1":45.388283,"x":0.0,"y":55.0,},
                            {"th0":-0.059794545,"th1":0.0,"tv0":0.07833862,"tv1":0.0,"x":1.0,"y":100.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"3850f661-433a-43ef-8f67-c033ac3d2362","IsCreationKey":false,"Key":0.0,"Length":52.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4284019272,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"e275eccd-455d-48c7-b308-82436e2531ee","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4284019272,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"59f1e5cf-4e7f-4fba-8b7a-3d5f66c05a04","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4284019272,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGroupTrack","resourceVersion":"1.0","name":"Group","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[],"trackColour":4282970804,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"b08f6e69-73d1-4bcf-bcc8-8646deb7aeed","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970804,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"02392849-b517-4197-b561-5a3604cb5fdd","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970804,"tracks":[],"traits":0,},
        {"resourceType":"GMGroupTrack","resourceVersion":"1.0","name":"Group","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[],"trackColour":4282970828,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":78.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":211.0,},},"Disabled":false,"id":"5c8ea636-5dfa-4edb-b17a-78c95a0f87d7","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"c1cb7484-1e92-4be9-bafd-b229bdcdc990","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_ITEM","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_ITEM","path":"sprites/sp_ITEM/sp_ITEM.yy",},},},"Disabled":false,"id":"b730c1a2-a840-44bc-961a-c5a844eb440e","IsCreationKey":false,"Key":0.0,"Length":486.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282970828,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"6e949796-0f2d-48a3-b9f6-2714d3aaf0ee","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":1593835519,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"a54fe033-685e-4e4b-95da-3902184efeff","IsCreationKey":false,"Key":50.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"b887cb27-1cc5-4146-87db-afedd483eedc","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"aaf8fa5e-5608-4d03-8f1f-63f21735a679","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"549d9d51-5c90-4245-b2b6-4b6e4a11f2b6","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"75ce8864-c388-45f0-b2a3-6fc9b4fc1b42","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"7baf66b0-9fa8-46ea-89c3-e33c8056931a","IsCreationKey":false,"Key":0.0,"Length":480.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
              ],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_ITEM","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_ITEM","path":"sprites/sp_ITEM/sp_ITEM.yy",},},},"Disabled":false,"id":"e62185b5-f75e-426b-81d2-d5322be85ec4","IsCreationKey":false,"Key":0.0,"Length":486.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282970828,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"3672f54a-df85-40d4-a3ea-7d20d8aab5df","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"e86cf47c-e0ab-4000-b4f9-df3c807ee67d","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"ff5331e4-2105-4684-ab5b-7694faaa31aa","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"7f783484-108b-4c5f-b3c1-c7b22152c2f2","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"36b3c5ef-b402-44b3-81fe-832526c13980","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"89b0ee3f-5a73-4770-b90b-8d062b4264df","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282970828,"tracks":[],"traits":0,},
              ],"traits":0,},
          ],"traits":0,},
        {"resourceType":"GMGroupTrack","resourceVersion":"1.0","name":"Group","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[],"trackColour":4290048584,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-235.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":211.0,},},"Disabled":false,"id":"75e0cc43-e591-4c07-8cb9-d79c478bbb76","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"8d307f15-ac56-457e-9f1b-25c08c8fb273","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_FIGHT","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_FIGHT","path":"sprites/sp_FIGHT/sp_FIGHT.yy",},},},"Disabled":false,"id":"df909623-1d0c-46b0-b9f7-0b77cc0e7fe7","IsCreationKey":false,"Key":0.0,"Length":484.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4290048584,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"74545840-45ea-41d6-a8f6-505c39cbd21d","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":1593835519,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"ac275c3e-90b2-4ea4-ab1f-8057e393675e","IsCreationKey":false,"Key":50.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"9928f857-075d-495e-91f6-97029217d310","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"e38e2d77-4870-4bc3-ba0d-0e323b71ab43","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"3f5df51a-4728-42e7-adb5-f9bf374cb96e","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"7e4c0ce6-bdb7-44a7-9f7c-f25e5e02f616","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"4538b97d-e14a-453b-8c3d-309f5dc7d666","IsCreationKey":false,"Key":0.0,"Length":480.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
              ],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_FIGHT","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_FIGHT","path":"sprites/sp_FIGHT/sp_FIGHT.yy",},},},"Disabled":false,"id":"555ef2d7-5d8f-42c8-85d9-085f5c7f1a81","IsCreationKey":false,"Key":0.0,"Length":484.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4290048584,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"72eeae0c-d44c-4de8-b141-ab8e2b85ded4","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"6f86886c-dce2-4e4c-8a6a-2b0aad03c304","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"13402640-483f-4068-8304-c3da55ae33dc","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"d70e02eb-04aa-411b-97d0-e4c60afed218","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"8cfa8d3f-a315-48aa-b66c-194ab35afd20","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"703c0cdb-7b63-4919-9652-310cefc524f4","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4290048584,"tracks":[],"traits":0,},
              ],"traits":0,},
          ],"traits":0,},
        {"resourceType":"GMGroupTrack","resourceVersion":"1.0","name":"Group","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[],"trackColour":4282942450,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-82.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":211.0,},},"Disabled":false,"id":"afaa3a1d-672d-468b-8113-783ad114bc3b","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"67435a15-d50f-4009-b251-51fa7f57ff74","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_ACT","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_ACT","path":"sprites/sp_ACT/sp_ACT.yy",},},},"Disabled":false,"id":"cbe2b1bd-01f6-47f9-8fd8-3a62fa972b2d","IsCreationKey":false,"Key":0.0,"Length":487.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282942450,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"9cbc5538-4b1b-48a0-9eff-d9a8160aa271","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":1593835519,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"513ea699-849b-4a6c-8189-a8947a87aad0","IsCreationKey":false,"Key":50.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"8eead72a-ca7a-4dbe-ac6b-b05b701fe796","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"2392e3ac-1edf-4c21-90e2-56602e66ecc6","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"c8ad8f51-61b8-46ad-8900-223c9f9992ba","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"39ddc449-3040-47af-89e7-55ace2596aab","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"94e93817-9254-44c1-b768-b539dfea0f3f","IsCreationKey":false,"Key":0.0,"Length":480.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
              ],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_ACT","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_ACT","path":"sprites/sp_ACT/sp_ACT.yy",},},},"Disabled":false,"id":"5cd05dd3-91cd-476c-85ae-47223f15c82a","IsCreationKey":false,"Key":0.0,"Length":487.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282942450,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"7aeadd6b-4a90-4962-a4e3-dc6d528d26a8","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"8bfbcd1c-f215-4819-bbd1-ba31714da244","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"7bacb9d9-7411-4c8a-9463-667e8c375727","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"2c417b00-4032-4abe-9dfd-5999ee89cd9a","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"715af054-9929-4a68-8b8c-9af9e16f4b6a","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"2f7e127b-34f9-462f-8869-29fc82ea42be","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4282942450,"tracks":[],"traits":0,},
              ],"traits":0,},
          ],"traits":0,},
        {"resourceType":"GMGroupTrack","resourceVersion":"1.0","name":"Group","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[],"trackColour":4294068454,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":232.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":211.0,},},"Disabled":false,"id":"58780e0b-53a3-4f92-a9ca-8613964db2ab","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"33c4e2e9-3d2a-494a-8344-e399c00f1ad5","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_MERCY","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_MERCY","path":"sprites/sp_MERCY/sp_MERCY.yy",},},},"Disabled":false,"id":"e6851eaf-0006-47ae-8fec-d2821b43a984","IsCreationKey":false,"Key":0.0,"Length":485.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4294068454,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"396cc8ee-6df6-4721-b04a-3f5e3efc6360","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":1593835519,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"dee0d85a-86fe-446b-9243-1b373866ab9a","IsCreationKey":false,"Key":50.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"b2e7dc7a-872a-4011-8650-0b548929c2ef","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"34f778ca-212f-4229-90e9-4b9e24f33614","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"d1462f0e-5a84-43e3-bbfe-4e88e82bad15","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"d76f9822-3cbb-47d5-99f0-88f978522666","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"Scale","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"Scale","channels":[
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                                {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                                    {"th0":0.0,"th1":0.042083334,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                                    {"th0":-0.042083334,"th1":0.15791667,"tv0":0.0,"tv1":0.0,"x":0.21041666,"y":1.25,},
                                    {"th0":-0.15791667,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":1.25,},
                                  ],"visible":true,},
                              ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"8bf4a146-8e86-4f33-a545-332a9fe911ad","IsCreationKey":false,"Key":0.0,"Length":480.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
              ],"traits":0,},
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_MERCY","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_MERCY","path":"sprites/sp_MERCY/sp_MERCY.yy",},},},"Disabled":false,"id":"a690c57e-5e4b-497a-bd80-a24a49399ff8","IsCreationKey":false,"Key":0.0,"Length":485.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4294068454,"tracks":[
                {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"d8cb8f81-cf10-437a-b034-4d3b6dac6fd1","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                      {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"abd91f67-b718-42f2-a7fb-dad84f52acc5","IsCreationKey":false,"Key":101.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"6f781aad-59a9-4ee2-9904-8b71e4376a25","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"6899f87d-dabd-4556-bd3f-3f1cf301ca0d","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"6339e860-1a94-49e4-9070-f8d5598484e2","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"f321d2c1-1193-41ce-a62b-de37c4878404","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[],"trackColour":4294068454,"tracks":[],"traits":0,},
              ],"traits":0,},
          ],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 479.9999,
  },
  "volume": 1.0,
  "xorigin": 0,
  "yorigin": 0,
}