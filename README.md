# 📅 Google Calendar Clone

A sleek, interactive Google Calendar clone built using web technologies to manage and track course schedules, instructor assignments, and appointments. This project includes a persistent daily clock, a dynamic calendar grid interface, and modal menus for appointment scheduling.

## 🚀 Features Implemented So Far

- **Semantic HTML5 Architecture:** Fully structured layout with explicit headers, sections, and container workflows.
- **Live Clock Widget Layout:** Dedicated layout container (`#clock`) inside a styled, tracking clock banner (`.clock-container`) built for clean text rendering and letter-spacing.
- **Dynamic Navigation UI:** Backward/forward navigation buttons equipped with smooth scaling hover animations and keyboard focus accessibility indicators.
- **Responsive Calendar Layout Engine:**
  - **Desktop:** A clean 7-column CSS Grid layout managing day cells efficiently.
  - **Mobile/Tablets:** Automatic transformation into a smooth, horizontal scroll-snapping track preventing text overflow on smaller screens.
- **Modern UI Styling System:** Uses CSS root variables for a unified blue color palette, alert box messaging statuses (success/error states), and a reduced-motion media query fallback for enhanced accessibility.
- **Action Modals:** Centralized interactive pop-up framework for managing event operations (`#eventModal`).
- **Multi-Action Form Handling:**
  - **Add/Edit Input Matrix:** Fields tailored for Course Title, Instructor Name, Start Date, and End Date.
  - **Secure CRUD Routing:** Dedicated operational routing tags (`POST` method tracking actions) equipped with deletion confirmation safeguards.
- **PHP Appointment CRUD:** Backend appointment create, update, and delete workflow implemented through the PHP layer.
- **JavaScript Calendar Rendering Logic (Part 1):**
  - Dynamically calculates the selected month's total number of days.
  - Calculates the weekday on which the month begins and creates the required leading blank cells.
  - Dynamically displays the active month and year using `toLocaleDateString()`.
  - Generates weekday headers (`Sun` through `Sat`) programmatically.
  - Generates calendar day cells dynamically rather than relying on hard-coded dates.
  - Automatically highlights the current day with the `.today` class.
  - Filters appointment/event data by date before preparing event information for each calendar cell.
  - Begins separating event information into course, instructor, and time elements for calendar display.
  - Initializes the `#eventModal` element reference in JavaScript as groundwork for the next modal-control stage.

## 🛠️ Tech Stack

- **Frontend:** HTML5, CSS3 (`style.css` with native CSS variables and responsive media breakpoints), JavaScript (`script.js`).
- **Backend:** PHP (`index.php`, appointment CRUD logic, and database connection).
- **Database:** MySQL for persistent appointment storage.

## 📂 Project Structure

```text
├── index.php         # Main view file containing layout grid structure and action modals
├── style.css         # Complete document stylesheet featuring variables, grid systems, and responsiveness
├── script.js         # Dynamic calendar rendering and interactive event logic
├── connection.php    # MySQL database connection
├── calendar.php      # PHP calendar/appointment backend logic
├── mysql-scripts/
│   └── 1-schema.sql  # Database schema
└── README.md         # Project documentation
```

## ⚙️ Installation & Local Setup

To run this project locally, ensure you have a local server environment tool installed (such as **XAMPP**, **MAMP**, or **Laragon**).

1. Clone this repository into your local server root directory (e.g., `htdocs` or `www` folder):
   ```bash
   git clone https://github.com
   ```

2. Start your Apache server module and MySQL service.

3. Ensure the database schema has been created using the SQL script in `mysql-scripts/1-schema.sql`.

4. Access the portal via your web browser:
   ```text
   http://localhost/calendar-project/index.php
   ```

## 📝 Roadmap & Next Steps

- [x] Initialize a MySQL database table to securely store appointment parameters persistently.
- [x] Implement PHP appointment CRUD logic.
- [x] Write the JavaScript calendar algorithm to calculate and render the correct number of days per month.
- [ ] Complete JavaScript event rendering by appending generated event elements to their calendar cells.
- [ ] Implement JavaScript modal controls for opening, closing, and populating the appointment modal.
- [ ] Inject active real-time updates into the `#clock` selector using JavaScript `setInterval`.
- [ ] Connect calendar navigation controls to re-render previous/next months dynamically.
- [ ] Refine modal styling (`.modal`) using clean backdrop filters and fixed positioning to match the rest of the application UI.
