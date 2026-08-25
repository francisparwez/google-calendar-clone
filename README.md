# 📅 Course Calendar Project

A sleek, interactive Google Calendar clone built using web technologies to manage and track course schedules, instructor assignments, and appointments. This project includes a persistent daily clock, a dynamic calendar grid interface, and modal menus for appointment scheduling.

## 🚀 Features Implemented So Far

- **Semantic HTML5 Architecture:** Fully structured layout with explicit headers, sections, and container workflows.
- **Live Clock Widget:** Dedicated layout container (`#clock`) designed for real-time localized time tracking.
- **Dynamic Navigation UI:** Backward/forward navigation buttons to shift seamlessly between monthly views.
- **Responsive Grid:** Core layout engine configured for responsive calendar rendering (`.calendar-grid`).
- **Action Modals:** Centralized interactive pop-up framework for managing event operations (`#eventModal`).
- **Multi-Action Form Handling:**
  - **Add/Edit Input Matrix:** Fields tailored for Course Title, Instructor Name, Start Date, and End Date.
  - **Secure CRUD Routing:** Dedicated operational routing tags (`POST` method tracking actions) equipped with deletion confirmation safeguards.

## 🛠️ Tech Stack

- **Frontend:** HTML5, CSS3 (`style.css`), JavaScript (`script.js`).
- **Backend Support:** Core structure configured in PHP formatting contexts (`index.php`).

## 📂 Project Structure

```text
├── index.php         # Main view file containing layout grid structure and action modals
├── style.css         # Document layout and presentation stylesheet
└── script.js         # Interactive calendar logic and active event routines
```

## ⚙️ Installation & Local Setup

To run this project locally, ensure you have a local server environment tool installed (such as **XAMPP**, **MAMP**, or **Laragon**).

1. Clone this repository into your local server root directory (e.g., `htdocs` or `www` folder):
   ```bash
   git clone https://github.com
   ```
2. Start your Apache server module.
3. Access the portal via your web browser:
   ```text
   http://localhost/calendar-project/index.php
   ```

## 📝 Roadmap & Next Steps

- [ ] Write the JavaScript calendar algorithm in `script.js` to render the correct number of days per month.
- [ ] Inject active real-time updates into the `#clock` selector using JavaScript `setInterval`.
- [ ] Style the modal layer using CSS absolute positioning and clean backdrop filters.
- [ ] Initialize a MySQL database table to securely store appointment parameters persistently.
