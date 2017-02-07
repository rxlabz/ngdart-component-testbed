# angular_test example


## pubspec.yml

```yam
transformers:
  - angular2/transform/codegen
  - angular2/transform/reflection_remover:
      $include:
        - test/compo_test.dart
  - test/pub_serve:
      $include: test/**_test.dart
```

## compo_test.dart

```dart
@Tags(const ['aot'])
@TestOn('browser')

import 'package:angular2/core.dart';
import 'package:angular2/src/core/reflection/reflection_capabilities.dart';

import 'package:angular2/src/modules/testing/lib/testing.dart';
import 'package:test/test.dart';
import 'package:xplor_ng_test_bed/compo/compo.dart';

@AngularEntrypoint()
void main(){
  reflector.reflectionCapabilities = new ReflectionCapabilities();

  tearDown(disposeAnyRunningTest);

  group('test my compo',(){
      test('1er test compo titre',() async {
          final testBed = new NgTestBed<Compo>();
          final textFxtr = await testBed.create(onLoad:(c){
            c.title = "Yo";
          });

          expect( textFxtr.element.innerHtml, contains('Yo') );
      });

      test('2nd test compo titre',() async {
          final testBed = new NgTestBed<Compo>();
          final textFxtr = await testBed.create(onLoad:(c){
            c.title = "Coucou";
          });

          expect( textFxtr.element.innerHtml, contains('Coucou') );
      });
  });
}
```

## compo_test.html

```html
<html>

<body>
<script type="application/dart" src="compo_test.dart"></script>
<link rel="x-dart-test" href="compo_test.dart">
<script src="packages/test/dart.js"></script>
</body>

</html>
```

## testing

```bash
pub run angular_test

# ou 

pub serve # => localhost:8081/path_test.html 

```