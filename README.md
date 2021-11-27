# Nilam

This is an auction application just like eBay. Using firebase as the backend for signup & sign-in functionality.
In addition to that, it's a two pages application with user bid in input and counts down view.

## Task Completed & Challenges:

1. Sign in using a Google account. The complete procedure is given below.

## 1. Sign-in using a Google account

Watch this video to learn about google sign in: [Google SignIn with Flutter](https://www.youtube.com/watch?v=Q00Foa8CiDk&t=833s)

### Apple firebase setup:

Follow the video carefully for ios setup.

### Android firebase setup:

For SSH1 fingerprint: from your terminal, go to the "android" folder

```
$ cd android
$ ./gradlew signingReport
```

Before doing that, make sure that Java Environment is already set up on your computer. 
<img style="align:center;" width="100%" height="auto" src="screenshots/SHA1.png" />
Copy & paste this SHA1 key to the firebase insert box befire generating the "google-services.json" file.
