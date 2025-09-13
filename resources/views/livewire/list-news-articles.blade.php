<div>
    <div class="grid grid-cols-2 gap-1 my-4">
        <p class="text-xl font-semibold text-gray-800">List News</p>
        <div class="text-right">
            <button onclick="openModal()"
                class="inline-flex items-center bg-blue-500 hover:bg-blue-600 border border-blue-500 px-4 py-2 rounded-lg text-white text-[13px] transition-all duration-200 shadow-sm hover:shadow-md">
                <i class="fa-solid fa-square-plus mr-2"></i>Add News
            </button>
        </div>
    </div>

    @if ($newsArticles->count() > 0)
        <div class="bg-white rounded-xl shadow-lg border border-gray-200 overflow-hidden">
            <!-- Card Header -->
            <div class="bg-gradient-to-r from-gray-50 to-gray-100 px-6 py-4 border-b border-gray-200">
                <h3 class="text-lg font-semibold text-gray-800">News Articles</h3>
                <p class="text-sm text-gray-600 mt-1">{{ $newsArticles->count() }} article(s) found</p>
            </div>

            <!-- Table -->
            <table class="w-full text-sm">
                <thead class="bg-gray-50 border-b border-gray-200">
                    <tr>
                        <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">#SL
                        </th>
                        <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Title</th>
                        <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            News</th>
                        <th class="px-6 py-4 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                            Actions</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    @foreach ($newsArticles as $index => $newsArticle)
                        <tr class="hover:bg-gray-50 transition-colors duration-150">
                            <td class="px-6 py-4 whitespace-nowrap">
                                <div
                                    class="flex items-center justify-center w-8 h-8 bg-blue-100 text-blue-600 rounded-full text-sm font-semibold">
                                    {{ $newsArticle->id }}
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="text-sm font-medium text-gray-900">{{ $newsArticle->title }}</div>
                                <div class="text-sm text-gray-500">
                                    {{ $newsArticle->created_at ? $newsArticle->created_at->diffForHumans() : 'No date' }}
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="text-sm text-gray-900 max-w-xs">
                                    {{ Str::limit($newsArticle->body, 100) }}
                                </div>
                            </td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                <div class="flex items-center space-x-3">
                                    <button class="text-blue-600 hover:text-blue-800 transition-colors" title="View">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                    <button class="text-green-600 hover:text-green-800 transition-colors"
                                        title="Edit">
                                        <i class="fa-solid fa-edit"></i>
                                    </button>
                                    <button class="text-red-600 hover:text-red-800 transition-colors" title="Delete">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <!-- Table Footer -->
            <div class="bg-gray-50 px-6 py-3 border-t border-gray-200">
                <div class="text-sm text-gray-600">
                    Total: {{ $newsArticles->count() }} articles
                </div>
            </div>
        </div>
    @else
        <div class="bg-white rounded-xl shadow-lg border border-gray-200 p-12 text-center">
            <div class="w-16 h-16 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fa-solid fa-newspaper text-2xl text-gray-400"></i>
            </div>
            <h3 class="text-lg font-semibold text-gray-900 mb-2">No news articles found</h3>
            <p class="text-gray-600 mb-6">Get started by creating your first news article.</p>
            <a href="#"
                class="inline-flex items-center bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg text-sm font-medium transition-all duration-200">
                <i class="fa-solid fa-square-plus mr-2"></i>
                Add First Article
            </a>
        </div>
    @endif


    <!-- Modal Overlay -->
    <div id="modal-overlay"
        class="fixed inset-0 bg-black bg-opacity-50 backdrop-blur-sm z-40 hidden opacity-0 transition-opacity duration-300">
    </div>

    <!-- Add News Modal -->
    <div id="add-news-modal" class="fixed inset-0 z-50 overflow-y-auto hidden">
        <div class="flex items-center justify-center min-h-screen px-4 pt-4 pb-20 text-center sm:block sm:p-0">
            <!-- Modal Panel -->
            <div class="inline-block w-full max-w-2xl p-0 my-8 overflow-hidden text-left align-middle transition-all transform bg-white shadow-2xl rounded-2xl opacity-0 scale-95"
                id="modal-panel">
                <!-- Modal Header -->
                <div class="bg-gradient-to-r from-blue-600 to-indigo-600 px-6 py-4">
                    <div class="flex items-center justify-between">
                        <div class="flex items-center">
                            <div
                                class="w-10 h-10 bg-white bg-opacity-20 rounded-lg flex items-center justify-center mr-3">
                                <i class="fa-solid fa-newspaper text-white"></i>
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-white">Add New Article</h3>
                                <p class="text-blue-100 text-sm">Create a new news article</p>
                            </div>
                        </div>
                        <button onclick="closeModal()" class="text-white hover:text-gray-200 transition-colors p-1">
                            <i class="fa-solid fa-times text-xl"></i>
                        </button>
                    </div>
                </div>

                <!-- Modal Body -->
                <form id="addNewsForm" action="{{ route('news-articles.store') }}" method="POST">
                    @csrf
                    <div class="px-6 py-6">
                        <!-- Title Field -->
                        <div class="mb-6">
                            <label for="title" class="block text-sm font-semibold text-gray-700 mb-2">
                                <i class="fa-solid fa-heading mr-2 text-blue-600"></i>
                                Article Title *
                            </label>
                            <input type="text" id="title" name="title" required
                                placeholder="Enter the article title..."
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-sm">
                            <div class="text-red-500 text-sm mt-1 hidden" id="title-error">Title is required</div>
                        </div>

                        <!-- Body Field -->
                        <div class="mb-6">
                            <label for="body" class="block text-sm font-semibold text-gray-700 mb-2">
                                <i class="fa-solid fa-align-left mr-2 text-blue-600"></i>
                                Article Content *
                            </label>
                            <textarea id="body" name="body" rows="8" required placeholder="Write your article content here..."
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-sm resize-vertical"></textarea>
                            <div class="text-red-500 text-sm mt-1 hidden" id="body-error">Content is required</div>
                            <div class="text-gray-500 text-sm mt-1">
                                <span id="char-count">0</span> characters
                            </div>
                        </div>

                        <!-- Additional Options -->
                        <div class="mb-6">
                            <div class="flex items-center space-x-6">
                                <label class="flex items-center">
                                    <input type="checkbox" name="published" id="publish-immediately"
                                        class="w-4 h-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500">
                                    <span class="ml-2 text-sm text-gray-700">Publish immediately</span>
                                </label>
                                <label class="flex items-center">
                                    <input type="checkbox" name="send_notification" id="send-notification"
                                        class="w-4 h-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500">
                                    <span class="ml-2 text-sm text-gray-700">Send notification</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- Modal Footer -->
                    <div
                        class="bg-gray-50 px-6 py-4 border-t border-gray-200 flex items-center justify-between rounded-b-2xl">
                        <div class="text-sm text-gray-600">
                            <i class="fa-solid fa-info-circle mr-1"></i>
                            All fields marked with * are required
                        </div>
                        <div class="flex items-center space-x-3">
                            <button type="button" onclick="closeModal()"
                                class="px-4 py-2 text-sm font-medium text-gray-700 bg-white border border-gray-300 rounded-lg hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-gray-500 transition-all duration-200">
                                <i class="fa-solid fa-times mr-2"></i>Cancel
                            </button>
                            <button type="submit"
                                class="px-6 py-2 text-sm font-medium text-white bg-blue-600 border border-transparent rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 transition-all duration-200">
                                <i class="fa-solid fa-save mr-2"></i>Save Article
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- -->
</div>

@push('scripts')
    <script>
        // Toast Functions
        function showToast(message, type = 'info', duration = 0) {
            const container = document.getElementById('toast-container');
            const toastId = 'toast-' + Date.now();

            const icons = {
                'processing': '<i class="fa-solid fa-spinner fa-spin text-blue-600"></i>',
                'success': '<i class="fa-solid fa-check-circle text-green-600"></i>',
                'error': '<i class="fa-solid fa-exclamation-circle text-red-600"></i>',
                'info': '<i class="fa-solid fa-info-circle text-blue-600"></i>'
            };

            const colors = {
                'processing': 'bg-white border-blue-200 text-gray-800',
                'success': 'bg-white border-green-200 text-gray-800',
                'error': 'bg-white border-red-200 text-gray-800',
                'info': 'bg-white border-blue-200 text-gray-800'
            };

            const toast = document.createElement('div');
            toast.id = toastId;
            toast.className = `toast flex items-center p-4 rounded-lg shadow-lg border-l-4 ${colors[type]} max-w-sm`;

            toast.innerHTML = `
                <div class="flex items-center">
                    <div class="flex-shrink-0 mr-3">
                        ${icons[type]}
                    </div>
                    <div class="flex-1">
                        <p class="text-sm font-medium">${message}</p>
                    </div>
                    ${type !== 'processing' ? `
                                                                                                                                                                                                                                        <button onclick="hideToast('${toastId}')" class="ml-2 text-gray-400 hover:text-gray-600">
                                                                                                                                                                                                                                            <i class="fa-solid fa-times text-sm"></i>
                                                                                                                                                                                                                                        </button>
                                                                                                                                                                                                                                        ` : ''}
                </div>
            `;

            container.appendChild(toast);

            // Show toast
            setTimeout(() => {
                toast.classList.add('show');
            }, 10);

            // Auto hide after duration (except for processing)
            if (duration > 0 && type !== 'processing') {
                setTimeout(() => {
                    hideToast(toastId);
                }, duration);
            }

            return toastId;
        }

        function hideToast(toastId) {
            const toast = document.getElementById(toastId);
            if (toast) {
                toast.classList.add('hide');
                setTimeout(() => {
                    toast.remove();
                }, 300);
            }
        }

        // Form State Management
        function setFormLoading(loading = true) {
            const form = document.getElementById('addNewsForm');
            const submitBtn = document.querySelector('#addNewsForm button[type="submit"]');
            const titleInput = document.getElementById('title');
            const bodyTextarea = document.getElementById('body');
            const checkboxes = document.querySelectorAll('#addNewsForm input[type="checkbox"]');

            if (loading) {
                // Disable form
                form.classList.add('form-disabled');
                titleInput.disabled = true;
                bodyTextarea.disabled = true;
                checkboxes.forEach(cb => cb.disabled = true);

                // Update submit button
                submitBtn.disabled = true;
                submitBtn.innerHTML = `
                    <i class="fa-solid fa-spinner fa-spin mr-2"></i>
                    Saving...
                `;
                submitBtn.classList.add('opacity-75', 'cursor-not-allowed');

            } else {
                // Enable form
                form.classList.remove('form-disabled');
                titleInput.disabled = false;
                bodyTextarea.disabled = false;
                checkboxes.forEach(cb => cb.disabled = false);

                // Reset submit button
                submitBtn.disabled = false;
                submitBtn.innerHTML = `
                    <i class="fa-solid fa-save mr-2"></i>
                    Save Article
                `;
                submitBtn.classList.remove('opacity-75', 'cursor-not-allowed');
            }
        }

        function resetForm() {
            document.getElementById('addNewsForm').reset();
            hideErrors();
            updateCharCount();
        }

        // Enhanced Form Submission
        document.getElementById('addNewsForm').addEventListener('submit', function(e) {
            e.preventDefault();

            if (!validateForm()) {
                return false;
            }
            var data = $('#addNewsForm').serialize();
            // Set loading state
            setFormLoading(true);

            // Show processing toast
            const processingToastId = showToast('Saving news article...', 'processing');

            console.log('serlizie:', data);

            $.ajax({
                url: "{{ url('news-articles') }}",
                method: 'POST',
                data: data,
                success: function(response) {
                    console.log(response);

                    // Hide processing toast
                    hideToast(processingToastId);

                    if (response.data.status === 'success') {
                        // Show success toast
                        showToast('News article saved successfully!', 'success', 4000);

                        // Reset form and close modal
                        setTimeout(() => {
                            resetForm();
                            setFormLoading(false);
                            closeModal();

                            // Emit Livewire event if using Livewire
                            // if (typeof Livewire !== 'undefined') {
                            //     Livewire.emit('newsAdded');
                            // }

                            @this.call('$refresh'); // If this is in a Livewire component
                        }, 500);

                    } else {
                        // Show error toast
                        showToast('Failed to save article. Please try again.', 'error', 4000);
                        setFormLoading(false);
                    }
                },
                error: function(xhr) {
                    console.log(xhr.responseJSON);

                    // Hide processing toast
                    hideToast(processingToastId);

                    // Show error toast with specific message
                    let errorMessage = 'An error occurred while saving';
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        errorMessage = xhr.responseJSON.message;
                    } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                        // Handle validation errors
                        const errors = Object.values(xhr.responseJSON.errors).flat();
                        errorMessage = errors[0] || errorMessage;
                    }

                    showToast(errorMessage, 'error', 5000);
                    setFormLoading(false);
                }
            });
        });

        // Enhanced Modal Functions
        function openModal() {
            const modal = document.getElementById('add-news-modal');
            const overlay = document.getElementById('modal-overlay');
            const panel = document.getElementById('modal-panel');

            modal.classList.remove('hidden');
            overlay.classList.remove('hidden');

            // Trigger animations
            setTimeout(() => {
                overlay.classList.remove('opacity-0');
                panel.classList.remove('opacity-0', 'scale-95');
                panel.classList.add('opacity-100', 'scale-100');
            }, 10);

            // Prevent body scroll
            document.body.style.overflow = 'hidden';

            // Focus on title input and reset form
            setTimeout(() => {
                resetForm();
                setFormLoading(false);
                document.getElementById('title').focus();
            }, 300);
        }

        function closeModal() {
            const modal = document.getElementById('add-news-modal');
            const overlay = document.getElementById('modal-overlay');
            const panel = document.getElementById('modal-panel');

            // Don't close if form is being submitted
            if (document.getElementById('addNewsForm').classList.contains('form-disabled')) {
                return;
            }

            // Trigger animations
            overlay.classList.add('opacity-0');
            panel.classList.add('opacity-0', 'scale-95');
            panel.classList.remove('opacity-100', 'scale-100');

            setTimeout(() => {
                modal.classList.add('hidden');
                overlay.classList.add('hidden');
                document.body.style.overflow = 'auto';

                // Reset form state
                resetForm();
                setFormLoading(false);
            }, 300);
        }

        // Prevent closing modal during form submission
        document.getElementById('modal-overlay').addEventListener('click', function(e) {
            if (!document.getElementById('addNewsForm').classList.contains('form-disabled')) {
                closeModal();
            }
        });
        // Prevent closing when clicking inside modal
        document.getElementById('modal-panel').addEventListener('click', function(e) {
            e.stopPropagation();
        });

        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape' && !document.getElementById('addNewsForm').classList.contains('form-disabled')) {
                closeModal();
            }
        });

        // Other existing functions (validateForm, hideErrors, updateCharCount, etc.)
        // ... keep your existing validation and utility functions ...
        // Form Validation
        function validateForm() {
            const title = document.getElementById('title').value.trim();
            const body = document.getElementById('body').value.trim();
            let isValid = true;

            hideErrors();

            if (title === '') {
                showError('title-error');
                isValid = false;
            }

            if (body === '') {
                showError('body-error');
                isValid = false;
            }

            return isValid;
        }

        function showError(errorId) {
            document.getElementById(errorId).classList.remove('hidden');
        }

        function hideErrors() {
            document.getElementById('title-error').classList.add('hidden');
            document.getElementById('body-error').classList.add('hidden');
        }

        // Character Counter
        function updateCharCount() {
            const body = document.getElementById('body').value;
            document.getElementById('char-count').textContent = body.length;
        }

        document.getElementById('body').addEventListener('input', updateCharCount);
        // Initialize character count
        updateCharCount();
    </script>

    <script>
        $(document).ready(function(e) {

            window.Echo.channel('example.channel').listen('user.notification', (e) => {
                console.log('chanell e:', e);
            })

            window.Echo.channel('example-channel')
                .listen('.user.notification', (e) => { // Note the `.` here
                    console.log('Notification received:', e);
                    alert(e.message);
                    // Display the notification on the page
                    const notificationDiv = document.createElement('div');
                    notificationDiv.innerHTML = `<p>New notification: ${e.message} at ${e.timestamp}</p>`;
                    document.getElementById('notifications').appendChild(notificationDiv);
                });

            // Echo.channel



            // Assume user ID is available (e.g., from auth or prop)
            const userSockId = "{{ auth()->user()->id ?? 1 }}";
            // Replace with actual user ID

            // Subscribe to private channel (authenticates via /broadcasting/auth)
            // window.Echo.private(`App.Models.User.${userSockId}`)
            //     .listen('user.notification', (e) => {
            //         console.log('aise:', e);
            //         // Handle the event
            //         const notificationDiv = document.createElement('div');
            //         notificationDiv.innerHTML = `<p>New notification: ${e.message}</p>`;
            //         notificationDiv.style.border = '1px solid #ccc';
            //         notificationDiv.style.padding = '10px';
            //         notificationDiv.style.margin = '5px 0';
            //         document.getElementById('notifications').appendChild(notificationDiv);

            //         // Optional: Play sound or show toast
            //         console.log('Notification received:', e);
            //     });

            // Handle connection
            window.Echo.connector.pusher.connection.bind('connected', () => {
                console.log('Connected to Reverb WebSocket');
            });
        })
    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            if (typeof window.Echo !== 'undefined') {
                window.Echo.channel('example.channel').listen('user.notification', (e) => {
                    console.log('channel e:', e);
                });
            } else {
                console.error('window.Echo is not defined.');
            }
        });
    </script>
@endpush
