{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "anims_moveidle",
  "autoRecord": true,
  "backdropHeight": 160,
  "backdropImageOpacity": 0.5,
  "backdropImagePath": "",
  "backdropWidth": 80,
  "backdropXOffset": 0.0,
  "backdropYOffset": 0.0,
  "events": {
    "resourceType": "KeyframeStore<MessageEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "eventStubScript": {
    "name": "animationScript",
    "path": "scripts/animationScript/animationScript.yy",
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
  "length": 120.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "parent": {
    "name": "anims",
    "path": "folders/Sequences/anims.yy",
  },
  "playback": 1,
  "playbackSpeed": 60.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": true,
  "spriteId": null,
  "timeUnits": 1,
  "tracks": [
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"skull","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"head","path":"sprites/head/head.yy",},},},"Disabled":false,"id":"7efa69d4-79df-4bec-803a-4407b02e42d3","IsCreationKey":false,"Key":-37.0,"Length":206.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294068375,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"cd477263-f261-42ae-998c-419918912f55","IsCreationKey":true,"Key":53.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.0,"tv0":0.0,"tv1":0.008892639,"x":0.0,"y":-3.0,},
                            {"th0":-0.20021527,"th1":0.12388757,"tv0":-0.008242249,"tv1":0.0051000714,"x":0.20021527,"y":-4.0,},
                            {"th0":-0.04874134,"th1":0.026806355,"tv0":-0.20616293,"tv1":-0.0002578646,"x":0.4456794,"y":-3.0,},
                            {"th0":-0.089624345,"th1":0.19527382,"tv0":-0.014346302,"tv1":0.011662602,"x":0.6676265,"y":-2.0,},
                            {"th0":0.0,"th1":0.0,"tv0":0.021569002,"tv1":-0.016781956,"x":0.9075738,"y":-3.0,},
                            {"th0":-0.0022135973,"th1":0.0,"tv0":-0.009781539,"tv1":0.0,"x":1.0,"y":-3.0,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.08483158,"tv0":0.0,"tv1":0.011676788,"x":0.0,"y":-28.0,},
                            {"th0":-0.11252832,"th1":0.16116063,"tv0":-0.0066156243,"tv1":0.009474754,"x":0.15252523,"y":-27.0,},
                            {"th0":-0.09035859,"th1":0.18998846,"tv0":0.0049949163,"tv1":-0.010502338,"x":0.38406265,"y":-28.0,},
                            {"th0":-0.120957926,"th1":0.15141028,"tv0":-0.005426015,"tv1":0.0067920685,"x":0.6184909,"y":-27.0,},
                            {"th0":-0.10195857,"th1":0.015417041,"tv0":0.0009870529,"tv1":-0.00014927637,"x":0.84117395,"y":-28.0,},
                            {"th0":-0.0153846145,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":-28.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.0,"tv0":0.0,"tv1":0.008892639,"x":0.0,"y":-3.0,},
                            {"th0":-0.20021527,"th1":0.12388757,"tv0":-0.008242249,"tv1":0.0051000714,"x":0.20021527,"y":-4.0,},
                            {"th0":-0.04874134,"th1":0.026806355,"tv0":-0.20616293,"tv1":-0.0002578646,"x":0.4456794,"y":-3.0,},
                            {"th0":-0.089624345,"th1":0.19527382,"tv0":-0.014346302,"tv1":0.011662602,"x":0.6676265,"y":-2.0,},
                            {"th0":0.0,"th1":0.0,"tv0":0.021569002,"tv1":-0.016781956,"x":0.9075738,"y":-3.0,},
                            {"th0":-0.0022135973,"th1":0.0,"tv0":-0.009781539,"tv1":0.0,"x":1.0,"y":-3.0,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.08483158,"tv0":0.0,"tv1":0.011676788,"x":0.0,"y":-28.0,},
                            {"th0":-0.11252832,"th1":0.16116063,"tv0":-0.0066156243,"tv1":0.009474754,"x":0.15252523,"y":-27.0,},
                            {"th0":-0.09035859,"th1":0.18998846,"tv0":0.0049949163,"tv1":-0.010502338,"x":0.38406265,"y":-28.0,},
                            {"th0":-0.120957926,"th1":0.15141028,"tv0":-0.005426015,"tv1":0.0067920685,"x":0.6184909,"y":-27.0,},
                            {"th0":-0.10195857,"th1":0.015417041,"tv0":0.0009870529,"tv1":-0.00014927637,"x":0.84117395,"y":-28.0,},
                            {"th0":-0.0153846145,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":-28.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"e9e169b3-e5be-4a2f-a418-dcce018bbc15","IsCreationKey":false,"Key":0.0,"Length":130.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"ff088dc9-ed23-4208-b91a-d899447334e8","IsCreationKey":false,"Key":-70.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"d88a6372-dfe6-44e0-98cd-7fc1981dfbbc","IsCreationKey":true,"Key":-70.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"chest","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"body","path":"sprites/body/body.yy",},},},"Disabled":false,"id":"3ef14ada-c8be-4847-8ed5-1429467f7432","IsCreationKey":false,"Key":0.0,"Length":180.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294068375,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"67fec8a5-583b-47e2-9b5b-a25d63667371","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"25e77f60-afd2-4197-9491-56ba1c1b7d8a","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"d631f1c1-08b2-41b2-abb3-5b1ed471f9c5","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.0,"tv0":0.0,"tv1":0.008892639,"x":0.0,"y":0.5,},
                            {"th0":-0.20021527,"th1":0.12388757,"tv0":-0.008242249,"tv1":0.0051000714,"x":0.20021527,"y":-0.5,},
                            {"th0":-0.082829714,"th1":0.026806355,"tv0":-0.0034966534,"tv1":-0.0002578646,"x":0.4456794,"y":0.0,},
                            {"th0":-0.089624345,"th1":0.19527382,"tv0":-0.014346302,"tv1":0.011662602,"x":0.6676265,"y":1.0,},
                            {"th0":-0.0,"th1":0.0,"tv0":0.021569002,"tv1":-0.016781956,"x":0.9075738,"y":0.5,},
                            {"th0":-0.0022135973,"th1":0.0,"tv0":-0.009781539,"tv1":0.0,"x":1.0,"y":0.5,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.08483158,"tv0":0.0,"tv1":0.011676788,"x":0.0,"y":6.0,},
                            {"th0":-0.11252832,"th1":0.16116063,"tv0":-0.0066156243,"tv1":0.009474754,"x":0.15252523,"y":7.0,},
                            {"th0":-0.09035859,"th1":0.18998846,"tv0":0.0049949163,"tv1":-0.010502338,"x":0.38406265,"y":6.0,},
                            {"th0":-0.120957926,"th1":0.15141028,"tv0":-0.005426015,"tv1":0.0067920685,"x":0.6184909,"y":7.0,},
                            {"th0":-0.10195857,"th1":0.015417041,"tv0":0.0009870529,"tv1":-0.00014927637,"x":0.84117395,"y":6.0,},
                            {"th0":-0.0153846145,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":6.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.0,"tv0":0.0,"tv1":0.008892639,"x":0.0,"y":0.5,},
                            {"th0":-0.20021527,"th1":0.12388757,"tv0":-0.008242249,"tv1":0.0051000714,"x":0.20021527,"y":-0.5,},
                            {"th0":-0.082829714,"th1":0.026806355,"tv0":-0.0034966534,"tv1":-0.0002578646,"x":0.4456794,"y":0.0,},
                            {"th0":-0.089624345,"th1":0.19527382,"tv0":-0.014346302,"tv1":0.011662602,"x":0.6676265,"y":1.0,},
                            {"th0":0.0,"th1":0.0,"tv0":0.021569002,"tv1":-0.016781956,"x":0.9075738,"y":0.5,},
                            {"th0":-0.0022135973,"th1":0.0,"tv0":-0.009781539,"tv1":0.0,"x":1.0,"y":0.5,},
                          ],"visible":true,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.08483158,"tv0":0.0,"tv1":0.011676788,"x":0.0,"y":6.0,},
                            {"th0":-0.11252832,"th1":0.16116063,"tv0":-0.0066156243,"tv1":0.009474754,"x":0.15252523,"y":7.0,},
                            {"th0":-0.09035859,"th1":0.18998846,"tv0":0.0049949163,"tv1":-0.010502338,"x":0.38406265,"y":6.0,},
                            {"th0":-0.120957926,"th1":0.15141028,"tv0":-0.005426015,"tv1":0.0067920685,"x":0.6184909,"y":7.0,},
                            {"th0":-0.10195857,"th1":0.015417041,"tv0":0.0009870529,"tv1":-0.00014927637,"x":0.84117395,"y":6.0,},
                            {"th0":-0.0153846145,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":6.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"7a3e73f3-8c85-4559-bb5e-274106a774af","IsCreationKey":false,"Key":0.0,"Length":130.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"angle","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.0,"tv0":0.0,"tv1":0.08366994,"x":0.0,"y":0.0,},
                            {"th0":-0.22843517,"th1":0.25793064,"tv0":-0.0015657097,"tv1":0.0017678738,"x":0.22843517,"y":0.6,},
                            {"th0":-0.015476455,"th1":0.019713819,"tv0":0.20144814,"tv1":-0.25660345,"x":0.5398548,"y":-0.0147044305,},
                            {"th0":-0.09049558,"th1":0.09929329,"tv0":0.00064384186,"tv1":-0.00070643425,"x":0.7066675,"y":-0.6,},
                            {"th0":-0.025495827,"th1":0.0014036918,"tv0":-0.2217998,"tv1":0.012211356,"x":0.9273626,"y":0.0,},
                            {"th0":0.0,"th1":0.0,"tv0":-0.000118718046,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"7b30a565-5e91-4fb7-bf35-878870ec58c7","IsCreationKey":false,"Key":0.0,"Length":120.0,"Stretch":true,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"dc93acc5-55a0-4615-be1b-4af42d37ae28","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068375,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"feet","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"feet","path":"sprites/feet/feet.yy",},},},"Disabled":false,"id":"60705cd2-937e-4876-8e1d-f126ecc116a1","IsCreationKey":false,"Key":0.0,"Length":173.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4293347570,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"625dc1e0-1432-474c-b124-a67125b20712","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293347570,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":79.0,},},"Disabled":false,"id":"e5e72ad3-872f-4682-b498-dbc72a03138e","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293347570,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"b68a515d-297c-496a-a46b-9728836d722a","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293347570,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"f15935e0-4907-4863-9006-879230e21511","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293347570,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"legs","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"legs","path":"sprites/legs/legs.yy",},},},"Disabled":false,"id":"3236f71c-e070-4b6f-96b8-b3a120f624ba","IsCreationKey":false,"Key":0.0,"Length":180.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4278190319,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"image_index","builtinName":18,"events":[],"inheritsTrackColour":true,"interpolation":0,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"fd304e20-7a25-4efe-bf7a-dcd541076e98","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4278190319,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"fd36dbca-0aa2-47f2-81bd-0469ce63b8ea","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4278190319,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":79.0,},},"Disabled":false,"id":"d1f5ce4e-1b75-478c-a02e-0924eb818553","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4278190319,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"angle","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.0,"tv0":0.0,"tv1":0.08366994,"x":0.0,"y":0.0,},
                            {"th0":-0.22843517,"th1":0.25793064,"tv0":-0.0015657097,"tv1":0.0017678738,"x":0.22843517,"y":0.79529554,},
                            {"th0":-0.015476455,"th1":0.019713819,"tv0":0.20144814,"tv1":-0.25660345,"x":0.5398548,"y":-0.0147044305,},
                            {"th0":-0.09049558,"th1":0.09929329,"tv0":0.00064384186,"tv1":-0.00070643425,"x":0.7066675,"y":-1.005,},
                            {"th0":-0.025495827,"th1":0.0014036918,"tv0":-0.2217998,"tv1":0.012211356,"x":0.9273626,"y":0.0,},
                            {"th0":0.0,"th1":0.0,"tv0":-0.000118718046,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"6c730ea5-7dae-45ed-a348-1dba5a53533f","IsCreationKey":false,"Key":0.0,"Length":120.0,"Stretch":true,},
            ],},"modifiers":[],"trackColour":4278190319,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"Scale","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.05,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                            {"th0":-0.05,"th1":0.05,"tv0":0.0,"tv1":0.0,"x":0.25,"y":1.0,},
                            {"th0":-0.05,"th1":0.05,"tv0":0.0,"tv1":0.0,"x":0.5,"y":1.0,},
                            {"th0":-0.05,"th1":0.05000043,"tv0":0.0,"tv1":0.0,"x":0.75,"y":1.0,},
                            {"th0":-0.05000043,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0000021,"y":1.0,},
                            {"th0":1.0,"th1":-1.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":false,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.116891444,"tv0":0.0,"tv1":-0.0024999976,"x":0.0,"y":1.0,},
                            {"th0":-0.07871848,"th1":0.081419766,"tv0":0.001249969,"tv1":0.0,"x":0.16513294,"y":0.97,},
                            {"th0":-0.17463532,"th1":0.15554774,"tv0":-0.0025001764,"tv1":-0.002499938,"x":0.4146467,"y":1.0,},
                            {"th0":-0.07208979,"th1":0.090936065,"tv0":0.0003319149,"tv1":-0.00041866302,"x":0.6660233,"y":0.97,},
                            {"th0":-0.10473001,"th1":0.024589065,"tv0":-0.00062072277,"tv1":0.00014573657,"x":0.91686,"y":1.0,},
                            {"th0":-0.031205773,"th1":0.0,"tv0":0.00048553944,"tv1":0.0,"x":1.0,"y":1.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":{"resourceType":"GMAnimCurve","resourceVersion":"1.2","name":"","channels":[
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"x","colour":4290799884,"points":[
                            {"th0":0.0,"th1":0.05,"tv0":0.0,"tv1":0.0,"x":0.0,"y":1.0,},
                            {"th0":-0.05,"th1":0.05,"tv0":0.0,"tv1":0.0,"x":0.25,"y":1.0,},
                            {"th0":-0.05,"th1":0.05,"tv0":0.0,"tv1":0.0,"x":0.5,"y":1.0,},
                            {"th0":-0.05,"th1":0.05000043,"tv0":0.0,"tv1":0.0,"x":0.75,"y":1.0,},
                            {"th0":-0.05000043,"th1":0.0,"tv0":0.0,"tv1":0.0,"x":1.0000021,"y":1.0,},
                            {"th0":1.0,"th1":-1.0,"tv0":0.0,"tv1":0.0,"x":1.0,"y":0.0,},
                          ],"visible":false,},
                        {"resourceType":"GMAnimCurveChannel","resourceVersion":"1.0","name":"y","colour":4281083598,"points":[
                            {"th0":0.0,"th1":0.116891444,"tv0":0.0,"tv1":-0.0024999976,"x":0.0,"y":1.0,},
                            {"th0":-0.07871848,"th1":0.081419766,"tv0":0.001249969,"tv1":0.0,"x":0.16513294,"y":0.97,},
                            {"th0":-0.17463532,"th1":0.15554774,"tv0":-0.0025001764,"tv1":-0.002499938,"x":0.4146467,"y":1.0,},
                            {"th0":-0.07208979,"th1":0.090936065,"tv0":0.0003319149,"tv1":-0.00041866302,"x":0.6660233,"y":0.97,},
                            {"th0":-0.10473001,"th1":0.024589065,"tv0":-0.00062072277,"tv1":0.00014573657,"x":0.91686,"y":1.0,},
                            {"th0":-0.031205773,"th1":0.0,"tv0":0.00048553944,"tv1":0.0,"x":1.0,"y":1.0,},
                          ],"visible":true,},
                      ],"function":2,},"RealValue":0.0,},},"Disabled":false,"id":"913cbc5e-bfa2-467d-8f78-511468101a3e","IsCreationKey":false,"Key":0.0,"Length":120.0,"Stretch":true,},
            ],},"modifiers":[],"trackColour":4278190319,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMClipMaskTrack","resourceVersion":"1.0","name":"variable","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[
        {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
      ],"trackColour":4278190319,"tracks":[
        {"resourceType":"GMClipMask_Mask","resourceVersion":"1.0","name":"mask","builtinName":12,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4278190319,"tracks":[
            {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sp_particle","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sp_particle","path":"sprites/sp_particle/sp_particle.yy",},},},"Disabled":false,"id":"990ff36c-2b58-4a7d-bdac-42d5c562b052","IsCreationKey":false,"Key":0.0,"Length":154.0,"Stretch":false,},
                ],},"modifiers":[
                {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
              ],"trackColour":4278190319,"tracks":[
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"6c5a52fa-fa7b-4588-b7f1-43d27fb0f7e5","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[
                    {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
                  ],"trackColour":4278190319,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-18.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":23.0,},},"Disabled":false,"id":"4cc01b54-fb03-4448-af3b-6c4ad6269216","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[
                    {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
                  ],"trackColour":4278190319,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"135b59b9-b0ac-4c6d-80bf-8c673f342521","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[
                    {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
                  ],"trackColour":4278190319,"tracks":[],"traits":0,},
                {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                      {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":37.910088,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":52.000008,},},"Disabled":false,"id":"6ee8ae6a-b24a-4f95-aed4-902e56e05e88","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                    ],},"modifiers":[
                    {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
                  ],"trackColour":4278190319,"tracks":[],"traits":0,},
              ],"traits":0,},
          ],"traits":0,},
        {"resourceType":"GMClipMask_Subject","resourceVersion":"1.0","name":"subject","builtinName":13,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[
            {"resourceType":"InvisibleModifier","resourceVersion":"1.0",},
          ],"trackColour":4278190319,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 119.9999,
  },
  "volume": 1.0,
  "xorigin": 0,
  "yorigin": 0,
}