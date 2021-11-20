<?php

namespace App\Http\Controllers;

use App\Models\RentModel;
use Illuminate\Http\Request;

class RentController extends Controller
{
    public function __construct()
    {

    }

    public function get(){

    }

    public function create(Request $request){
        $valid = $this->validate(
            $request,
            [
                'name' => 'required',
                'address' => 'required',
                'category' => 'required',
                'start_date' => 'required',
                'end_date' => 'required',
                'description' => 'required',
            ]
        );

        RentModel::create([
            'name' => $valid['name'],
            'address' => $valid['address'],
            'category' => $valid['category'],
            'start_date' => $valid['start_date'],
            'end_date' => $valid['end_date'],
            'description' => $valid['description'],
            'is_deleted' => false,
        ]);

        return response('sukses', 200);
    }

    public function update(Request $request, $id){
        $valid = $this->validate(
            $request,
            [
                'name' => 'required',
                'address' => 'required',
                'category' => 'required',
                'start_date' => 'required',
                'end_date' => 'required',
                'description' => 'required',
            ]
        );

        $event = RentModel::find($id);

        if($event != null){
            $event->name = $valid['name'];
            $event->address = $valid['address'];
            $event->category = $valid['category'];
            $event->start_date = $valid['start_date'];
            $event->end_date = $valid['end_date'];
            $event->description = $valid['description'];
            $event->is_deleted = false;
            $event->save();

            return response('sukses', 200);
        } else {
            return response('error', 500);
        }
    }

    public function delete($id){
        $event = RentModel::find($id);
        $id->is_deleted = true;
        $id->save();
    }
}
