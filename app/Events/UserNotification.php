<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class UserNotification implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $userId;
    public $message;

    /**
     * Create a new event instance.
     */
    public function __construct(string $message, int $userId)
    {
        $this->userId = $userId;
        $this->message = $message;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return array<int, \Illuminate\Broadcasting\Channel>
     */
    public function broadcastOn(): array
    {
        // User-specific channel
        return [
            new PrivateChannel('App.Models.User.' . $this->userId),
        ];
        // return [
        //     new PrivateChannel('channel-name'),
        // ];
    }

    public function broadcastAs(): string
    {
        return 'user.notification';
    }

    public function broadcastWith(): array
    {
        return [
            'message' => $this->message
        ];
    }
}
