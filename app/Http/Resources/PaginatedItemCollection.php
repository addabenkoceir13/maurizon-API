<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class PaginatedItemCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */

     /**
     * The resource that this resource collects.
     *
     * @var string
     */
      public $collects = ItemResource::class;
    public function toArray($request)
    {
      return [

        'data' => $this->collection,
        'meta' => [
          'current_page' => $this->currentPage(),
          'last_page' => $this->lastPage(),
          'per_page' => $this->perPage(),
          'total' => $this->total(),
          'count' => $this->count(),
        ]

      ];
    }
}