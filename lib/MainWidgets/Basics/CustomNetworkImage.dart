import 'package:tmarjy_m3ak/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class CustomNetworkImage {
  //Container Network Image with border
  Widget containerNewWorkImage(
      {bool withOpacity,
      String image,
      double radius,
      BoxFit fit,
      String defaultImage,
      double height,
      double width,
      bool edges = false}) {
    return CachedNetworkImage(
      imageUrl: image == null ? "" : image,
      fadeInDuration: Duration(seconds: 2),
      placeholder: (context, url) => Container(
        width: width ?? 50,
        height: height ?? 40,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 5)),
        child: Center(
          child: SpinKitThreeBounce(
            size: 15,
            color: Colors.white,
          ),
        ),
      ),
      imageBuilder: (context, provider) {
        return Container(
            width: width ?? 40,
            height: height ?? 40,
            decoration: BoxDecoration(
                borderRadius: edges
                    ? BorderRadius.only(
                        topRight: Radius.circular(radius ?? 5),
                        topLeft: Radius.circular(radius ?? 5))
                    : BorderRadius.all(Radius.circular(radius ?? 5)),
                image: DecorationImage(
                    colorFilter: withOpacity != true
                        ? null
                        : ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken),
                    fit: fit ?? BoxFit.cover,
                    image: provider)));
      },
    );
  }

  // Circle Network Image
  Widget circleNewWorkImage(
      {String image,
      bool withOpacity,
      double height,
      double width,
      String defaultImage,
      BoxFit fit}) {
    return CachedNetworkImage(
      imageUrl: image == null ? "" : image,
      fadeInDuration: Duration(seconds: 2),
      placeholder: (context, url) => Container(
          width: width,
          height: height,
          child: SpinKitThreeBounce(
            color: Colors.white,
            size: 15,
          ),
          decoration: BoxDecoration(
            color: kPrimary,
            shape: BoxShape.circle,
          )),
      imageBuilder: (context, provider) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      colorFilter: withOpacity != true
                          ? null
                          : ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken),
                      fit: fit ?? BoxFit.cover,
                      image: provider))),
        );
      },
    );
  }

  //Asset network Image
  Widget imageNewWorkImage(
      {String image, String defaultImage, double height, double width}) {
    return CachedNetworkImage(
      imageUrl: image ?? "",
      fadeInDuration: Duration(seconds: 2),
      placeholder: (context, url) => Container(
          height: height ?? 40,
          width: width ?? 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(defaultImage ?? "assets/images/avatar.jpg")
                      .image))),
      imageBuilder: (context, provider) {
        return Container(
            height: height ?? 40,
            width: width ?? 40,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover, image: provider)));
      },
    );
  }
}
