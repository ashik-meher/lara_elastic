<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <style>
        .toast {
            transform: translateX(-100%);
            transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out;
        }

        .toast.show {
            transform: translateX(0);
        }

        .toast.hide {
            transform: translateX(-100%);
            opacity: 0;
        }

        .spinner {
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }

        .form-disabled input,
        .form-disabled textarea {
            background-color: #f9fafb;
            color: #6b7280;
            cursor: not-allowed;
        }
    </style>
</head>

<body class="font-sans antialiased">
    <div class="min-h-screen bg-gray-100 dark:bg-gray-900">
        @include('layouts.navigation')

        <!-- Page Heading -->
        @isset($header)
            <header class="bg-white dark:bg-gray-800 shadow">
                <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                    {{ $header }}
                </div>
            </header>
        @endisset

        <!-- Page Content -->
        <main>
            {{ $slot }}
        </main>
    </div>
    <!-- Toast Container -->
    <div id="toast-container" class="fixed bottom-4 left-4 z-50 space-y-2"></div>

    <script>
        // Assume user ID is available (e.g., from auth or prop)
        const userId = "{{ auth()->id() ?? 1 }}";
        // Replace with actual user ID

        // Subscribe to private channel (authenticates via /broadcasting/auth)
        window.Echo.private(`App.Models.User.${userId}`)
            .listen('user.notification', (e) => {
                // Handle the event
                const notificationDiv = document.createElement('div');
                notificationDiv.innerHTML = `<p>New notification: ${e.message}</p>`;
                notificationDiv.style.border = '1px solid #ccc';
                notificationDiv.style.padding = '10px';
                notificationDiv.style.margin = '5px 0';
                document.getElementById('notifications').appendChild(notificationDiv);

                // Optional: Play sound or show toast
                console.log('Notification received:', e);
            });

        // Handle connection
        window.Echo.connector.pusher.connection.bind('connected', () => {
            console.log('Connected to Reverb WebSocket');
        });
    </script>

    @stack('scripts')
    <div id="notifications"></div> <!-- Where notifications appear -->



</body>

</html>
