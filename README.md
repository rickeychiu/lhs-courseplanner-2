# LHS CoursePlanner

CoursePlanner is a Swift iOS app that helps students organize and visualize a four-year high school course plan. Users can create and manage schedules, assign courses to different academic years, and quickly compare how their plans look across freshman through senior year. The app is designed to make long-term course planning more structured, visual, and less overwhelming.

> **Note:** This repository is a cleaner version of an older CoursePlanner repo. The original codebase became messy over time, and the newer persistence-related updates were also missing there. To avoid version control conflicts and keep the project history cleaner, I created this new repository and migrated the working code here. If needed, the original repo can be referenced for earlier iterations of the app.

---

## Features

- Create and manage multiple saved schedules
- View course plans across all four high school years
- Assign courses to specific slots within each year
- Browse a built-in course catalog with descriptions and metadata
- Organize courses by year level and department
- Color-coded course display for easier readability
- Persistent local schedule storage
- Simple SwiftUI-based interface designed for quick planning and editing

---

## How It Works

The app separates **static course catalog data** from **user-created schedule data**.

- The **course catalog** is built into the app and contains predefined course information such as:
  - course name
  - course ID
  - department
  - course type
  - grade eligibility
  - description

- A **schedule** represents a student’s personalized four-year course plan.
- Each schedule is divided into:
  - Freshman
  - Sophomore
  - Junior
  - Senior

Within each year, the user can tap a course slot to open a selection view and choose a course that fits that year. The selected course is then placed into the schedule and shown in the planner view.

The goal of the app is to make the course planning process more visual and interactive than a traditional spreadsheet or paper planning sheet.

---

## Built With

- **Swift**
- **SwiftUI**
- **Xcode**
- **Core Data** for local persistence
- Apple platform APIs for app structure and UI

---

## Project Structure

The app is organized around a few main ideas:

- **Planner UI**
  - displays each academic year
  - shows scheduled courses in a clear visual layout
  - handles navigation between schedules and years

- **Course Catalog**
  - stores built-in course data
  - includes metadata used to filter and display courses

- **Schedule Management**
  - supports multiple saved schedules
  - loads and saves user planning data locally

- **Persistence Layer**
  - keeps user-created schedules available between launches

---

## Why I Built It

I originally built CoursePlanner to simplify the high school course selection process. Planning a four-year schedule can be confusing, especially when students are trying to balance graduation requirements, electives, AP classes, and long-term goals. I wanted to build something that made that process easier to visualize and interact with.

This project also gave me a chance to work more deeply with iOS app architecture, state-driven UI, and local data persistence in Swift.

---

## What I Learned

Through this project, I gained experience with:

- building an interactive iOS app in SwiftUI
- structuring UI around state and reusable views
- modeling schedule and course data cleanly
- designing local persistence for user-created app data
- debugging data flow between UI state and saved state
- thinking about maintainability and app structure as the project evolved

---

## Future Improvements

Possible directions for future development include:

- search and filtering for courses
- prerequisite and recommendation checking
- graduation requirement tracking
- improved editing and drag-and-drop interactions
- support for cloud sync
- a more customizable or school-specific course catalog

---

## Author

**Rickey Chiu**  
Computer Science @ Columbia University
