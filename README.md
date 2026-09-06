# 📅 Google Calendar Clone

A sleek and interactive Google Calendar clone built using **HTML5, CSS3, JavaScript, PHP, and MySQL**.

The application is designed to manage and display course schedules, instructor assignments, appointment dates, and appointment time slots through a dynamic calendar interface.

The project includes a responsive calendar grid, real-time digital clock, appointment CRUD functionality, interactive modals, multi-day event support, time-slot management, and persistent MySQL database storage.

---

## 🚀 Project Overview

The Google Calendar Clone provides a complete appointment scheduling workflow where users can:

- View appointments directly inside a dynamic calendar.
- Navigate between previous and next months.
- Add new appointments to specific calendar dates.
- Edit existing appointments.
- Delete appointments with confirmation.
- Assign courses and instructors to appointments.
- Define appointment start and end dates.
- Define appointment start and end times.
- Display appointment information directly inside calendar cells.
- Manage multiple events occurring on the same date.
- View a continuously updating digital clock.
- Store appointment information persistently using MySQL.

The project is now **complete**, with the frontend interface, JavaScript interaction logic, PHP backend, and MySQL persistence working together as one application.

---

# ✨ Features

## 📅 Dynamic Calendar

- Dynamically generates the calendar grid using JavaScript.
- Calculates the total number of days in the selected month.
- Calculates the weekday on which the month begins.
- Automatically creates the required leading blank cells.
- Generates weekday headers from Sunday through Saturday.
- Displays the active month and year dynamically.
- Highlights the current date using the `.today` class.
- Re-renders the calendar when navigating between months.
- Supports different month lengths and calendar starting weekdays.

## 🧭 Calendar Navigation

- Previous-month navigation button.
- Next-month navigation button.
- Uses a reusable `changeMonth()` JavaScript function.
- Automatically re-renders the calendar after month navigation.
- Maintains the currently displayed month through the `currentDate` variable.

## ⏰ Real-Time Digital Clock

- Displays a live digital clock above the calendar.
- Uses JavaScript's `Date` object.
- Displays hours, minutes, and seconds.
- Formats time values using two-digit formatting with `padStart()`.
- Automatically updates every second using `setInterval()`.

## 📌 Appointment Management

The application supports complete appointment management functionality.

### ➕ Add Appointment

Users can create a new appointment containing:

- Course Title
- Instructor Name
- Start Date
- End Date
- Start Time
- End Time

The selected calendar date is automatically assigned as the default start and end date when creating an appointment.

Default start and end times are also provided when opening the Add Event modal.

### ✏️ Edit Appointment

Users can edit existing appointments through the interactive modal.

The edit workflow:

- Identifies the selected appointment.
- Loads its stored information into the form.
- Populates the course title.
- Populates the instructor name.
- Populates the start date.
- Populates the end date.
- Populates the start time.
- Populates the end time.
- Preserves the appointment ID for database updating.

### 🗑️ Delete Appointment

Appointments can be deleted directly through the modal.

The deletion workflow:

- Identifies the selected appointment ID.
- Sends the delete operation to PHP through a POST request.
- Uses a confirmation prompt before deletion.
- Removes the appointment from the MySQL database.
- Displays a successful deletion message after completion.

## 📝 Appointment Modal

The application uses a centralized modal interface for appointment management.

The modal includes:

- Course Title input.
- Instructor Name input.
- Start Date input.
- End Date input.
- Start Time input.
- End Time input.
- Save button.
- Delete button.
- Cancel button.
- Event selector for dates containing multiple appointments.

The form uses HTML5 validation through required fields and appropriate input types such as `date` and `time`.

## 🔀 Multiple Event Selection

The application supports multiple appointments occurring on the same calendar date.

When more than one event exists on a date:

- An event selector is displayed.
- Each appointment is added as a selectable option.
- Complete event objects are stored using `JSON.stringify()`.
- The selected event is retrieved using `JSON.parse()`.
- The corresponding appointment information is loaded into the edit form.

This allows users to select and manage individual appointments even when multiple events share the same date.

## 📚 Course & Instructor Display

Calendar events display:

- Course name.
- Instructor name.
- Appointment start time.
- Appointment end time.

Stored event information is separated into course and instructor components before being rendered into the calendar interface.

## ⏱️ Time Slot Support

Appointment scheduling includes dedicated time-slot support.

### Database

The `appointments` table contains:

- `start_time`
- `end_time`

Both fields use the MySQL `TIME` datatype.

### Frontend

The appointment form uses:

```html
<input type="time">
```

Both start and end times are required.

### Calendar

The event display includes the complete time range:

```text
⏰ Start Time - End Time
```

This allows the calendar to represent not only **when an appointment occurs**, but also **the duration of the appointment**.

## 📆 Multi-Day Appointments

Appointments can span multiple dates.

The PHP backend:

1. Retrieves the appointment start date.
2. Retrieves the appointment end date.
3. Converts both dates into PHP `DateTime` objects.
4. Iterates through the complete date range.
5. Creates an event representation for every date within the range.
6. Preserves the original appointment ID and appointment information.

This allows a single multi-day appointment to appear across all relevant calendar dates.

## 🔐 PHP & MySQL CRUD

The backend implements complete CRUD functionality using PHP and MySQL.

### Create

Appointments are inserted into MySQL using prepared statements.

### Read

Appointments are retrieved from the database and converted into event objects for JavaScript.

### Update

Existing appointments can be updated using their appointment ID.

### Delete

Appointments can be permanently removed from the database using their ID.

The PHP backend uses:

- `prepare()`
- `bind_param()`
- `execute()`
- Input trimming.
- Basic required-field validation.

Parameterized queries are used for database operations to provide safer SQL handling.

## 💬 Success & Error Messages

The application provides feedback after database operations.

### Successful operations

- Appointment added successfully.
- Appointment updated successfully.
- Appointment deleted successfully.

### Error handling

The application displays an error message when an appointment operation fails validation.

Success and error messages are passed through query-string status parameters and displayed by the PHP interface.

## 🎨 User Interface & Styling

The interface uses a modern calendar-inspired design.

### Styling features

- CSS custom properties.
- Consistent blue color palette.
- Responsive calendar grid.
- Event cards.
- Rounded borders.
- Shadows.
- Hover effects.
- Button animations.
- Success and error alert states.
- Calendar navigation controls.
- Modal interface.
- Event metadata styling.
- Reduced-motion accessibility support.

## 📱 Responsive Design

The calendar is designed to work across different screen sizes.

### Desktop

- Seven-column calendar grid.
- Full-width calendar layout.
- Clear event information hierarchy.

### Mobile & Tablet

- Responsive calendar behavior.
- Horizontal scrolling where necessary.
- Scroll-snapping support.
- Prevents calendar content from becoming compressed or overflowing.

---

# 🛠️ Tech Stack

## Frontend

- **HTML5**
- **CSS3**
- **JavaScript**
- CSS Custom Properties
- Responsive CSS Grid
- HTML5 form validation

## Backend

- **PHP**
- PHP `DateTime`
- PHP prepared statements
- POST request handling

## Database

- **MySQL**
- MySQL `DATE`
- MySQL `TIME`
- Persistent appointment storage

## Development Environment

- **XAMPP**
- Apache
- MySQL
- Visual Studio Code
- Git & GitHub

---

# 📂 Project Structure

```text
├── index.php                 # Main application interface and appointment modal
├── style.css                 # Calendar, modal, event, and responsive styling
├── script.js                 # Dynamic calendar rendering and JavaScript interaction logic
├── connection.php             # MySQL database connection
├── calendar.php               # PHP appointment CRUD and event retrieval logic
├── mysql-scripts/
│   ├── 1-schema.sql           # Initial database and appointments table schema
│   └── 2-alter-table.sql      # Adds Start Time and End Time columns
└── README.md                  # Project documentation
```

---

# ⚙️ Installation & Local Setup

To run the project locally, you will need a local development environment such as:

- XAMPP
- MAMP
- Laragon

## 1. Clone the repository

Clone the project into your local server directory.

For XAMPP, this will normally be:

```text
C:\xampp\htdocs\
```

Example:

```bash
git clone https://github.com/your-username/google-calendar-clone.git
```

## 2. Start Apache and MySQL

Open the XAMPP Control Panel and start:

```text
Apache
MySQL
```

## 3. Create the Database

Create the required database and appointments table using:

```text
mysql-scripts/1-schema.sql
```

## 4. Apply the Time Slot Update

Run:

```text
mysql-scripts/2-alter-table.sql
```

This adds:

```text
start_time
end_time
```

to the `appointments` table.

## 5. Configure the Database Connection

Update the database credentials in:

```text
connection.php
```

according to your local MySQL configuration.

## 6. Run the Application

Open the application in your browser:

```text
http://localhost/google-calendar-clone/index.php
```

---

# 🔄 Application Workflow

The complete application workflow is:

```text
User
 │
 ▼
Calendar Interface
 │
 ├── Navigate Month
 ├── Add Appointment
 ├── Edit Appointment
 └── Delete Appointment
 │
 ▼
JavaScript
 │
 ▼
PHP Backend
 │
 ├── Create
 ├── Read
 ├── Update
 └── Delete
 │
 ▼
MySQL Database
 │
 ▼
PHP Event Processing
 │
 ▼
JavaScript Event Data
 │
 ▼
Dynamic Calendar Rendering
```

---

# 🧩 Completed Development Milestones

## Phase 1 — Project Structure

- [x] Created semantic HTML5 calendar structure.
- [x] Created responsive CSS layout.
- [x] Created JavaScript calendar logic.
- [x] Added calendar navigation interface.
- [x] Added modal interface.

## Phase 2 — Dynamic Calendar

- [x] Calculate total days in a month.
- [x] Calculate first weekday of a month.
- [x] Generate leading blank cells.
- [x] Generate weekday headers.
- [x] Generate calendar dates dynamically.
- [x] Highlight the current date.
- [x] Implement previous/next month navigation.
- [x] Re-render calendar when the month changes.

## Phase 3 — Appointment System

- [x] Create MySQL appointments table.
- [x] Implement PHP database connection.
- [x] Implement appointment creation.
- [x] Implement appointment retrieval.
- [x] Implement appointment editing.
- [x] Implement appointment deletion.
- [x] Add success messages.
- [x] Add error messages.
- [x] Add deletion confirmation.

## Phase 4 — JavaScript Interaction

- [x] Render stored events inside calendar cells.
- [x] Display course information.
- [x] Display instructor information.
- [x] Display appointment times.
- [x] Add `+ Add` buttons.
- [x] Add `Edit` buttons.
- [x] Implement Add Event modal.
- [x] Implement Edit Event modal.
- [x] Implement modal closing.
- [x] Implement multiple-event selection.
- [x] Populate the edit form from selected events.
- [x] Use `JSON.stringify()` for event selector data.
- [x] Use `JSON.parse()` when retrieving selected event data.
- [x] Prevent unwanted event propagation using `stopPropagation()`.

## Phase 5 — Time Slot Support

- [x] Add `start_time` database column.
- [x] Add `end_time` database column.
- [x] Use MySQL `TIME` datatype.
- [x] Add Start Time input.
- [x] Add End Time input.
- [x] Add HTML5 `type="time"` validation.
- [x] Store appointment times through PHP.
- [x] Retrieve appointment times from MySQL.
- [x] Transfer appointment times to JavaScript.
- [x] Display time ranges inside calendar events.
- [x] Improve event time styling.

## Phase 6 — Multi-Day Events

- [x] Support appointment start and end dates.
- [x] Convert date values to PHP `DateTime` objects.
- [x] Expand multi-day appointments into individual calendar events.
- [x] Preserve appointment information across the complete date range.

## Phase 7 — Final Interface

- [x] Implement final appointment modal.
- [x] Implement event selector.
- [x] Implement Save functionality.
- [x] Implement Delete functionality.
- [x] Implement Cancel functionality.
- [x] Add real-time digital clock.
- [x] Connect JavaScript event data with PHP-generated data.
- [x] Integrate the complete frontend and backend workflow.
- [x] Complete responsive calendar styling.
- [x] Complete appointment management workflow.

---

# ✅ Project Status

**Project Status: COMPLETE 🎉**

The Google Calendar Clone has completed its planned development stages.

The final application integrates:

```text
HTML5
   +
CSS3
   +
JavaScript
   +
PHP
   +
MySQL
```

into a complete calendar-based appointment management system.

The project successfully demonstrates:

- Dynamic frontend rendering.
- JavaScript DOM manipulation.
- Event-driven interaction.
- Responsive UI development.
- PHP backend processing.
- MySQL database integration.
- CRUD operations.
- Prepared SQL statements.
- Date and time handling.
- Multi-day event processing.
- Form validation.
- Modal-based user interaction.

---

# 🎯 Final Outcome

The completed application provides a functional calendar system for managing course schedules and appointments.

Users can create, view, update, and delete appointments while seeing their schedules directly within a dynamically generated calendar.

Each appointment can contain:

```text
Course
Instructor
Start Date
End Date
Start Time
End Time
```

The final system combines persistent database storage with dynamic JavaScript rendering to provide an interactive calendar experience.

---

## 📌 Project Completion

**Google Calendar Clone — Completed ✅**

Built with:

**HTML5 · CSS3 · JavaScript · PHP · MySQL**
