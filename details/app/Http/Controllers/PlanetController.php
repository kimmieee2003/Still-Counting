<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Planet;
use App\Models\Solarsystem;

class PlanetController extends Controller

{

    private $planets = [
        [
            'name' => 'mars',
            'description' => 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury.'
        ],
        [
            'name' => 'venus',
            'description' => 'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty.'
        ],
        [
            'name' => 'earth',
            'description' => 'Our home planet is the third planet from the Sun, and the only place we know of so far thats inhabited by living things.'
        ]
    ];

    public function index() {
        $planets = Planet::with('Solarsystem')->get();
        return view("planets/index", ['planets' => $planets]);
    }

    public function show($name) {
        $planets = Planet::with('Solarsystem')->where('name', $name)->firstOrFail();
        return view("planets/show", ['planets' => [$planets]]);
    }
}
