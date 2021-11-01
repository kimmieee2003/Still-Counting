<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Planet;
use App\Models\Solarsystem;

class SolarSystemController  extends Controller

{

    public function index() {
        $solarsystems = Solarsystem::withCount('planets')->get();
        return view("solarsystems/index", ['solarsystems' => $solarsystems]);
    }

    public function show($name) {
        $solarsystems = Solarsystem::with('planets')->where('name', $name)->firstOrFail();
        return view("solarsystems/show", ['solarsystems' => [$solarsystems]]);
    }
}
