import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CardController extends GetxController {
  final toWhatsapp = Uri(
    scheme: 'https',
    host: 'wa.me',
    path: '559981173168',
  ).obs;

  final toEmail = Uri(
    scheme: 'mailto',
    path: 'erimedeiros.dev@outlook.com',
  ).obs;

  final toGithub = Uri(
    scheme: 'https',
    host: 'www.github.com',
    path: '/e-medeiros1/',
  ).obs;

  final toLinkedin =
      Uri(scheme: 'https', host: 'www.linkedin.com', path: '/in/erimedeiros/')
          .obs;

  Future<void> launchWhatsapp(var url) async {
    if (!await launchUrl(
      Uri.parse(url.toString()),
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInMail(var url) async {
    if (!await launchUrl(
      Uri.parse(url.toString()),
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInWeb(var url) async {
    if (!await launchUrl(
      Uri.parse(url.toString()),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
