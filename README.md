
# TraceIt – Lost and Found App

**TraceIt** is a powerful and user-friendly lost & found Android app that connects people who have lost items with those who have found them. Built with Jetpack Compose and powered by Firebase, it enables users to post, browse, and manage lost/found items seamlessly—with built-in chat, profile management, and an admin panel for moderation.

---

## Features

* **Lost & Found Listings:** Post items with images, descriptions, and locations
* **Real-Time Chat:** Communicate directly with item finders or owners
* **Profile Management:** Edit your details and view your post history
* **Admin Panel:** Manage users, moderate items, and handle verifications
* **Verification System:** Help ensure items are claimed by rightful owners
* **Responsive UI:** Built with Jetpack Compose for a modern and smooth experience

---

## 🛠Tech Stack

* **Kotlin:** Primary language for development
* **Jetpack Compose:** Declarative UI toolkit for Android
* **Firebase SDK:** Authentication, Firestore, Storage
* **Supabase (Optional):** Secondary backend service
* **Ktor & Coil:** Networking and image loading
* **AndroidX Libraries:** Navigation, Datastore, Media3, etc.

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/TraceIt.git
```

2. Open the project in **Android Studio**
3. Sync Gradle and allow dependencies to install
4. Set up **Firebase**:

   * Create a Firebase project
   * Add Android app credentials
   * Download and place `google-services.json` in the `/app` folder
   * Enable **Authentication**, **Firestore**, and **Storage**
5. (Optional) Set up **Supabase** if needed by configuring URL and Anon Key in the codebase

---

## Project Structure

* **UI:** Compose-based screens and components
* **Auth:** Firebase login, signup, and session handling
* **Database:** Firestore (primary) + optional Supabase support
* **Admin:** Dashboard for managing users, posts, and claims
* **Resources:** Layouts, icons, and theme files

```
TraceIt/
├── app/
│   ├── src/main/
│   │   ├── java/com/example/snappy/       # App logic, UI, and services
│   │   ├── res/                            # Drawables, strings, themes
│   │   └── AndroidManifest.xml
│   └── build.gradle.kts
├── build.gradle.kts
├── README.md
```

---

## Contributing

We welcome contributions ... ! Feel free to fork the repository, fix bugs, enhance features, and submit a pull request. Let’s improve TraceIt together.

---

## License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## Contact

For any questions, feedback, or feature suggestions, feel free to open an issue or reach out via [GitHub Issues](https://github.com/yourusername/TraceIt/issues).

---
