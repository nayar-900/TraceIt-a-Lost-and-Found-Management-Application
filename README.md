
📱 TraceIt: Lost and Found App
TraceIt is a modern Android application designed to bridge the gap between people who have lost belongings and those who have found them. It provides a secure, user-friendly, and efficient platform to post, discover, and claim lost or found items. The system includes both User and Admin panels for enhanced usability and moderation.

🛠️ System Requirements
✅ Software
Operating System: Windows / macOS / Linux

Java Development Kit (JDK): 11 or higher

Android Studio: Arctic Fox (2020.3.1) or newer

Android SDK:

minSdk: 24 (Android 7.0 Nougat)

targetSdk: 35

compileSdk: 35

✅ Hardware
Minimum 4 GB RAM (8 GB recommended)

Stable internet connection for Firebase/Supabase integrations

✅ Libraries / Frameworks
Firebase SDK (Auth, Firestore, Storage)

Supabase SDK (optional)

Jetpack Compose, Kotlin Coroutines, Ktor, Coil, and others (see Credits)

🚀 Installation Instructions
1. Clone the Repository
bash
Copy
Edit
git clone <repository_url>
cd TraceIt
2. Open in Android Studio
Launch Android Studio

Select "Open Existing Project"

Choose the TraceIt directory

3. Sync Gradle
Use "Sync Project with Gradle Files" from the toolbar or allow auto-sync

4. Firebase Setup
Create a project on Firebase Console

Register your Android app

Download google-services.json and place it in the app/ directory

Enable:

Authentication

Firestore

Storage

5. Supabase Setup (Optional)
Create a project on Supabase

Configure the Supabase URL and Anon Key in your codebase
(Refer to Supabase documentation for proper integration)

📱 Usage Instructions
👤 For Users:
Register or login

Browse lost/found items

Post new items

Chat with users

Manage your profile

🛡️ For Admins:
Login with admin credentials

Access the admin dashboard

Manage users, items, and claims

📁 Code Structure
bash
Copy
Edit
TraceIt/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/example/snappy/    # Core logic: UI, Auth, DB, APIs
│   │   │   ├── res/                         # Layouts, icons, strings
│   │   │   └── AndroidManifest.xml          # App configurations
│   └── build.gradle.kts                     # App-level Gradle configuration
├── build.gradle.kts                         # Project-level Gradle configuration
├── README.md                                # Project documentation
✨ Features
👥 User Panel
Authentication (Sign Up, Login)

Post Lost/Found Items

Real-Time Chat

Search & Match Items

Ownership Verification

Profile Management

Support/Feedback Submission

🧑‍💼 Admin Panel
Admin Dashboard

User Management

Item & Claim Handling

Verification Review

Feedback & Reports

App-Wide Settings

🙌 Credits
👨‍💻 Team Members
Usman Ghani – Backend development, Firebase/MySQL integration, Admin features

Muhammad Shariq – UI/UX design, Android frontend, User interface

Rayan Badar – Data collection, QA testing, documentation, coordination

🧩 Third-Party Libraries & Tools
Firebase SDKs (Auth, Firestore, Storage)

Supabase SDK

Jetpack Compose

Kotlin Coroutines

Ktor

Coil

Google/Facebook SDKs

Material Icons Extended

Accompanist

AndroidX Datastore

Protobuf Lite

Media3 ExoPlayer

...and more

📬 Contact
For questions, contributions, or issues, feel free to open an Issue or contact the team.
