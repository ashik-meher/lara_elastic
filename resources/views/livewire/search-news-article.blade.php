<div>
    <!-- Search Card -->
    <div class="bg-white rounded-xl shadow-lg border border-gray-200 overflow-hidden mb-6">
        <!-- Search Header -->
        <div class="bg-gradient-to-r from-blue-50 to-indigo-50 px-6 py-4 border-b border-gray-200">
            <h3 class="text-lg font-semibold text-gray-800 flex items-center">
                <i class="fa-solid fa-magnifying-glass text-blue-600 mr-3"></i>
                Search for News
            </h3>
            <p class="text-sm text-gray-600 mt-1">Find news articles by title</p>
        </div>

        <!-- Search Form -->
        <div class="p-6">
            <div class="flex flex-col sm:flex-row gap-3">
                <div class="flex-1 relative">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <i class="fa-solid fa-search text-gray-400"></i>
                    </div>
                    <input type="text" wire:model.live="searchTerm" placeholder="Enter news title to search..."
                        class="w-full pl-10 pr-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-sm">
                </div>
                <button wire:click="search"
                    class="inline-flex items-center justify-center px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white rounded-lg text-sm font-medium transition-all duration-200 shadow-sm hover:shadow-md min-w-[120px]">
                    <div wire:loading wire:target="search" class="mr-2">
                        <i class="fa-solid fa-spinner fa-spin"></i>
                    </div>
                    <div wire:loading.remove wire:target="search">
                        <i class="fa-solid fa-search mr-2"></i>
                    </div>
                    Find
                </button>
            </div>

            <!-- Quick Search Suggestions -->
            <div class="mt-4">
                <p class="text-sm text-gray-600 mb-2">Quick searches:</p>
                <div class="flex flex-wrap gap-2">
                    <button wire:click="quickSearch('Technology')"
                        class="px-3 py-1 bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-full text-sm transition-colors">
                        Technology
                    </button>
                    <button wire:click="quickSearch('Sports')"
                        class="px-3 py-1 bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-full text-sm transition-colors">
                        Sports
                    </button>
                    <button wire:click="quickSearch('Business')"
                        class="px-3 py-1 bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-full text-sm transition-colors">
                        Business
                    </button>
                    <button wire:click="quickSearch('Health')"
                        class="px-3 py-1 bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-full text-sm transition-colors">
                        Health
                    </button>
                </div>
            </div>
        </div>
    </div>

    @if (count($newsArticles) > 0)
        <!-- Search Results -->
        <div class="bg-white rounded-xl shadow-lg border border-gray-200 overflow-hidden">
            <!-- Results Header -->
            <div class="bg-gradient-to-r from-gray-50 to-gray-100 px-6 py-4 border-b border-gray-200">
                <div class="flex items-center justify-between">
                    <div>
                        <h3 class="text-lg font-semibold text-gray-800">Search Results</h3>
                        <p class="text-sm text-gray-600 mt-1">{{ count($newsArticles) }} article(s) found @if ($searchTerm)
                                for "{{ $searchTerm }}"
                            @endif
                        </p>
                    </div>
                    <div class="text-sm text-gray-500">
                        <i class="fa-solid fa-clock mr-1"></i>
                        Updated just now
                    </div>
                </div>
            </div>

            <!-- Results List -->
            <div class="divide-y divide-gray-200">
                @foreach ($newsArticles as $news)
                    <div class="p-6 hover:bg-gray-50 transition-colors duration-150">
                        <div class="flex items-start space-x-4">
                            <div class="flex-shrink-0">
                                <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center">
                                    <i class="fa-solid fa-newspaper text-blue-600"></i>
                                </div>
                            </div>
                            <div class="flex-1 min-w-0">
                                <div class="flex items-center justify-between mb-2">
                                    <h4
                                        class="text-lg font-semibold text-gray-900 hover:text-blue-600 transition-colors cursor-pointer">
                                        {{ $news->title }}
                                    </h4>
                                    <span class="text-sm text-gray-500">ID: {{ $news->id }}</span>
                                </div>
                                <p class="text-gray-700 text-sm mb-3 leading-relaxed">
                                    {{ Str::limit($news->body, 150) }}
                                </p>
                                <div class="flex items-center justify-between">
                                    <div class="flex items-center text-sm text-gray-500 space-x-4">
                                        <span class="flex items-center">
                                            <i class="fa-solid fa-calendar mr-1"></i>
                                            {{ $news->created_at ? $news->created_at->diffForHumans() : 'No date' }}
                                        </span>
                                        <span class="flex items-center">
                                            <i class="fa-solid fa-eye mr-1"></i>
                                            {{ rand(100, 2000) }} views
                                        </span>
                                    </div>
                                    <div class="flex items-center space-x-3">
                                        <button class="text-blue-600 hover:text-blue-800 transition-colors"
                                            title="View">
                                            <i class="fa-solid fa-eye"></i>
                                        </button>
                                        <button class="text-green-600 hover:text-green-800 transition-colors"
                                            title="Edit">
                                            <i class="fa-solid fa-edit"></i>
                                        </button>
                                        <button class="text-red-600 hover:text-red-800 transition-colors"
                                            title="Delete">
                                            <i class="fa-solid fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- Results Footer -->
            <div class="bg-gray-50 px-6 py-4 border-t border-gray-200">
                <div class="flex items-center justify-between">
                    <div class="text-sm text-gray-600">
                        Showing {{ count($newsArticles) }} of {{ count($newsArticles) }} results @if ($searchTerm)
                            for "{{ $searchTerm }}"
                        @endif
                    </div>
                    <button wire:click="clearSearch"
                        class="text-sm text-blue-600 hover:text-blue-800 transition-colors">
                        <i class="fa-solid fa-refresh mr-1"></i>
                        Clear Search
                    </button>
                </div>
            </div>
        </div>
    @elseif ($searchTerm !== '' && count($newsArticles) === 0)
        <!-- No Results State -->
        <div class="bg-white rounded-xl shadow-lg border border-gray-200 p-12 text-center">
            <div class="w-16 h-16 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fa-solid fa-search text-2xl text-gray-400"></i>
            </div>
            <h3 class="text-lg font-semibold text-gray-900 mb-2">No results found</h3>
            <p class="text-gray-600 mb-6">No articles found for "{{ $searchTerm }}". Try different keywords.</p>
            <button wire:click="clearSearch"
                class="inline-flex items-center bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg text-sm font-medium transition-all duration-200">
                <i class="fa-solid fa-refresh mr-2"></i>
                Clear Search
            </button>
        </div>
    @endif
</div>
