TraceIt: Lost and Found App
TraceIt is a comprehensive lost and found Android application that connects users who have lost items with those who have found them. It offers a seamless platform for posting lost/found items, managing user profiles, real-time communication, and verifying ownership. An integrated admin panel enables streamlined moderation and user support.
System Requirements
•	Software:
•	Operating System: Windows / macOS / Linux
•	Java Development Kit (JDK): 11 or higher
•	Android Studio: Arctic Fox (2020.3.1) or newer
•	Android SDK:
•	minSdk: 24 (Android 7.0 Nougat)
•	targetSdk: 35
•	compileSdk: 35
•	Hardware:
•	Minimum 4 GB RAM (8 GB recommended)
•	Stable internet connection for Firebase/Supabase integrations
•	Libraries/Frameworks:
•	Firebase SDK (Auth, Firestore, Storage), Supabase SDK (optional), Jetpack Compose, Kotlin Coroutines, Ktor, Coil, and others (listed in Credits)
Installation Instructions
1. Clone the Repository
git clone <repository_url>
cd TraceIt
2. Open in Android Studio
1.	Launch Android Studio and open the `TraceIt` directory as an existing project.
3. Sync Gradle
2.	Sync project via the toolbar or auto prompt.
4. Firebase Setup
3.	Create a Firebase project, add your app, download `google-services.json`, place it in `app/`, and enable Authentication, Firestore, and Storage.
5. Supabase Setup (optional)
4.	Configure Supabase URL and Anon key in your codebase (refer to Supabase docs).
Usage Instructions
•	For Users:
•	Launch the app, register/login, browse items, post items, chat with users, manage profile.
•	For Admins:
•	Login with an admin account, access dashboard, manage users/items/claims.
Code Structure

TraceIt/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/example/snappy/         # Core Kotlin logic (UI, Auth, API, DB, etc.)
│   │   │   ├── res/                             # UI resources: layouts, strings, icons
│   │   │   └── AndroidManifest.xml              # App permissions, activities
│   └── build.gradle.kts                         # App-level Gradle config
├── build.gradle.kts                             # Project-level Gradle config
├── README.md                                     # This file

Features
•	User Panel:
•	Authentication, Item Listings, Chat, Search & Match, Verification, Profile Settings, Support
•	Admin Panel:
•	Dashboard, User Management, Item Management, Verification Handling, Feedback, Global Settings
Credits
•	Team Members:
•	Usman Ghani – Backend development, MySQL & Firebase integration, admin features
•	Muhammad Shariq – UI/UX design, Android development, user screens
•	Rayan Badar – Data collection, documentation, testing, coordination
•	Third-Party Libraries & Services:
•	Firebase, Supabase, Jetpack Compose, Ktor, Coil, Kotlin Coroutines, Google/Facebook SDKs, Material Icons Extended, Accompanist, AndroidX Datastore, Protobuf Lite, Media3 ExoPlayer, and others.
