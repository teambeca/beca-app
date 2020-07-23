import 'package:beca_app/model/built_auth.dart';
import 'package:beca_app/model/built_sign_in.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltAuth, BuiltSignIn])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
