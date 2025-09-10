<?php

namespace App\Services;

use Elastic\Elasticsearch\ClientBuilder;

class ElasticsearchService
{
    protected $client;

    public function __construct()
    {
        // Get Elasticsearch host and port from environment variables
        $host = env('ELASTICSEARCH_HOST', 'localhost');
        $port = env('ELASTICSEARCH_PORT', 9200);
        $scheme = env('ELASTICSEARCH_SCHEME', 'https');

        // Build the full host string
        $fullHost = "{$scheme}://{$host}:{$port}";

        // Initialize the Elasticsearch client with the single host string
        $clientBuilder =  ClientBuilder::create()
            ->setHosts([$fullHost]);
        $clientBuilder->setSSLVerification(false);

        // Add authentication credentials for the 'elastic' user
        $clientBuilder->setBasicAuthentication(env('ELASTICSEARCH_USER'), env('ELASTICSEARCH_PASSWORD'));

        $this->client = $clientBuilder->build();
    }

    // Method to index a document
    public function indexDocument(string $index, string $id, array $data)
    {
        $params = [
            'index' => $index,
            'id'    => $id,
            'body'  => $data,
        ];

        return $this->client->index($params);
    }

    // Method to search
    public function search(string $index, string $query, int $size = 10)
    {
        $params = [
            'index' => $index,
            'body'  => [
                'query' => [
                    'multi_match' => [
                        'query' => $query,
                        'fields' => ['title', 'body'],  // Boost title matches
                        'fuzziness' => 'AUTO',
                    ],
                ],
                'size' => $size,
            ],
        ];

        return $this->client->search($params);
    }

    // Add more methods as needed, e.g., delete, update
}
