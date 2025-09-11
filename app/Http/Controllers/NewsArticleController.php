<?php

namespace App\Http\Controllers;

use App\Models\NewsArticle;
use Illuminate\Http\Request;
use App\Services\ElasticsearchService;
use Exception;
use Illuminate\Support\Facades\Log;
use App\Events\UserNotification;

class NewsArticleController extends Controller
{
    public function search()
    {
        // $newsArticles = NewsArticle::all();

        // try {
        //     $es = new ElasticsearchService();
        //     $query = "majak";
        //     $result = $es->search('news_articles', $query, 10);
        //     Log::info('Elasticsearch Search Response', ['query' => $query, 'result' => $result]);
        //     $ids = array_column($result['hits']['hits'] ?? [], '_id');
        //     $newsArticles = NewsArticle::whereIn('id', $ids)->get();

        //     return response()->json([
        //         'query' => $query,
        //         'total' => $result['hits']['total']['value'] ?? 0,
        //         'ids' => $ids,
        //         'articles' => $newsArticles,
        //          'raw' => $result, // Include raw response for debugging,
        //         'hits' => $result['hits']['hits'],
        //     ], 200);
        // } catch (Exception $ex) {
        //     Log::error('Elasticsearch Search Error', ['error' => $ex->getMessage()]);
        //     echo $ex->getMessage();
        // }
        return view('search');
    }

    public function index()
    {
        return view('news_article.index');
    }


    public function store(Request $request)
    {
        try {
            $request->validate([
                'title' => 'required|string|max:255',
                'body' => 'required|string',
            ]);

            $newsArticle = NewsArticle::create([
                'title' => $request->title,
                'body' => $request->body,
                'author_name' => 'Ashik',
                //'published' => $request->has('published'),

            ]);

            $es = new ElasticsearchService();
            $es->indexDocument(
                index: 'news_articles',
                // id: (string) $newsArticle->id,
                data: $newsArticle->toElasticsearchDocument()
            );

            $data = [
                'news_article_model' => $newsArticle,
                'status' => 'success',
                'message' => 'News Saved successfully'
            ];

            broadcast(new UserNotification('News Article Created', $request->user()->id))->toOthers();

            return response()->json(['data' => $data], 200);

            // return redirect()->back()->with('success', 'News article created successfully!');
        } catch (Exception $ex) {
            $errMsg =  $ex->getMessage();

            return response()->json(['err' => $errMsg, 'status' => 'error'], 400);
        }
    }
}


/**
 * Sample elastic resposne 
 */


//   "took": 2,
//   "timed_out": false,
//   "_shards": {
//     "total": 1,
//     "successful": 1,
//     "skipped": 0,
//     "failed": 0
//   },
//   "hits": {
//     "total": {
//       "value": 4,
//       "relation": "eq"
//     },
//     "max_score": 1.5649829,
//     "hits": [
//       {
//         "_index": "news_articles",
//         "_id": "1",
//         "_score": 1.5649829,
//         "_source": {
//           "title": "This is Laravel API data number 1",
//           "body": "kaise laga mera majak"
//         }
//       },
//       {
//         "_index": "news_articles",
//         "_id": "2",
//         "_score": 1.3780158,
//         "_source": {
//           "title": "laarvel api data second set",
//           "body": "kaise laga 22 mera majak"
//         }
//       },
//       {
//         "_index": "news_articles",
//         "_id": "5",
//         "_score": 1.2309549,
//         "_source": {
//           "title": "Hello API POst sob change",
//           "body": "haha kaise laga from postman majak"
//         }
//       },
//       {
//         "_index": "news_articles",
//         "_id": "6",
//         "_score": 1.2309549,
//         "_source": {
//           "title": "Hello API POst sob change 4 notun create",
//           "body": "haha kaise laga from postman majak"
//         }
//       }
//     ]
//   }
// }