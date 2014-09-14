# Sep 11, 2014

## User-facing

* Target ship date for shipments is now visible on the shipment research page for shipments that have not yet shipped
  ![Screenshot](https://stitchfix-data.s3.amazonaws.com/screencasts/tsd_spectre.png)

## Backend

* Spectre no longer creates shipments or assigns their Hizzy. This is now done by a new app called Vigo.

# Sep 4, 2014

## User-facing

* *Bulk* Pack Slip printing is more restricted and harder to accidentally do
  - Overview here: http://screencast.com/t/8e0twaagGR
  - Only certain users will have access to bulk print packslips
  - **All** users can still print _individual_ pack slips
  - The "nag" dialog for confirming that you are printing in bulk requires re-entering the number of pack slips being printed.

## Backend

* Sending messages to gregory (our email service application) during truancy processing so that CS can get statistics inside Zendesk

# Sep 3, 2014

## User-facing

* Hizzy identification in the receiving queue
  - Like the rest of Spectre, you can now see color-coordinated navigation, logged-in user name, and Hizzy location.
  - Special bonus: We've fixed the giant state silhouette indicator that appears in the background, too!
* Receiving Queue now shows the breakdown by size
  - For each delivery, you now can see a size breakdown for ordered units, received units to be created, and damaged units
    ![Screenshot](https://www.evernote.com/shard/s41/sh/807cad89-0d48-453b-a1c4-a81251ad6d45/d2f757f49de92265ae0e19f2fd87b140)
  - Color-coded for better recognition
  - Adjustment deliveries are now more easily recognizable in the Queue
    ![Screenshot](https://www.evernote.com/shard/s41/sh/c976c8f9-dbba-4a6b-acfe-9e3642007550/465712b5659e73f44c5498af551ec44f)

