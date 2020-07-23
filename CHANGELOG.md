# CHANGELOG

## 4.1.1

###  Change summary

- Phraseanet now using Docker. Retrieve all official images on DockerHub 
- Worker manager, a new way for all operations on assets. In the near future, this will replace the current task manager.
- Geolocation based on Mapbox (requires an account on Mapbox https://www.mapbox.com).
- Video chaptering and subtitling support.
- GUI redesign for Push, Feedback, List manager, Lightbox on mobile.


 this version is finale version of 4.1.0 published in preview at start of year, a lot of improvement, bugfixes on several elements see summary here 

### New Feature summary
 
    * [PHRAS-2023] - Refacto Lightbox mobile in 4.1
    * [PHRAS-2219] - Refacto design Push screen
    * [PHRAS-2220] - Refacto design Feedback screen
    * [PHRAS-2221] - Refacto design List manager general screen
    * [PHRAS-2222] - Refacto design ListManager Advance Mode screen
    * [PHRAS-2223] - Refacto dev list manager Advance Mode screen
    * [PHRAS-2541] - Dev-Design-Prod/Publish Screen
    * [PHRAS-2548] - Phraseanet Docker and Docker Compose
    * [PHRAS-1226] - Geolocalisation In Phraseanet
    * [PHRAS-1626] - bin/console databox:mount mount an existing databox
    * [PHRAS-1628] - bin/console collection:publish
    * [PHRAS-1630] - bin/console database:unmout 
    * [PHRAS-1631] - bin/console collection:unpublish
    * [PHRAS-1648] - bin/console user:password
    * [PHRAS-1659] - bin/console user:create
    * [PHRAS-1771] - bin/console collection:unpublish
    * [PHRAS-1773] - bin/console collection:publish
    * [PHRAS-2518] - Phraseanet worker Read/Write metadata
    * [PHRAS-2520] - Phraseanet worker send webhook
    * [PHRAS-2738] - Phraseanet worker populate database
    * [PHRAS-2435] - Phraseanet Worker Build subdefinition
    * [PHRAS-2436] - Phraseanet Worker build zip export and send mail
    * [PHRAS-2636] - Phraseanet Worker fetch assets from external uploader (pull mode)
    * [PHRAS-2904] - Fullfill field define in geoloc - position field with information return by Geonames
    * [PHRAS-161]  - PROD Add a maps for geolocalisation of media in detailed view
    * [PHRAS-1935] - View prod/ Video chapter editor
    * [PHRAS-2997] - Matomo analytic service in Phraseanet
    * [PHRAS-1890] - Add GS1 databases model to Phraseanet


### Improvement and fix summary

    * [PHRAS-1561] - Prod | Print - Use the label of field when print, use the GUI user language
    * [PHRAS-2067] - Prod : Introduce thumbnail & preview generic images for Fonts records
    * [PHRAS-2473] - Populate Optimisation, sometime populate databox (database) is very long
    * [PHRAS-2524] - Put worker log in ELK 
    * [PHRAS-2739] - incorporate Phraseanet-plugin-SubdefWebhook into Phraseanet
    * [PHRAS-2157] - Prod / Share : Iframe sizes are set to 0 for audio documents
    * [PHRAS-2538] - Some MP4 file is not correctly detected by Phraseanet.
    * [PHRAS-2825] - Prod : Add a reset button to initialize searches filters
    * [PHRAS-1872] - prod/export by email / subject are NOK
    * [PHRAS-2342] - Report : collections not selected
    * [PHRAS-2343] - report : all fields of all databases
    * [PHRAS-2350] - Report : url is too long
    * [PHRAS-2476] - Bad header in generated video preview file  
    * [PHRAS-2196] - API - Stories records pagination on search answer and Stories fetch info 
    * [PHRAS-2880] - extend admin GUI  for define facets ordering. 
    * [PHRAS-2967] - Lightbox - dev of send email report - warn windows
    * [PHRAS-1752] - update facebook sdk dependency
    * [PHRAS-2678] - add `webhook monitor`
    * [PHRAS-2915] - Lightbox (desktop version) Change sort order for basket and Feedback in landing page ( most recent in first)
    * [PHRAS-2082] - Bump design of windows create user , create template user, create new subdef
    * [PHRAS-2676] - Weaked download behaviour for large amount of data
    * [PHRAS-2671] - Change behavior of preview display in audio file case
    * [PHRAS-2879] - Define facets order in GUI and query result

## 4.0.12 

Release notes - Phraseanet - Version 4.0.12

### Improvement
    * [PHRAS-2955] - Cache doctrine entity metadata for performance
    * [PHRAS-2964] - Application-box - set host colon of table sbas set to char 255
    * [PHRAS-3012] - [PHRAS-2977] - Docker compose optimisation, refacto volumes, build image  
        optimisation, add Phraseanet plugin in build image, bump ffmpeg version in worker, 
       fix error un redis configuration.
       more option for define volumes during installation process. 
    * [PHRAS-3027] - Backport To 4.0 - Populate  - Slow query - due to  LIMIT in sql query.
    * [PHRAS-3027] - Translation improvement in EN and DE.

### Bugfix
    * [PHRAS-2979] - The content of a story is not displayed even for users with appropriate on the collection


## 4.1.0 

Pre release of 4.1 


## 4.0.11

Release notes - Phraseanet - Version 4.0.11

### New Feature and Improvement
    * [PHRAS-2878] - Print feedback report in PDF
    * [PHRAS-2757] - Exclude some collections from quarantine checkers sha256, UUID, filename (AKA exclude Trash from quarantine)
    * [PHRAS-2766] - Add status change capabilities to quarantine lazaret in substitute and add action
    * [PHRAS-2674] - Prod grey skin Improvement
    * [PHRAS-2775] - Prod - plugin - Publish item in diapo local menu - plugin skeleton improvement.
    * [PHRAS-925]  - Search Engine improvement for word with dot and hyphen characters
    * [PHRAS-2496] - Pre-build vagrant image for Phraseanet and implement it in Phraseanet vagrant  file.
    * [PHRAS-2637] - Sub definition Task init : select all databases when databases property is not set
    * [PHRAS-2670] - Fix notifications slow sql and basket select 
    * [PHRAS-2672] - Bump videojs version to 7.5
    * [PHRAS-2691] - Prod - delete from trash , send deletion by bulk of 3 records
    * [PHRAS-2700] - Prod - number of results  - Formating the results number
    * [PHRAS-2742] - Enhance plugin-skeleton in 4.0
    * [PHRAS-2750] - PHPExiftool to handle DJI XMP Tags, Bump exiftool version and switch to original exiftool/exiftool  github repository
    * [PHRAS-835] -  ES - date format timestamp unix,  store and search datetime
    * [PHRAS-2791] - Embed-bundle - Videojs player serve poster-image property with sub definition permalink
    * [PHRAS-2842] - Databases Models - now default audio encodeur is mp3lame
    * [PHRAS-2857] - Exclude some collections from quarantine checkers sha256, UUID, filename (AKA exclude Trash)   
    * [PHRAS-2899] - Quarantine: allow to substitute without selecting target record, (when match only one record).
    * [PHRAS-2765] - Translation in Plugin menu locale is now available
    * [PHRAS-2929] - bump sinonjs dependency to  1.7.1
    * [PHRAS-2728] - Landing page take browser language in account
    * [PHRAS-2693] - Collection Sort Sorter is now presented by column
    * [PHRAS-2817] - Deploy and Dev with docker is OK


### Bugfix
    * [PHRAS-1069] - Dates seems not extracted from iptc
    * [PHRAS-1428] - Phraseanet Binaries in configuration  not used in some alchemy-fr libraries (AKA text extraction of pdf is NOK)
    * [PHRAS-2567] - Registration Form - Term of use link is broken
    * [PHRAS-2644] - Searching for stories after applying a document filtering choice gives no results
    * [PHRAS-2652] - Fields "Phraseanet::no-source" are pushed to exiftool
    * [PHRAS-2682] - Prod - facets display is NOK when switch from basket or thesaurus Tab.
    * [PHRAS-2695] - Prod - Grey and White Skins - Browse Baskets: Unable to read the titles
    * [PHRAS-2702] - Lightbox - scroller thumbnail Nok
    * [PHRAS-2714] - Adding record from the API leaves a copy of the file into the system temporary directory
    * [PHRAS-2715] - Embed bundle, border issue on firefox.
    * [PHRAS-2716] - Records SetStatus HTTP API malfunction
    * [PHRAS-2723] - None information (name, last name etc...) is keep from the Push or a FeedBack user creation form
    * [PHRAS-2748] - Some characters into cterms (candidats) leeds to 500 error 
    * [PHRAS-2754] - Permalink is not (re) activated when record is move from _TRASH_ collection
    * [PHRAS-2860] - Generated Subdefs for video Portait are not correctly Oriented 
    * [PHRAS-2877] - User manipulator does not allow to set a null email
    * [PHRAS-2912] - When updating a user informations the wrong field are populated (job and activity inverted)
    * [PHRAS-2811] - Cleanning of bad chars in candidats terms


## 4.0.10
  
  Not publish

## 4.0.9

### Adds

  - PHRAS-2535 - Back / Front - Unsubscription: It's now possible to request a validation by email to delete a Phraseanet user account.
  - PHRAS-2480 - Back / Front - It's now possible to add a user model as order manager on a collection:All users with this model applied can manage orders on this collection. This features fixes an issue when users is provided by SAML and the orders manager is lost when user logs in. 
  - PHRAS-2474 - Back / front. - Searched terms are now found even if the searched terms are split in Business Field and regular Field.
  - PHRAS-2462 - Front - Share media on LinkedIn as you can do on Facebook, Twitter.
  - PHRAS-2417 - Front - Skin: grey and white, graphic enhancements.
  - PHRAS-2067 - Front - Introducing thumbnail & preview generic images for Fonts

### Fixes

  - PHRAS-2491 - Front - Click on facets title (expand/collapse) launched a bad query, due to jquery error.
  - PHRAS-2510 - Front - Facets values appear Truncated after 15th character.
  - PHRAS-2153 - Front - No user search possible with the field "Company" and field "Country".
  - PHRAS-2154 - Front - Bug on Chrome only - selected 1 document instead of all for the feedback.
  - PHRAS-2538 - Back - Some MP4 files were not correctly detected by Phraseanet.

## 4.0.8

### Adds:

  - Upload: Distant files can be added via their URL in GUI and by API. Phraseanet downloads the file before archiving it.
  - Search optimisation when searching in full text, there was a problem when the query mixed different types of fields.
  - Search optimisation, it’s now possible to search a partial date in full text.
  - Populate optimisation, now populating time: 3 times faster.
  - It is now possible to migrate from 3.1 3.0 version to 4.X, without an intermediate step in 3.8.Fix:

### Fixes
 
  - Search filter were not taken into account due to a bug in JS.
  - Overlay title: In this field, text was repeated twice if : one or several words were highlighted in the field, and if the title contained more than 102 characters.
  - List Manager: it was impossible to add users in the list manager after page 3.
  - List of fields was not refreshed in the exported fields section.
  - Push and Feedback fix error when adding a user when Geonames was not set (null value in Geonames).

## 4.0.7

### Adds:

  - Advanced search refacto
  - Thesaurus search is now in strict mode
  - Refactoring of report module
  - Refactoring query storage and changing strategy for field search restriction
  - It is now possible to search for terms in thesaurus and candidates in all languages, not only on the login language
  - Enhancements on archive task
  - Graphic enhancements for menu and icons
  - Video file enhancement, support of MXF container
  - Extraction of a video soundtrack (MP3, MP4, WAVE, etc.)
  - For Office Documents, all generated subviews will be PDF assets by default. The flexpaper preview still exists but will be optional.
  - In Prod Gui, there will be 5 facets but the possibility to view more.

### Fixes:

  - Quarantine: Fix for the “Substitute” action: alert when selection is empty
  - Quarantine: File name with a special character can’t be added
  - Fix for the Adobe CC default token
  - XSS vulnerabilities in Prod, Admin & Lightbox. Many thanks to Kris (@HV_hat_)
  - PDF containing (XMP-xmp:PageImage) fails generating subview
  - MIME types are trucated
  -Vagrant dev environment fix
  - Feedback: Sort assets “Order by best choice” has no effect

## 4.0.3

### Adds:

  - Prod: For a record, show the current day in the statistics section of the detailed view.
  - Prod: Store state (open or closed) of facet answer. eg: Database or collection, store in session.
  - Admin: Access to scheduler and task local menu when parameter is set to false in .yml configuration.
  - Prod: Database, collection and document type facets are fixed on top
  - Prod: Better rendering for values of exposure, shutter speed and flash status in facets. eg for shutter speed: 1/30 instead of 0,0333333.
  - Versions 4 are now compliant with the Phraseanet plugins for Adobe CC Suite.
  - White list mode: extending autoregistration and adding wildcard access condition by mail domain. Automatically grant access to a user according to the email entered in the request.
  - Find your documents from the colors in the facets (AI plugin)
  - Generate a PDF from a Word document or a picture, it’s now possible to define a pdf subview type
  - Specify a temporary work repository for building video subdefs, to accelerate video generation.

### Fixes:

  - Prod: In Upload, correct status are not loaded
  - Prod:Arrow keys navigation adds last selected facet as filter
  - Admin:Subdef presets, sizes and bitrates (bits/s) not OK
  - Admin: App error on loading in French due to a simple quote
  - Prod: Deletion message is not fully readable when deleting a story
  - Fixing highlight with Elasticsearch for full text only, not for the thesaurus
  - 500 error at the first authentication for a user with the SAML Phraseanet pluginDev
  - Dev: Fix API version returned in answer
  - Dev: Fix vagrant provisioning for Windows

## 4.0.2

### Adds:

  - Prod: Message Improv, when selected records are in Trash and another one.
  - Prod: alt-click on active facets (filter) to invert it.
  - Prod: do not erase facets in filter when returning 0 answers.
  - Core: Add preference to authorize user connection without an email
  - Core: Add preference to set default validity period of download link

### Fixes:

  - Thesaurus: 0 character terms are blocked
  - Admin: fix action create and drop index from elasticsearch
  - Prod: Fix advanced sarch: no filters possible on fields using IE
  - Prod: 500 error in publication reader when record is missing (deleted from db)Unit test: fix error in Json serialization for custom link
  - Prod: fix field list in advanced search with Edge browser
  - Upload: fix 500 error when missing collection
  - Install wizard: fix error in graphical installer
 
## 4.0.0

### Adds:

#### Phraseanet gets a new search engine: Elasticsearch
  - Faceted navigation enables to create a “mapping” of the response. Browse in a very intuitive way by creating several associations of filters. Facets can be used on the databases, collections, documentary fields and technical data.
  - Speed of processing search and results display has been improved
  - Possibility to use Kibana (open source visualization plugin for Elasticsearch)

#### API enhancement
  - New API routes are available (orders, facets, quarantine)
  - Enhancement of new, faster routes

 #### Redesign of the Prod interface
  - Enhanced, redesigned ergonomics:  the detailed view windows; redesign of the workzone (baskets and stories, facets, webgalleries)  
  - New white and grey skins are now available
  - New order manager

 #### Other
  - Permalinks sharing: activate/deactivate sharing links for the document and sub resolutions
  - New: the applicative trash: you can now define a collection named _TRASH_. Then, all deleted records from collections (except from Trash) go to the Trash collection. Permalinks on subdefs are deactivated. When you delete a record from the Trash collection, it is permanently deleted. When you move a record from the Trash collection to another, the permalinks are reactivated.
  - Rewriting of the task scheduler based on the web sockets
  - Quarantine enhancement
  - Drag and drop upload

## 3.8.8 (2015-12-02)

  - BugFix: Wrong BaseController used when no plugin installed.
  - BugFix: Mismatch in CORS configuration
  - BugFix: all subdefs are shown when permalink is available in prod imagetools
  - BugFix: Empty labels are considered as valid
  - BugFix: Error 500 on prod imagetools when insufficient rights

## 3.8.7 (2015-11-09)

  - NewFeature: Adding public, temporary links (link generation based on JSON Web Token)
  - NewFeature: Modification of a video snapshot (extract picture from a video)
  - NewFeature: Adding alternative route for the subdefinitions via the API
  - NewFeature: Adding a rebuild command for the subdefinitions with a filter by database, type of document (name of subdefs)
  - NewFeature: Adding verification of INNODB storage engine when creating a Phraseanet database
  - NewFeature: The user can set the mime type of a record in the HMI
  - NewFeature: Adding a route for the creation of a story in the API (management of the video screenshot, management of the description)
  - NewFeature: Adding a route for an additional document to a story
  - NewFeature: Adding the possibility to upload a document without creating its subdefinitions
  - Enhancement: Deactivation of a permalink for a subdef
  - Enhancement: Improvement of performance when deleting items in the quarantine
  - Enhancement: Change of the basic documentary structures
  - Enhancement: Display of the collection in which the media file can be found, in the detailed view
  - Enhancement: Deleting the desired type of documents searched (stories mode)
  - Enhancement: The API returns json by default if the "accept" attribute is not specified
  - BugFix: The search route via the API ne longer returns a 404 error if a collection is not known
  - BugFix: The upload module doesn't work on IE 10 & IE 11
  - BugFix: Adding wma files doesn't work
  - BugFix: Third party applications of a user is deleted when it is itself deleted
  - BugFix: The test button for the FTP export does not work
  - BugFix: Apply a template to a template does not work
  - BugFix: The names of the stories in which media can be found are truncated
  - BugFix: The interface of the suggested values in the Admin does not work
  - BugFix: The report tab:activity does not work on Chrome
  - BugFix: The time of validity is not displayed for the password renewal email
  - BugFix: The focus on the documentary fields labels systematically shows french label
  - BugFix: The "delay" parameter to make gifs is not taken into account
  - BugFix: When adding a term in the thesurus, previous value entered appears at the opening of the modal
  - BugFix: Error when generating SWF subdefinitions
  - BugFix: The "flatten" parameter when generating PDF thumbnails is not taken into account
  - Deprecation: Classic application is now obsolete

## 3.8.6 (2015-01-20)

  - BugFix : Fixes the stories editing. When opening an editing form, the style applied to the notice doesn't match its selection
  - BugFix : Fixes the sending of a return receipt (attributed in the headers of the email) at the export
  - BugFix : Fixes the SMTP field in the Administration panel which is pre filled with a wrong information
  - BugFix : Fixes a bad mapping of the registration fields on the homepage and the displayed fields in the registration requests in the Administration
  - BugFix : In the detailed view, fixes the list of the stories titles which is truncated.
  - BugFix : Fixes Oauth 2.0, the authorization of the client applications is not systematically requested when logging in.
  - BugFix : When uploading documents, the first status is not taken into account
  - BugFix : Fixes the cache invalidation of the status bits icons when changed in Admin section
  - BugFix : Fixes the reordering of the media in a basket
  - BugFix : Fixes the control of field "name" when creating a push or a feedback
  - BugFix : Fixes Oauth 2.0 message when the connection fails
  - BugFix : Fixes the suppression of diffusion lists on IE9
  - BugFix : Fixes the anonymous download when a user is logged off
  - BugFix : Fixes the setup of the default display mode of the collections (stamp/watermark) on a non authenticated mode
  - BugFix : Fixes the printing of the thumbnails of documents for the videos or PDFs
  - BugFix : Fixes the reordering of the basket when the documents come from n different collections
  - BugFix : Fixes the application of the "status bits" when the status bit is defined by the task "RecordMover"
  - BugFix : Fixes the detection of duplicates for PDF files
  - BugFix : Fixes the rewriting of metadata of a document, when the name space is empty
  - BugFix : Fixes the injection of the rights of a user for a connection via Oauth2
  - BugFix : Fixes the invalidation of the cache when disassembling a databox
  - BugFix : Fixes the sorting criteria by date and by field, according to users rights
  - BugFix : Fixes the right to download for the guest access
  - BugFix : Fixes the report generation for the number of downloads and connections
  - BugFix : Fixes the memory use of the task for the the sub-definitions creation
  - BugFix : Fixes the generation of sub-definitions when editing the sub-definitions task
  - BugFix : Fixes the display of multivalued fields in the editing window
  - BugFix : Fixes the adding of a term in the candidates which was is not detected as present in the candidates
  - BugFix : Fixes the users' rights when using the API
  - BugFix : When being redirected, fixes the add of parameters after login.
  - BugFix : Fixes the thumbnails' size of EPS files.
  - BugFix : The "Delete" action of a task ("Record Mover" type) is now taken into consideration.
  - BugFix : The edition dates of a record sent back by the API are now fixed
  - BuxFix : Writing of IPTC fields is fixed, when setting up a stamp on a media (image type). 
  - Enhancement : Possibility to adapt a task "creation of subdefinition", by database and type of document 
  - Enhancement : Reporting modifications of Flickr & Dailymotion APIs (Bridge feature).
  - Enhancement : Adding the possibility to overload the name space reserved for the cache
  - Enhancement : Adding the possibility to deactivate the use of the TaskManager by instance
  - Enhancement : Adding an extended format for the API replies. Get more information about Phraseanet records in one API request.
  - Enhancement : Adding a block for the help text of Production when no result is displayed to authorize the modification of this text via a plugin
  - Enhancement : Adding the possibility to deactivate the notifications to the users for a new publication
  - Enhancement : Adding the possibility to modify the rotation of pictures representing the videos and PDF files
  - Enhancement : Adding the possibility to serve the thumbnails of the application in a static way for improved performances
  - Enhancement : Adding the possibility to deactivate the lazy load for the thumbnails
  - Enhancement : The tasks can now reconnect automatically to MySQL
  - Enhancement : The sorting on the fields "Number" is now possible
  - Enhancement : The sub-definition creation task now displays the remaining number of sub-definitions to create
  - Enhancement : Adding the date of edition of the media
  - Enhancement : Use of http cache for the display of documents
  - Enhancement : Adding the possibility to deactivate the CSRF for the authentication form
  - NewFeature : Adding a Vagrant VM (for developers and testers). The setup is quicker: development environments made easy.
  - NewFeature : Adding a command for the file generation crossdomain.xml depending on the configuration.

## 3.8.5 (2014-07-08)

  - BugFix : Fix Flickr connexion throught Bridge Application
  - BugFix : Fix broken Report Application
  - BugFix : Fix "force authentication" option for push validation
  - BugFix : Fix display of "edit" button for a validation accordint to user rights
  - BugFix : Fix highlight of record title in detailed view
  - BugFix : Fix thumbnail generation for PDF with transparency
  - BugFix : Fix reorder of stories & basket when record titles are too long
  - BugFix : Fix display of separators for multivalued fields in caption
  - Enhancement : Add the possibility to choose a document or a video as a representative image of a story
  - Enhancement : Titles are truncated but still visible by hovering them

## 3.8.4 (2014-06-25)

  - BC Break : Drop sphinx search engine highlight support
  - BC Break : Notify user checkbox is now setted to false when publishing a new publication
  - BugFix : Fix database mapping in report
  - BugFix : Fix homepage feed url
  - BugFix : Fix CSV user import
  - BugFix : Fix status icon filename
  - BugFix : Fix highlight in caption display
  - BugFix : Fix bound in caption display
  - BugFix : Fix thumbnail display in feed view
  - BugFix : Fix thesaurus terms order
  - BugFix : Fix metadata filename attibute
  - BugFix : Fix https calls to googlechart API
  - BugFix : Fix API feed pagination
  - BugFix : Fix thumbnail etags generation
  - BugFix : Fix therausus search in workzone
  - BugFix : Fix context menu in main bar in account view
  - BugFix : Fix CSV download for filename with accent
  - BugFix : Fix CSV generation from report
  - BugFix : Fix old password migration
  - BugFix : Fix migration from 3.1 version
  - BugFix : Fix status calculation from XML indexation card for stories
  - BugFix : Fix homepage issue when a feed is deleted
  - BugFix : Fix phraseanet bridge connexion to dailymotion
  - BugFix : Fix unoconv and GPAC detection on debian system
  - BugFix : Fix oauth developer application form submission
  - BugFix : Fix anamorphosis problems for some videos
  - Enhancement : Set password fields as password input
  - Enhancement : Add extra information in user list popup in Push view
  - Enhancement : Force the use of latest IE engine
  - Enhancement : Add feed restriction when requesting aggregated feed in API
  - Enhancement : Add feed title property in feed entry JSON schema
  - Enhancement : Dashboard report is now lazy loaded
  - Enhancement : Update flowplayer version
  - Enhancement : Improve XsendFile command line tools
  - Enhancement : Remove disk IO on media_subdef::get_size function
  - Enhancement : User city is now setted through geonames server
  - Enhancement : Enhancement of Oauth2 integration
  - NewFeature : Add option to restrict Push visualization to Phraseanet users only
  - NewFeature : Add API webhook
  - NewFeature : Add CORS support for API
  - NewFeature : Add /me route in API
  - NewFeature : Add h264 pseudo stream configuration
  - NewFeature : Add session idle & life time in configuration
  - NewFeature : Add possibility to search “unknown” type document through API

## 3.8.3 (2014-02-24)

  - BugFix : Fix record type editing.
  - BugFix : Fix scheduler timeout.
  - BugFix : Fix thesaurus tab javascript errors.
  - BugFix : Fix IE slow script error messages.
  - BugFix : Fix basket records sorting.
  - BugFix : Fix admin field editing on a field delete.
  - BugFix : Fix HTTP 400 on email test.
  - BugFix : Fix records export names.
  - BugFix : Fix collection rights injection on create.
  - BugFix : Fix disconnection of removed users.
  - BugFix : Fix language selection on mobile devices.
  - BugFix : Fix collection and databox popups in admin views.
  - BugFix : Fix suggested values editing on Firefox.
  - BugFix : Fix lightbox that could not be load in case some validation have been removed.
  - BugFix : Fix user settings precedence.
  - BugFix : Fix user search by last applied template.
  - BugFix : Fix thesaurus highlight.
  - BugFix : Fix collection sorting.
  - BugFix : Fix FTP test messages.
  - BugFix : Fix video width and height extraction.
  - BugFix : Fix caption sanitization.
  - BugFix : Fix report locales.
  - BugFix : Fix FTP receiver email reception.
  - BugFix : Fix user registration management display.
  - BugFix : Fix report icons.
  - BugFix : Fix report pagination.
  - BugFix : Fix Phrasea SearchEngine cache duration.
  - BugFix : Fix basket caption display.
  - BugFix : Fix collection mount.
  - BugFix : Fix password grant authorization in API.
  - BugFix : Fix video display on mobile devices.
  - BugFix : Fix record mover task.
  - BugFix : Fix bug on edit presets load.
  - BugFix : Fix detailed view access by guests users.
  - Enhancement : Add datepicker input placeholder.
  - Enhancement : Add support for portrait videos.
  - Enhancement : Display terms of use in a new window.
  - Enhancement : Increase tasks memory limit.
  - Enhancement : Add an option to reset advanced search on production reload.
  - Enhancement : Update task manager log messages.
  - Enhancement : Update to Symfony 2.3.9.
  - Enhancement : Add plugins:list command.
  - Enhancement : Images and Videos are not interpolated anymore.
  - Enhancement : Add option to disable filesystem logs.
  - Enhancement : Add compatibility with PHP 5.6.

## 3.8.2 (2013-11-15)

  - BugFix : Locale translation may block administration module load.

## 3.8.1 (2013-11-15)

  - BugFix : IE 6 homepage error message is broken.
  - BugFix : Databox fields administration is broken on firefox.
  - BugFix : Report CSS is broken.
  - BugFix : Databox fields administration has some behavior bugs.
  - BugFix : Install data-path is not saved.
  - BugFix : Third-party applications are displayed disabled when enabled and vice-versa.
  - BugFix : Increase tasks default memory limit.
  - BugFix : Oauth2 password grant_type authentication is broken.
  - BugFix : CSS issues on mobile devices.
  - BugFix : Editing records from multiple databoxes triggers a fatal error.
  - BugFix : API search query is discarded with GET method.
  - BugFix : Wrong offset for Classic query result.
  - BugFix : API does not return SearchEngine suggestions correctly.
  - BugFix : SearchEngine collection filter does not work in Classic.
  - BugFix : Unable to start scheduler on Windows platform.
  - BugFix : Resizing images is broken on mobile devices in landscape mode.
  - BugFix : Text input color is not correctly rendered on old IEs.
  - BugFix : IE11 is not recognize as HTML5 compatible.
  - BugFix : Disallow push when records can not be pushed.
  - BugFix : Upgrade data command fails.
  - BugFix : Export by mail fails.
  - BugFix : ACL cache issue.
  - BugFix : Registration collection auto-selection is broken.
  - BugFix : Allow thesaurus browsing to non-thesaurus-admins.
  - BugFix : Datepickers displays incorrectly on firefox.
  - BugFix : Bridge playlists loading fails.
  - BugFix : Editing modal box is broken on IE7.
  - BugFix : A user can remove himself from the admin panel.
  - BugFix : Basket export fails.
  - BugFix : Allow stemmed search only if stemming is enabled.
  - BugFix : Reset date sort to the correct value on advanced-search reset.
  - BugFix : Disable SQL logging when in non-dev environment.
  - BugFix : Task-Manager scheduler randomly stops.
  - BugFix : Increase usr_login size, display error if login is longer than possible.
  - Enhancement : Allow default user settings customisation.
  - Enhancement : Propose rights reset prior apply template.
  - Enhancement : Enhance CSS selector for IE performance.
  - Enhancement : Sanitize caption XML values.
  - Enhancement : Add checkbox on feed creation to disable email notifications.
  - Enhancement : Add Bootstrap Carousel & Galleria to homepage presentation mode.
  - Enhancement : Push or feedback names are now mandatory.
  - Enhancement : Add Phraseanet twig namespace.
  - Enhancement : Allow video bitrate up to 12M.

## 3.8.0 (2013-09-26)

  - BC Break : Removed `bin/console check:system` command, replaced by `bin/setup check:system`.
  - BC Break : Removed `bin/console system:upgrade` command, replaced by `bin/setup system:upgrade`.
  - BC Break : Removed `bin/console check:ensure-production-settings` and `bin/console check:ensure-dev-settings`
    commands, replaced by `bin/console check:config`.
  - BC break : Configuration simplification, optimized for performances.
  - BC Break : Time limits are now applied on templates application.

  - SwiftMailer integration (replaces PHPMailer).
      - Emails now include an HTML view.
      - Emails can now have a customized subject prefix.
      - Emails can be sent to SMTP server using TLS encryption (only SSL was supported).
  - Sphinx-Search is now stable (require Sphinx-Search 2.0.6).
  - Add support for stemmatisation in Phrasea-Engine.
  - Add bin/setup command utility, it is now recommanded to use `bin/setup system:install`
    command to install Phraseanet.
  - Lots of cleanup and code refactorisation.
  - Add bin/console mail:test command to check email configuration.
  - Admin databox structure fields editing redesigned.
  - Refactor of the configuration tester.
  - Refactor authentication, add support for external authentication providers
      - Support for Facebook, Twitter, Viadeo, Github, Linkedin, Google-Plus.
  - Add `Link` header in permalink resources HTTP responses.
  - Global speed improvement on report.
  - Upload now monitors number of files transmitted.
  - Add bin/developer console for developement purpose.
  - Add possibility to delete a basket from the workzone basket browser.
  - Add localized labels for databox documentary fields.
  - Add localized labels for databox collections.
  - Add localized labels for databox status-bits.
  - Add localized labels for databox names.
  - Add plugin architecture for third party modules and customization.
  - Add records sent-by-mail report.
  - User time limit restrictions can now be set per databox.
  - Add gzip/bzip2 options for DBs backup commandline tool.
  - Add convenient XSendFile configuration tools in bin/console :
      - bin/console xsendfile:configuration-generator that generates your
        xsendfile mapping depending on databoxes configuration.
      - bin/console xsendfile:configuration-dumper that dumps your virtual
        host configuration depending on Phraseanet configuration
  - Phraseanet enabled languages is now configurable.

## 3.7.15 (2013-09-14)

  - Add Office Plugin client id and secret.

## 3.7.14 (2013-07-23)

  - BugFix : Multi layered images are not rendered properly.
  - BugFix : Status editing can be accessed on some records by users that are not granted.
  - BugFix : Records index is not updated after databox structure field rename.
  - Enhancement : Add support for grayscale colorspaces.

## 3.7.13 (2013-07-04)

  - Some users were able to access story creation form whereas they were not allowed to.
  - Disable detailed view keyboard shortcuts when export modal is open.
  - Update to PHP-FFMpeg 0.2.4, better support for video resizing.
  - BugFix : Unablt to reject a thesaurus term from thesaurus module.

## 3.7.12 (2013-05-13)

  - BugFix : : Removed "required" attribute on non-required fields in order form.
  - BugFix : : Fix advanced search dialog CSS.
  - BugFix : : Grouped status bits are not displayed in advanced search dialog.
  - Enhancement : Locales update.

## 3.7.11 (2013-04-23)

  - Enhancement : Animated Gifs (video support) does not requir Gmagick anymore to work properly.
  - BugFix : : When importing users from CSV file, some properties were missing.
  - BugFix : : In Report, CSV export is limited to 30 lines.

## 3.7.10 (2013-04-03)

  - BugFix : : Permalinks pages may be broken.
  - BugFix : : Permalinks always expose the file extension of the original document.
  - BugFix : : Thesaurus multi-bases queries may return incorrect proposals.
  - BugFix : : Phraseanet installation fails.
  - BugFix : : Consecutive calls to image tools may fail.

## 3.7.9 (2013-03-27)

  - BugFix : : Detailed view does not display the right search result.
  - BugFix : : Twitter and Facebook share are available even if it's disabled in system settings.
  - Add timers in API.
  - Permalinks now expose a filename.
  - Permalinks returned by the API now embed a download URL.
  - Bump to API version 1.3.1 (see https://docs.phraseanet.com/3.7/en/Devel/API/Changelog.html).

## 3.7.8 (2013-03-22)

  - BugFix : : Phraseanet API does not return results at correct offset.
  - BugFix : : Manual thumbnail extraction for videos returns images with anamorphosis.
  - BugFix : : Rollover images have light anamorphosis.
  - BugFix : : Document and sub-definitions substitution may not work properly.
  - Add preview and caption to order manager.
  - Add support for CMYK images.
  - Preserve ICC profiles data in sub-definitions.

## 3.7.7 (2013-03-08)

  - BugFix : : Archive task fails with stories.
  - Update of dutch locales.
  - BugFix : : Fix feeds entry notification display.
  - BugFix : : Read receipts are not associated to email for push and validation.

## 3.7.6 (2013-02-01)

  - BugFix : : Load of a publication entry with a publisher that refers to a deleted users fails.
  - BugFix : : Wrong ACL check for displaying feeds in Lightbox (thumbnails are displayed instead of preview).
  - Releasing a validation feedback now requires at least one agreement.
  - BugFix : : Lightbox zoom fails when image is larger than container.
  - BugFix : : Landscape format images are displayed with a wrong ratio in quarantine.
  - General enhancement of Lightbox display on IE 7/8/9.

## 3.7.5 (2013-01-09)

  - Support of Dailymotion latest API.
  - BugFix : : Bridge application creation is not possible after having upload a file.
  - Upload speed is now in octet (previously in bytes).
  - Upload is de-activated when no data box is mounted.
  - BugFix : : Lightbox display is broken on IE 7/8.
  - BugFix : : Collection setup via console throws an exception.
  - BugFix : : Metadata extraction via Dublin Core mapping returns broken data.
  - BugFix : : Minilogos with a size less than 24px are resized.
  - BugFix : : Watermark custom files are not handled correctly.
  - BugFix : : XML import to metadata fields that do not have proper source do not work correctly.
  - BugFix : : Databox unmount can provide 500's to users that have attached stories to their work zone.

## 3.7.4 (2012-12-20)

  - BugFix : : Upgrade from 3.5 may lose metadatas.
  - BugFix : : Selection of a metadata source do not behave correctly.
  - BugFix : : Remember collections selection on production reload.
  - BugFix : : Manually renew a developer token fails.
  - BugFix : : Terms Of Use template displays HTML entitites.
  - Replace javascript alert by Phraseanet dialog box in export dialog box.
  - Video subdef GOP option has now 300 as max value with steps of 10.
  - BugFix : : Some subdef options are not saved correctly (audio samplerate, GOP).
  - Support for multi-layered tiff.
  - BugFix : : Long collection names are not displayed correctly.
  - BugFix : : Document permalinks were not correctly supported.
  - BugFix : : Export name containing non ASCII are now escaped.
  - Default structure now have a the thumbtitle attribute correctly set up.
  - Chrome mobile User Agent is now supported.
  - BugFix : : Remove minilogos do not work.
  - BugFix : : Send orders do not triggers notifications.
  - BugFix : : Story thumbnails are not displayed correctly.
  - BugFix : : Add dutch (nl_NL) support.

## 3.7.3 (2012-11-09)

  - BugFix : : Security flaw (thanks TEHTRI-Security http://www.tehtri-security.com/).
  - BugFix : : Thesaurus issue when a term contains HTML entity.
  - BugFix : : Video width and height are now multiple of 16.
  - BugFix : : Download over HTTPS on IE 6 fails.
  - BugFix : : Permalinks that embeds PDF are broken.
  - BugFix : : Lightbox shows record preview at load even if the user does not have the right to access it.
  - BugFix : : Reminders that have been sent to validation participants are not saved.
  - BugFix : : IE 6 is now correctly handled in Classic module.
  - BugFix : : Download of a basket with a title containing a slash ('/') fails.
  - BugFix : : Add check on posix extension alongside pcntl extension.
  - BugFix : : Some process may fail with pcntl extension.
  - File-info mime-type guesser is deprecated in favor of binary mime-type guesser.
  - Add an option to force Terms of Use re-validation for each export.
  - Move binary configuration to config file (config/binaries.yml).
  - Lazy load thumbnails in result view.
  - When duplicating rights (at collection creation), quotas, masks and time-restrictions are now copied.
  - Add Wincache support.
  - Add Dutch localization.
  - Add Expiration cache strategy for thumbnail-class sub definitions.
  - Display job and company in Push / Validation user search results.
  - Add a captcha field for registration.
  - Bridge accounts are now deletable.
  - Mails links are now clickable in Thunderbird and Outlook.
  - Emails list in mail export now supports comma and space separators.

## 3.7.2 (2012-10-04)

  - Significant speed enhancement on thumbnail display.
  - Add a purge option to quarantine.
  - BugFix : ascending date sort in search results.
  - Multiple thesaurus fixes on IE.
  - BugFix : description field source selection.
  - Add option to rotate multiple image.
  - `Remember-me` was applied even if the box was not checked.

## 3.7.1 (2012-09-18)

  - Multiple fixes in archive task.
  - Add options -f and -y to upgrade command.
  - Add a Flash fallback for browser that does not support HTML5 file API.
  - BugFix : upgrade from version 3.1 and 3.5.
  - BugFix : : Print tool is not working on IE version 8 and less over HTTPS.

## 3.7.0 (2012-07-24)

  - Lots of graphics enhancements.
  - Windows Server 2008 support.
  - Add business fields.
  - Add new video formats (HTML5 compatibility).
  - Add target devices for subviews.
  - Thumbnail extraction tool for videos.
  - Upgrade of the Phraseanet API to version 1.2 (see https://docs.phraseanet.com/3.7/en/Devel/API/Changelog.html#id1).
  - Phraseanet PHP SDK http://phraseanet-php-sdk.readthedocs.org/.

## 3.6.5 (2012-05-11)

  - BugFix : : Bridge buttons are not visible on some browsers.
  - Youtube and Dailymotion APIs updates.
  - Stories can now be deleted from the work zone.
  - Push and validation logs were missing.

## 3.6.4 (2012-04-30)

  - BugFix : DatePicker menus do not format date correctly.
  - BugFix : Dead records can remain in orders and may broke order window.

## 3.6.3 (2012-04-26)

  - BugFix : selection in webkit based browers.

## 3.6.2 (2012-04-19)

  - BugFix : : Users can be created by some pushers.
  - BugFix : : Collection owner can not disable watermark.
  - BugFix : : Basket element reorder issues.
  - BugFix : : Multiple order managers can not be added.
  - BugFix : : Basket editing can fail.
  - Remove original file extension for downloaded files.
  - Template is not applied when importing users from a file.
  - Document + XML hot folder import produces corrupted files.
  - Enhanced Push list view on small device.

## 3.6.1 (2012-03-27)

  - BugFix : upgrade from 3.5 versions with large datasets.

## 3.6.0 (2012-03-20)

  - Add a Vocabulary mapping to multivalued fields.
  - Redesign of Push and Feedback.
  - Add shareable users list for use with Push and Feedback.
  - WorkZone sidebar redesign.
  - Add an `archive` flag to baskets.
  - Add a basket browser to browse archived baskets.
  - New API 1.1, not compliant with 1.0, see release note v3.6 https://docs.phraseanet.com/3.6/en/Admin/Upgrade/3.6.html.
