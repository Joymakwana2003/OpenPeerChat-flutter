import 'package:rsa_encrypt/rsa_encrypt.dart';
import 'package:pointycastle/api.dart' as crypto;

//Future to hold our KeyPair
late Future<crypto.AsymmetricKeyPair> futureKeyPair;

//to store the KeyPair once we get data from our future
late crypto.AsymmetricKeyPair keyPair;

Future<crypto.AsymmetricKeyPair<crypto.PublicKey, crypto.PrivateKey>> getKeyPair()
{
  var helper = RsaKeyHelper();
  return helper.computeRSAKeyPair(helper.getSecureRandom());
}

void createPair (){
  futureKeyPair=getKeyPair();
  futureKeyPair.then((value) => keyPair=value);

}