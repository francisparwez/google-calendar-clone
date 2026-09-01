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
- **JavaScript Calendar Rendering & Interaction Logic:**
  - Dynamically calculates the selected month's total number of days.
  - Calculates the weekday on which the month begins and creates the required leading blank cells.
  - Dynamically displays the active month and year using `toLocaleDateString()`.
  - Generates weekday headers (`Sun` through `Sat`) programmatically.
  - Generates calendar day cells dynamically rather than relying on hard-coded dates.
  - Automatically highlights the current day with the `.today` class.
  - Filters appointment/event data by date before rendering events inside each calendar cell.
  - Dynamically creates event containers for course, instructor, and time information.
  - Displays course names and instructor names from stored event data.
  - Displays event start and end times inside each calendar event.
  - Adds interactive `+ Add` buttons to individual calendar days.
  - Adds `Edit` buttons to calendar days containing existing events.
  - Prevents overlay button clicks from triggering unwanted parent-cell interactions using `stopPropagation()`.
  - Implements an Add Event modal workflow with default form values.
  - Automatically assigns the selected calendar date to the start and end date fields when adding an event.
  - Implements an Edit Event modal workflow for existing appointments.
  - Dynamically generates an event selector when multiple events exist on the same date.
  - Stores complete event objects inside dynamically generated selector options using `JSON.stringify()`.
  - Populates the edit form from the selected event using `JSON.parse()`.
  - Separates stored event titles into course and instructor values.
  - Populates event ID, course, instructor, dates, and times when editing an appointment.
  - Implements modal closing functionality.
  - Implements previous/next month navigation using a reusable `changeMonth()` function.
  - Re-renders the calendar whenever the displayed month changes.
  - Implements a live digital clock using JavaScript's `Date` object.
  - Formats hours, minutes, and seconds as two-digit values using `padStart()`.
  - Automatically updates the digital clock every second using `setInterval()`.
  - Initializes the calendar and live clock when the JavaScript file loads.

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

### ✅ Completed

- [x] Initialize a MySQL database table to securely store appointment parameters persistently.
- [x] Implement PHP appointment CRUD logic.
- [x] Write the JavaScript calendar algorithm to calculate and render the correct number of days per month.
- [x] Dynamically render stored events inside their corresponding calendar cells.
- [x] Display course, instructor, and event time information.
- [x] Implement `+ Add` buttons for individual calendar dates.
- [x] Implement JavaScript modal controls for adding events.
- [x] Implement JavaScript modal controls for editing events.
- [x] Implement event selection when multiple events exist on the same date.
- [x] Populate the appointment form from a selected event.
- [x] Implement modal closing functionality.
- [x] Connect calendar navigation controls to re-render previous/next months dynamically.
- [x] Implement a real-time digital clock using JavaScript `setInterval()`.
- [x] Initialize the calendar and live clock when the application loads.

### 🔜 Upcoming

- [ ] Connect the JavaScript event interactions fully with the PHP/MySQL CRUD workflow.
- [ ] Add and test event creation from the JavaScript modal.
- [ ] Add and test event editing from the JavaScript modal.
- [ ] Add and test event deletion from the JavaScript interface.
- [ ] Add event selector change handling for selecting different events on the same date.
- [ ] Refine modal styling (`.modal`) using clean backdrop filters and fixed positioning.
- [ ] Add stronger JavaScript validation for event fields and date/time inputs.
- [ ] Test calendar behavior across different months, years, and edge cases.
- [ ] Polish responsive behavior and overall user interaction.
