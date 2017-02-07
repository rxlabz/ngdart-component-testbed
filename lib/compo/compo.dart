import 'package:angular2/core.dart';

@Component(
    selector: 'compo',
    templateUrl: 'compo.html',
    styleUrls: const['compo.css']
)
class Compo {

  @Input() String title;

  Compo(){}

}