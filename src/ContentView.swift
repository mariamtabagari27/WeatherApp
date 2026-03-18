import SwiftUI

// Weather model
struct Weather: Identifiable {
    var id = UUID()
    var city: String
    var temperature: Double
    var condition: String
}

// Main content view
struct ContentView: View {
    var weather: Weather

    var body: some View {
        VStack {
            CityTextView(city: weather.city)
            MainWeatherStatusView(temperature: weather.temperature, condition: weather.condition)
            WeatherButton()
        }
        .background(BackgroundView())
    }
}

// Component view for city text
struct CityTextView: View {
    var city: String

    var body: some View {
        Text(city)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
    }
}

// Component view for main weather status
struct MainWeatherStatusView: View {
    var temperature: Double
    var condition: String

    var body: some View {
        VStack {
            Text("Temperature: \(temperature, specifier: \"%.1f\") °C")
            Text(condition)
                .font(.title2)
        }
    }
}

// Component view for weather button
struct WeatherButton: View {
    var body: some View {
        Button(action: {
            // Add action here
        }) {
            Text("Refresh Weather")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

// Component view for background
struct BackgroundView: View {
    var body: some View {
        Color.blue.opacity(0.3)
            .edgesIgnoringSafeArea(.all)
    }
}