# 🩺 Healio – Your Personal Health Companion

**Healio** is a cross-platform mobile application built with Flutter, designed to empower users to manage their health more efficiently. Whether you're booking appointments, tracking medications, or reviewing lab results, Healio provides a seamless and secure health management experience—right from your phone.

---

## 🚀 Features

- 🧭 **Interactive Onboarding Screens** – Smooth and informative onboarding experience
- 👤 **User Authentication** – Secure login and registration using Firebase Auth
- 👨‍⚕️ **Doctor Directory** – Browse and view professional doctor profiles
- 📅 **Appointment Management** – Book, cancel, and view upcoming medical appointments
- 💊 **Prescription & Medication Tracker** – Manage active prescriptions and set reminders
- 🔬 **Lab Reports Viewer** – Securely upload and view lab test results
- 📡 **IoT Health Device Integration** – Real-time data tracking from compatible devices
- 🧾 **Consultation History** – View and manage previous consultations
- 🎨 **Custom UI/UX** – Clean and responsive UI, built with Google Fonts, custom animations, and intuitive navigation

---

## 🧰 Tech Stack

- **Flutter (Dart)**
- **Firebase Authentication**
- **FlutterFlow (Initial Build)**
- **Google Fonts & Lottie Animations**
- **State Management**: `setState()` for MVP, scalable to Provider/Bloc
- **go_router** for declarative navigation

---

## 📸 Screenshots

Here are some previews of the Healio app in action:

### 🧭 Onboarding Experience


![Onboarding 1](https://github.com/user-attachments/assets/53961306-125f-40a1-b097-e759fca365a1)



### 🏠 Home & Navigation







## 📁 Folder Structure (Simplified)


│
├── main.dart
├── app/
│ ├── routes.dart
│ ├── themes.dart
│ └── constants.dart
├── screens/
│ ├── onboarding/
│ ├── auth/
│ ├── home/
│ ├── doctor/
│ ├── appointments/
│ ├── prescription/
│ └── lab![Home](https://github.com/user-attachments/assets/fab973c0-d9e7-497c-bd4a-071d69b0e6bd)
/
├── widgets/
│ ├── custom_buttons.dart
│ └── input_fields.dart
└── services/
├── auth_service.dart
└── database_service.dart

yaml
Copy
Edit

---

## ⚙️ Getting Started

### Prerequisites

- Flutter SDK (version >= 3.19.x)
- Firebase project (for authentication & storage)
- VSCode or Android Studio

---
## 🧪 Project Status
🛠️ The project is under active development. FlutterFlow-generated code is currently being refactored into clean, production-grade Flutter code with modular architecture and clear documentation for beginners.

---

🙌 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

To contribute:

bash
Copy
Edit
# Fork the repository
# Create a new branch
git checkout -b feature-name
# Make your changes
# Commit and push
git commit -m "Add new feature"
git push origin feature-name
# Create a Pull Request


## Installation

```bash
git clone https://github.com/folorunsho-roberts/healio.git
cd healio
flutter pub get
Firebase Setup
Create a Firebase project at https://console.firebase.google.com

Add Android and/or iOS app

Download google-services.json and/or GoogleService-Info.plist to /android/app or /ios/Runner respectively

Enable Email/Password sign-in method

Run the app:

bash
Copy
Edit
flutter run


