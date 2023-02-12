<?php

namespace App\Message;

class CommentMessage
{
    private $id;
    private  $context;

    public function __construct($id, $context)
    {
        $this->id = $id;
        $this->context = $context;
    }

    /**
     * @return mixed
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getContext(): array
    {
        return $this->context;
    }


}