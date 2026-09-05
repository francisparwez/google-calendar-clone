# 📅 Google Calendar Clone

A sleek, interactive Google Calendar clone built using web technologies to manage and track course schedules, instructor assignments, and appointments. This project includes a persistent daily clock, a dynamic calendar grid interface, modal menus for appointment scheduling, and time-based appointment support.

## 🚀 Features Implemented So Far

- **Semantic HTML5 Architecture:** Fully structured layout with explicit headers, sections, and container workflows.

- **Live Clock Widget Layout:** Dedicated layout container (`#clock`) inside a styled, tracking clock banner (`.clock-container`) built for clean text rendering and letter-spacing.

- **Dynamic Navigation UI:** Backward/forward navigation buttons equipped with smooth scaling hover animations and keyboard focus accessibility indicators.

- **Responsive Calendar Layout Engine:**
  - **Desktop:** A clean 7-column CSS Grid layout managing day cells efficiently.
  - **Mobile/Tablets:** Automatic transformation into a smooth, horizontal scroll-snapping track preventing text overflow on smaller screens.

- **Modern UI Styling System:**
  - Uses CSS root variables for a unified blue color palette.
  - Includes success and error alert messaging states.
  - Includes reduced-motion media query support for improved accessibility.
  - Provides consistent spacing, borders, shadows, and visual hierarchy throughout the calendar interface.

- **Action Modals:** Centralized interactive pop-up framework for managing event operations through `#eventModal`.

- **Multi-Action Form Handling:**
  - Add/Edit input fields for Course Title, Instructor Name, Start Date, End Date, Start Time, and End Time.
  - Dedicated hidden fields for event IDs and form actions.
  - Separate operational routing for add, edit, and delete actions.
  - Deletion confirmation safeguards.

- **PHP Appointment CRUD:**
  - Implemented appointment creation using PHP prepared statements.
  - Implemented appointment editing using PHP prepared statements.
  - Implemented appointment deletion using PHP prepared statements.
  - Added success messages for add, edit, and delete operations.
  - Added error handling through query-string status messages.
  - Added input trimming and basic required-field validation.
  - Uses `bind_param()` for parameterized database operations.

- **Database Time Support:**
  - Added `start_time` column to the `appointments` table.
  - Added `end_time` column to the `appointments` table.
  - Both columns use the MySQL `TIME` data type.
  - Time columns are integrated into appointment INSERT operations.
  - Time columns are integrated into appointment UPDATE operations.
  - Time values are retrieved when appointments are fetched from MySQL.

- **PHP Date-Range Event Expansion:**
  - Fetches appointments from the `appointments` table.
  - Converts appointment start and end dates into `DateTime` objects.
  - Expands multi-day appointments into individual calendar events.
  - Generates one calendar event for each date between the appointment start and end dates.
  - Preserves the original appointment ID, title, start date, end date, start time, and end time for each generated event.

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
  - Reads `start_time` and `end_time` values supplied by the PHP backend.
  - Displays formatted event time information directly inside each calendar event.
  - Uses dynamically generated event objects to keep date and time information together.
  - Adds interactive `+ Add` buttons to individual calendar days.
  - Adds `Edit` buttons to calendar days containing existing events.
  - Prevents overlay button clicks from triggering unwanted parent-cell interactions using `stopPropagation()`.
  - Implements an Add Event modal workflow with default form values.
  - Automatically assigns the selected calendar date to the start and end date fields when adding an event.
  - Provides default start and end times when creating a new appointment.
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

## ⏰ Time Slot Support

- Added **Start Time** input to the appointment form.
- Added **End Time** input to the appointment form.
- Added time input fields using HTML5 `type="time"`.
- Added required validation to both start and end time fields.
- Added dedicated event time styling through `.event .time`.
- Improved event layout to display course, instructor, and time information vertically.
- Added `.event-meta` styling for event metadata and time-related information.
- Improved event spacing, padding, border radius, and visual hierarchy.
- Added a subtle event shadow and refined hover scaling behavior.
- Stores appointment start and end times in MySQL using the `TIME` datatype.
- Transfers stored time values from PHP to JavaScript through the generated event data.
- Displays the time range alongside the course and instructor information in calendar events.

## 🛠️ Tech Stack

- **Frontend:** HTML5, CSS3 (`style.css` with native CSS variables and responsive media breakpoints), JavaScript (`script.js`).
- **Backend:** PHP (`index.php`, appointment CRUD logic, and database connection).
- **Database:** MySQL for persistent appointment storage.

Replace that entire structure with:

`````markdown
## 📂 Project Structure

````text
├── index.php             # Main view file containing calendar layout and appointment modal
├── style.css             # Complete document stylesheet with responsive calendar and event styling
├── script.js             # Dynamic calendar rendering, navigation, event display, and modal interaction
├── connection.php        # MySQL database connection
├── calendar.php          # PHP appointment CRUD and database event retrieval logic
├── mysql-scripts/
│   ├── 1-schema.sql      # Initial database and appointments table schema
│   └── 2-alter-table.sql # Adds Start Time and End Time columns to appointments
└── README.md             # Project documentation

## ⚙️ Installation & Local Setup

To run this project locally, ensure you have a local server environment tool installed (such as **XAMPP**, **MAMP**, or **Laragon**).

1. Clone this repository into your local server root directory (e.g., `htdocs` or `www` folder):

   ```bash
   git clone https://github.com
````
`````

````

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
- [x] Add Start Time and End Time fields to the appointment form.
- [x] Add HTML5 time input validation using type="time" and required.
- [x] Display event time information inside calendar events.
- [x] Improve event styling for course, instructor, and time metadata.
- [x] Improve event spacing, padding, shadows, and hover behavior.
- [x] Add `start_time` and `end_time` columns to the MySQL `appointments` table.
- [x] Create `2-alter-table.sql` for the appointment time column changes.
- [x] Update PHP appointment INSERT logic to save start and end times.
- [x] Update PHP appointment UPDATE logic to modify start and end times.
- [x] Update PHP appointment retrieval logic to include start and end times.
- [x] Pass appointment time data from PHP to JavaScript.
- [x] Render appointment time ranges dynamically inside calendar events.
- [x] Populate Start Time and End Time fields when editing an existing appointment.

### 🔜 Upcoming

- [ ] Add event selector change handling for selecting different events on the same date.
- [ ] Refine modal styling (`.modal`) using clean backdrop filters and fixed positioning.
- [ ] Add stronger JavaScript validation for event fields and date/time inputs.
- [ ] Test calendar behavior across different months, years, and edge cases.
- [ ] Polish responsive behavior and overall user interaction.
````
