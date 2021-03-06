.headers on
.mode csv

-- Gets the unique list of locations
-- for all actors who performed one of the "contribution"
-- event types for any of the top 200 repos
SELECT DISTINCT(actor_attributes_location) AS location
FROM event
WHERE
  type IN (
    'IssuesEvent',
    'PublicEvent',
    'PullRequestEvent',
    'PushEvent'
  )
  AND repository_url IN (
    'https://github.com/twitter/bootstrap',
    'https://github.com/octocat/Spoon-Knife',
    'https://github.com/mxcl/homebrew',
    'https://github.com/rails/rails',
    'https://github.com/h5bp/html5-boilerplate',
    'https://github.com/jquery/jquery',
    'https://github.com/saasbook/hw3_rottenpotatoes',
    'https://github.com/joyent/node',
    'https://github.com/robbyrussell/oh-my-zsh',
    'https://github.com/phonegap/phonegap-start',
    'https://github.com/bartaz/impress.js',
    'https://github.com/documentcloud/backbone',
    'https://github.com/mbostock/d3',
    'https://github.com/torvalds/linux',
    'https://github.com/saasbook/hw4_rottenpotatoes',
    'https://github.com/purplecabbage/phonegap-plugins',
    'https://github.com/github/gitignore',
    'https://github.com/wakaleo/game-of-life',
    'https://github.com/EllisLab/CodeIgniter',
    'https://github.com/symfony/symfony',
    'https://github.com/jquery/jquery-ui',
    'https://github.com/mrdoob/three.js',
    'https://github.com/django/django',
    'https://github.com/harvesthq/chosen',
    'https://github.com/blueimp/jQuery-File-Upload',
    'https://github.com/imathis/octopress',
    'https://github.com/hakimel/reveal.js',
    'https://github.com/zendframework/zf2',
    'https://github.com/zurb/foundation',
    'https://github.com/diaspora/diaspora',
    'https://github.com/jquery/jquery-mobile',
    'https://github.com/mojombo/jekyll',
    'https://github.com/angular/angular.js',
    'https://github.com/gitlabhq/gitlabhq',
    'https://github.com/mathiasbynens/dotfiles',
    'https://github.com/fdv/typo',
    'https://github.com/TrinityCore/TrinityCore',
    'https://github.com/adobe/brackets',
    'https://github.com/git/git',
    'https://github.com/AFNetworking/AFNetworking',
    'https://github.com/addyosmani/todomvc',
    'https://github.com/spree/spree',
    'https://github.com/cloudhead/less.js',
    'https://github.com/facebook/facebook-php-sdk',
    'https://github.com/plataformatec/devise',
    'https://github.com/FortAwesome/Font-Awesome',
    'https://github.com/JakeWharton/ActionBarSherlock',
    'https://github.com/facebook/three20',
    'https://github.com/douglascrockford/JSON-js',
    'https://github.com/antirez/redis',
    'https://github.com/visionmedia/express',
    'https://github.com/textmate/textmate',
    'https://github.com/carhartl/jquery-cookie',
    'https://github.com/facebook/facebook-ios-sdk',
    'https://github.com/documentcloud/underscore',
    'https://github.com/cakephp/cakephp',
    'https://github.com/emberjs/ember.js',
    'https://github.com/xbmc/xbmc',
    'https://github.com/necolas/normalize.css',
    'https://github.com/github/game-off-2012',
    'https://github.com/facebook/php-sdk',
    'https://github.com/progit/progit',
    'https://github.com/LearnBoost/socket.io',
    'https://github.com/laravel/laravel',
    'https://github.com/gregbell/active_admin',
    'https://github.com/discourse/discourse',
    'https://github.com/facebook/tornado',
    'https://github.com/ajaxorg/ace',
    'https://github.com/CocoaPods/Specs',
    'https://github.com/bigbluebutton/bigbluebutton',
    'https://github.com/Shopify/active_merchant',
    'https://github.com/github/markup',
    'https://github.com/mailchimp/Email-Blueprints',
    'https://github.com/mangos/server',
    'https://github.com/mangos/MaNGOS-Foundation',
    'https://github.com/mitsuhiko/flask',
    'https://github.com/browsermedia/browsercms',
    'https://github.com/facebook/facebook-android-sdk',
    'https://github.com/learnstreet-dev/learnstreet',
    'https://github.com/thoughtbot/paperclip',
    'https://github.com/uavana/android',
    'https://github.com/midgetspy/Sick-Beard',
    'https://github.com/jfeinstein10/SlidingMenu',
    'https://github.com/Bukkit/CraftBukkit',
    'https://github.com/RestKit/RestKit',
    'https://github.com/meteor/meteor',
    'https://github.com/yiisoft/yii',
    'https://github.com/KellyMahan/android_frameworks_base',
    'https://github.com/Widen/fine-uploader',
    'https://github.com/Modernizr/Modernizr',
    'https://github.com/wbond/package_control_channel',
    'https://github.com/ivaynberg/select2',
    'https://github.com/valums/file-uploader',
    'https://github.com/remy/html5demos',
    'https://github.com/SpringSource/spring-framework',
    'https://github.com/sferik/rails_admin',
    'https://github.com/resque/resque',
    'https://github.com/playframework/Play20',
    'https://github.com/pokeb/asi-http-request',
    'https://github.com/refinery/refinerycms',
    'https://github.com/technomancy/emacs-starter-kit',
    'https://github.com/jdg/MBProgressHUD',
    'https://github.com/OpenGG/OpenGG',
    'https://github.com/github/hubot-scripts',
    'https://github.com/ruby/ruby',
    'https://github.com/daneden/animate.css',
    'https://github.com/defunkt/resque',
    'https://github.com/mozilla/pdf.js',
    'https://github.com/bitcoin/bitcoin',
    'https://github.com/kohsuke/hudson',
    'https://github.com/kennethreitz/requests',
    'https://github.com/nathanmarz/storm',
    'https://github.com/ajaxorg/cloud9',
    'https://github.com/sintaxi/phonegap',
    'https://github.com/janl/mustache.js',
    'https://github.com/moodle/moodle',
    'https://github.com/jashkenas/coffee-script',
    'https://github.com/cocos2d/cocos2d-x',
    'https://github.com/opscode/cookbooks',
    'https://github.com/bmizerany/sinatra',
    'https://github.com/elasticsearch/elasticsearch',
    'https://github.com/symfony/symfony-docs',
    'https://github.com/reddit/reddit',
    'https://github.com/mongoid/mongoid',
    'https://github.com/neo/ruby_koans',
    'https://github.com/mongodb/mongo',
    'https://github.com/libgdx/libgdx',
    'https://github.com/php/php-src',
    'https://github.com/Leaflet/Leaflet',
    'https://github.com/WordPress/WordPress',
    'https://github.com/boto/boto',
    'https://github.com/github/hubot',
    'https://github.com/opscode/chef',
    'https://github.com/edgecase/ruby_koans',
    'https://github.com/retlehs/roots',
    'https://github.com/scottjehl/Respond',
    'https://github.com/svenfuchs/rails-i18n',
    'https://github.com/fog/fog',
    'https://github.com/Khan/khan-exercises',
    'https://github.com/TTimo/doom3.gpl',
    'https://github.com/ariya/phantomjs',
    'https://github.com/Bukkit/Bukkit',
    'https://github.com/tobi/delayed_job',
    'https://github.com/holman/dotfiles',
    'https://github.com/github/github-services',
    'https://github.com/JakeWharton/Android-ViewPagerIndicator',
    'https://github.com/mozilla/BrowserQuest',
    'https://github.com/rapid7/metasploit-framework',
    'https://github.com/github/android',
    'https://github.com/mitchellh/vagrant',
    'https://github.com/lockitron/selfstarter',
    'https://github.com/wildfly/wildfly',
    'https://github.com/nnnick/Chart.js',
    'https://github.com/jbossas/jboss-as',
    'https://github.com/eternicode/bootstrap-datepicker',
    'https://github.com/addyosmani/backbone-fundamentals',
    'https://github.com/rs/SDWebImage',
    'https://github.com/jzaefferer/jquery-validation',
    'https://github.com/thomasdavis/backbonetutorials',
    'https://github.com/mozilla-b2g/gaia',
    'https://github.com/madrobby/zepto',
    'https://github.com/divio/django-cms',
    'https://github.com/olton/Metro-UI-CSS',
    'https://github.com/BradLarson/GPUImage',
    'https://github.com/doctrine/doctrine2',
    'https://github.com/chriseppstein/compass',
    'https://github.com/edavis10/redmine',
    'https://github.com/johnezang/JSONKit',
    'https://github.com/timrwood/moment',
    'https://github.com/cocos2d/cocos2d-iphone',
    'https://github.com/android/platform_frameworks_base',
    'https://github.com/arduino/Arduino',
    'https://github.com/chriskempson/tomorrow-theme',
    'https://github.com/Netflix/Cloud-Prize',
    'https://github.com/facebook/hiphop-php',
    'https://github.com/DmitryBaranovskiy/raphael',
    'https://github.com/mono/MonoGame',
    'https://github.com/altercation/solarized',
    'https://github.com/angular/angular-seed',
    'https://github.com/venomous0x/WhatsAPI',
    'https://github.com/mleibman/SlickGrid',
    'https://github.com/toastdriven/django-tastypie',
    'https://github.com/SignalR/SignalR',
    'https://github.com/desandro/masonry',
    'https://github.com/carlhuda/bundler',
    'https://github.com/ryanb/dotfiles',
    'https://github.com/daproy/android_packages_apps_Settings',
    'https://github.com/marijnh/CodeMirror',
    'https://github.com/astaxie/build-web-application-with-golang',
    'https://github.com/loopj/jquery-tokeninput',
    'https://github.com/blasten/turn.js',
    'https://github.com/visionmedia/jade',
    'https://github.com/seajs/seajs',
    'https://github.com/pyrocms/pyrocms',
    'https://github.com/nvie/gitflow',
    'https://github.com/cucumber/cucumber',
    'https://github.com/appcelerator/titanium_mobile',
    'https://github.com/zencoder/video-js',
    'https://github.com/fatfreecrm/fat_free_crm',
    'https://github.com/jnicklas/capybara'
  )
ORDER BY location;
