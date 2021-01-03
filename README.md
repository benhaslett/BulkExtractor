# BulkExtractor
Google decided to start charging for the space we used in google photos. We were paying for O365 already so decided to port to OneDrive.

## Process
- Go to google.com/takeout
- Export google photos to onedrive

## Hurdle 1
Of COURSE google exports the photos are ZIP archives into onedrive

## Hurdle 2
Of COURSE we can't extract archives nativly in onedrive

## The Fix
The script in this repo can be used to parse the downloaded google takeout ZIP files
It extracts them to some specified location
Then moves the resultant folders back into onedrive so the photos can upload again

## Sigh
I appologise to my ISP for pulling down 300GB of images and videos and then reuploading them just so I can expand the archives.
I do see why google is charging for space though.