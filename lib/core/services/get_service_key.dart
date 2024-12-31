import 'package:googleapis_auth/auth_io.dart';

class GetServerKey{
Future<String> getServerKeyToken()async{
final scopes = [
  "https://www.googleapis.com/auth/userinfo.email",
  "https://www.googleapis.com/auth/firebase.database",
  "https://www.googleapis.com/auth/firebase.messaging"
];

    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson({
        "type": "service_account",
        "project_id": "ecommerce-5ae51",
        "private_key_id": "5dc28d1bd311a116c324655fe7c7a78616f65c9f",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDUEzTG17rUQKjY\nWrcUtXAgjTyf/d+ehm4Z2pwrgH7mq8VOtQUnWXjYIA+zUrtdLWgfsyRedMjLrJh9\nhiXAQ0suC53AWrR3CV+4BxLSexFWaccd/D3yaoJ8Z7d/DzI9yih8/Mo/fCqjq7AL\nV3kDvSqaIxGTKJSH16YJyJGHQ+2qhqV/awLA/l07rk9g3R5CV+O8lHbVMehTdrnm\nqxE6/IqgOMFqWx7bIcVjuVnSOM+3Rdem5KaJ0KWCEOGkO0pkzSTi4DQw5ZQf1ODK\nMiy+0ulncvEHlUILn6LVPQE2be2RKOIclfcmW3ojvXh3BKpNfL3hlXczzmlm7Oy0\n/+29BhQdAgMBAAECggEAHz9/OMdDs4+dcVeYf1gmn90/sBFPuEN1iKCx/yTtTd7E\ncU7x5fTkfe/ncFRB4D5XB8i1FKffiEczptczy8r+klfK1DNpQNrkPDDqoJHaoaFv\nYecvV39DH8KGgpXCIOGfKp9yy3znqXscMueeIKNoWhLNvaGulP986xce/k/Pfp8Y\no7ZDPF1A4yVcoxNaKp01tCYVVK0Rr2FqGa+5btbGEvFr19ohhfXrRdiMIPQdIU36\nAhsJTziJNCj7CMnfxohhS3YiClmGlNVi2p1Ap0dstMskku0OHfIlaf4vfkt6lzs+\nBZUtIzUWxrahxiZlsFsspi7b8z5DaOUVA32VgPlDbwKBgQDwcSivXisjar1umLru\nu/tKz0N1wL5VRJdlvucm2oMoClkA8oF3xojJzPzs3Yohs6kBfDBNozbi4+TcJEAB\n+otlQmosyL2+4ff/B7EtSex+vrZmFCJGtoDhEW9WqJ36pWMnTMrWOZh/6WvnR2dK\nWVWNvNTYUC901CEv5SpHcLxLdwKBgQDhzChLLXkER9Wk5Vk6g6/6aQ971J3SpSv8\nGPodBhSloAcZatjwr1CyAGK9pBH/6FtcOpwUOz1s+FRrJdkK7RUs685ji4hEavHt\nJWYmFPFW48DQg1hxh7jTwwuRpdGEHTt/HUdgzimPkUalJBrGQGa74oq4k0LyNbQ2\nNyTZrJFaCwKBgBhT6sDrr0OzHh2dmHRlUsS7+eBlMxzfhs4Fpc+5lkGr4luFLfJX\nhSmd8w1oUPyd+ACtdxmz5O7KDjLz/AH3PrltId8MJJ62sGf+eD/T1fjxBPWJHfq3\npoyfPfuvreRZbZHhZDiOtU5j6MYK5HmSVmSz8Xk9i7+vYvg8oK1/y517AoGAMA8h\nIGcsU9HqUi+Sn1a6FQVZi1TExrnrM7wpOBY8PMhj2nAYfpoCBfD5Ez4hqqNNFsNO\nxyuYtmHgrfGfUakGkcoa4qsnNNDCb2Q/aqmYeJL/TiI2p+toVoI0Kyrs/j6ulC6q\nK5uV0v3r2Ghn3nyEoUblmcWWQTFXCxcPm9kUEuMCgYEAl3bHdvVK48rMQcRGuuON\nBobixeure8aqA91gp/TUTt3FFWH18iU9DtOViMckLH/RQp1sESoBa7wkHK4nQfCX\n2X/A3KhU8CxspNbvBiH+4Tg7H45QefiDwtfd/U4bhwC6aBdyUhHcOj8T9Mkayuzs\nxjZ1iyeK0UQb4ulPWLjKAXg=\n-----END PRIVATE KEY-----\n",
        "client_email": "firebase-adminsdk-uiyoz@ecommerce-5ae51.iam.gserviceaccount.com",
        "client_id": "115847155415483889039",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-uiyoz%40ecommerce-5ae51.iam.gserviceaccount.com",
        "universe_domain": "googleapis.com"},),
      scopes,
    );
          final accessServerKey= client.credentials.accessToken.data;
          print("accessServerKey>>>>>>>>>>$accessServerKey");
      return accessServerKey;
      }

      }