{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "corridorSequence",
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
    "name": "corridorSequence_Events34",
    "path": "scripts/corridorSequence_Events34/corridorSequence_Events34.yy",
  },
  "eventToFunction": {
    "0": "corridorSequence_event_create",
    "1": "corridorSequence_event_destroy",
    "2": "corridorSequence_event_clean_up",
    "3": "corridorSequence_event_step",
    "4": "corridorSequence_event_step_begin",
    "5": "corridorSequence_event_step_end",
    "6": "corridorSequence_event_async_system",
  },
  "length": 960.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "camChange",
            ],},},"Disabled":false,"id":"dd7ec9e1-d111-492d-a37f-ae4c8ed2e52a","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "camChange",
            ],},},"Disabled":false,"id":"9ace9332-1043-4309-8dc7-36f64ca5c837","IsCreationKey":false,"Key":488.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "camChange",
            ],},},"Disabled":false,"id":"37589d9a-6df3-484b-9238-8df9ab112688","IsCreationKey":false,"Key":603.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "camChange",
            ],},},"Disabled":false,"id":"9472033e-0cb9-40fa-bd65-d19e5c9bfade","IsCreationKey":false,"Key":719.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "camChange",
            ],},},"Disabled":false,"id":"be5afe7e-af59-4a1c-b9df-b5c3e9670135","IsCreationKey":false,"Key":826.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "killDialogue",
            ],},},"Disabled":false,"id":"1b32c756-ea32-4b82-bf96-4f3ab02d31d1","IsCreationKey":false,"Key":932.0,"Length":1.0,"Stretch":false,},
    ],
  },
  "parent": {
    "name": "Sequences",
    "path": "folders/Sequences.yy",
  },
  "playback": 1,
  "playbackSpeed": 60.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": false,
  "spriteId": null,
  "timeUnits": 1,
  "tracks": [
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"kazyCorridor","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"kazyCorridor","path":"sprites/kazyCorridor/kazyCorridor.yy",},},},"Disabled":false,"id":"dfc740de-95b3-4f73-8e3a-06909027cad7","IsCreationKey":false,"Key":0.0,"Length":959.0,"Stretch":false,},
        ],},"modifiers":[
        {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
      ],"trackColour":4294068400,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"3873a7be-317d-4770-954a-5933dc63a3ee","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4294068400,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":172.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-16.0,},},"Disabled":false,"id":"4cd7bcff-b26b-4dc1-bc9f-819c15ce21b3","IsCreationKey":false,"Key":103.13103,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4294068400,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"356be88f-9212-4d08-85b1-efb8810298b2","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4294068400,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.5,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.5,},},"Disabled":false,"id":"e64504d4-4ce0-4eb9-b759-cf527c2c7cb9","IsCreationKey":false,"Key":103.13103,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4294068400,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMAudioTrack","resourceVersion":"1.1","name":"battlesong","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AudioKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AudioKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AudioKeyframe","resourceVersion":"1.0","Id":{"name":"kazyFightSong","path":"sounds/kazyFightSong/kazyFightSong.yy",},"Mode":0,},},"Disabled":false,"id":"bb83c763-d782-4b33-ab50-6e337db3e765","IsCreationKey":false,"Key":0.0,"Length":971.0,"Stretch":false,},
        ],},"modifiers":[
        {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
      ],"trackColour":4294096712,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"797ff325-3787-4ff3-984e-ef6c53a65174","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4294096712,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"07141bff-5695-4521-82a8-5c1b9f5bf2f3","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4294096712,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 959.9999,
  },
  "volume": 1.0,
  "xorigin": -172,
  "yorigin": -1,
}