import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Collage of images
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Assuming 3 images for demonstration
                itemBuilder: (context, index) {
                  // Replace AssetImage with your actual image provider
                  return Image.asset(
                    'assets/event_image_$index.jpg',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Event Description:\n\nThis is a sample event description. You can replace it with the actual event details.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle like button tap
                  },
                  icon: Icon(Icons.thumb_up),
                  label: Text('Like'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle save to calendar tap
                  },
                  icon: Icon(Icons.calendar_today),
                  label: Text('Save to Calendar'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle notify me tap
                  },
                  icon: Icon(Icons.notifications),
                  label: Text('Notify Me'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle share tap
                  },
                  icon: Icon(Icons.share),
                  label: Text('Share'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
