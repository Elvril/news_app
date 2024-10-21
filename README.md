# News App

The News App is a Flutter-based mobile application designed to provide users with quick access to the latest news articles from a variety of categories. The app features an intuitive interface that allows users to navigate seamlessly through different news topics and search for articles with ease. It fetches data from the [News API](https://newsapi.org), a powerful API that aggregates news articles from various sources worldwide.

## link to Download the App
- link: https://drive.google.com/file/d/1_GibhyBed2mOY1525a4xdshxBC5Ufkyh/view?usp=sharing 

## Preview 

<img src="https://github.com/user-attachments/assets/65fff0e4-5a52-4390-a5c7-09f9d1dc2928" alt="Screenshot" width="20%" height="20%" />
<img src="https://github.com/user-attachments/assets/d76dced8-9146-417c-a5bf-95b6f5cfe83a" alt="Screenshot" width="20%" height="20%" />
<img src="https://github.com/user-attachments/assets/603b7681-bf47-40eb-9fe9-186c901ae12d" alt="Screenshot" width="20%" height="20%" />
<img src="https://github.com/user-attachments/assets/a4b74068-975e-409f-be72-49fd8dad86e0" alt="Screenshot" width="20%" height="20%" />
<img src="https://github.com/user-attachments/assets/b0fa93c6-eec2-4d63-b000-395d70d9b24b" alt="Screenshot" width="20%" height="20%" />
<img src="https://github.com/user-attachments/assets/04c86f7a-3c7d-436b-b24f-f47104c56045" alt="Screenshot" width="20%" height="20%" />
<img src="https://github.com/user-attachments/assets/3eacc04c-4bc6-4239-8395-78745479bbfe" alt="Screenshot" width="20%" height="20%" />


## Features

### 1. Latest Articles by Category
The app showcases the most recent articles from multiple categories. This categorization helps users quickly find news relevant to their interests.

### 2. Dynamic Search Functionality
Users can perform keyword searches to find specific articles. The search results can be filtered by:
- **Date**: Pick a specific date using a date picker.
- **Popularity**: Sort articles by relevancy, popularity, or publication date.
- **Sources**: Filter articles by specific news sources.

### 3. Pagination Support
The app implements pagination to manage large sets of articles efficiently, allowing users to load more articles as they scroll through the list.

### 4. Error Handling
Comprehensive error handling ensures users receive informative feedback if API requests fail or if there are connectivity issues. This improves the overall user experience by providing clear guidance on any problems.

### 5. Offline Caching
Articles are stored locally using Hive, enabling users to access previously fetched articles without an internet connection. The app displays cached data while new articles are being loaded, preventing unnecessary reloads and enhancing performance.

### 6. Open Links Externally
With the help of the `url_launcher` package, users can easily open article links in their default web browser for an enriched reading experience.

## Packages Used
- **flutter_riverpod**: For state management, allowing for a reactive and maintainable codebase.
- **dio**: For making HTTP requests, providing a robust and flexible way to interact with APIs.
- **flutter_dotenv**: For managing environment variables, allowing you to store sensitive information like API keys securely.
- **internet_connection_checker_plus**: For monitoring internet connectivity status, enhancing user experience by managing errors and notifications effectively.
- **hive_flutter**: For local data storage, enabling efficient caching of news articles.
- **go_router**: For seamless navigation and routing.
- **google_fonts**: To incorporate custom fonts for a better visual appeal.
- **freezed**: For creating immutable data classes with enhanced type safety.
- **json_annotation**: To simplify the process of JSON serialization and deserialization.
- **url_launcher**: To facilitate the opening of external links in the default browser.

## News API
The app uses the [News API](https://newsapi.org), which provides access to real-time news articles from a variety of sources. You can sign up for an API key on the News API website to access the service.

## Environment Variables
To use the app, you will need to set up your own API key for the News API. Here’s how:

1. Create a `.env` file in the root directory of your project.
2. Add your API key using the following format:

    ```makefile
    API_KEY=your_news_api_key
    ```

3. Ensure that your `.env` file is listed in your `.gitignore` to protect sensitive information.

## How to Get Started
1. Clone the repository to your local machine.
2. Run `flutter pub get` to install the required packages.
3. Set up your `.env` file as instructed above.
4. Launch the app using `flutter run`.

