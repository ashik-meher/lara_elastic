<div>
    <div class="grid grid-cols-2 gap-1 my-4">
        <p class="text-xl font-semibold text-gray-800">List News</p>
        <div class="text-right">
            <a href="#"
                class="inline-flex items-center bg-blue-500 hover:bg-blue-600 border border-blue-500 px-4 py-2 rounded-lg text-white text-[13px] transition-all duration-200 shadow-sm hover:shadow-md">
                <i class="fa-solid fa-square-plus mr-2"></i>Add News
            </a>
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
</div>
