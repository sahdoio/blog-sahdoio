<?php

namespace App\Livewire;

use Livewire\Component;

class Coming extends Component
{
    public $title = 'Post title...';

    public function render()
    {
        return view('livewire.coming');
    }
}
