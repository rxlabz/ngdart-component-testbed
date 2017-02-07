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