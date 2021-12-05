import 'package:flutter/material.dart';

class MyProductContainer extends StatelessWidget {
  const MyProductContainer({
    Key key,
    @required this.mainPic,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.minBid,
    @required this.endTime,
    @required this.onTap,
  }) : super(key: key);
  final String mainPic, name, location, description, minBid, endTime;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(9.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 5.0, offset: Offset(0, 3))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image(
                    image: AssetImage(mainPic),
                    fit: BoxFit.cover,
                    height: 71,
                    width: 71,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        location,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .apply(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .apply(color: Colors.grey),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 9),
            Row(
              children: [
                Text(
                  "Bid: $minBid BDT",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .apply(fontWeightDelta: 2),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "Time: $endTime",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .apply(fontWeightDelta: 2),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
