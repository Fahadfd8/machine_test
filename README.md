Project Name
This Flutter application features a single-page home screen with five bottom navigation tabs for various tasks.

Tab 1: Dropdown Widget
Created a dropdown widget without utilizing plugins or third-party packages.
Dropdown Label: More Actions
List Items: View, Edit, Send, Delete
Delete text color: RED

Tab 2: Select Boxes with Dependency
Developed two select boxes with a dependency: "Country" and "State". Options of "State" update dynamically based on the selected "Country".
Countries: IN (India), US (United States), CA (Canada)
States:
IN (India): KA (Karnataka), KL (Kerala), TN (Tamil Nadu), MH (Maharashtra)
US (United States): AL (Alabama), DE (Delaware), GA (Georgia)
CA (Canada): ON (Ontario), QC (Quebec), BC (British Columbia)

Tab 3: DisplayName Widget
Implemented a widget to display the name of the user.
Widget Name: DisplayName
Attributes:
firstName: String
secondName: String
prefix: String
suffix: String
Output: prefix + firstName + secondName + suffix

Tab 4: ProfileInfo Widget
Developed a widget to display profile information of a specified user (userId). Utilized the DisplayName widget from Tab 3 to showcase the user's name. Data fetched from https://reqres.in/api/users/{userId}. Displays "Loading" while data loads. Layout resembles profile-component.png.
Widget Name: ProfileInfo
Attributes:
userId: Number

Tab 5: Flutter Router for User Profile
Implemented a Flutter router to display user profile data based on the user ID read from the URL. If the URL matches the pattern #/user/{userId}, the user ID is extracted and used to fetch and display the ProfileInfo widget from Tab 4 with the fetched user ID.
URL Entry Option: Allows entering a URL.
Behavior: If the URL matches #/user/{userId}, fetches userId and displays corresponding profile information.
