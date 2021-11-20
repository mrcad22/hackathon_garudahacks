<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\dummy;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $events = [
            [
                'title'=>'IBSC 2021 – BUSINESS CASE COMPETITION',
                'address'=>'Bandung',
                'category'=>'Kompetisi',

                'Description'=>'We are very thrilled to inform that THE BIGGEST ANNUAL Business Case Competition is open for registration. In collaboration with one of the most well-known game developer in Southeast Asia, Garena Indonesia with this year’s theme: How to Create a Strong Player Management.
            Calling out all active diploma and bachelor degree students who are willing to challenge themselves and gain new experiences through IBSC!
            The HUGE PRIZE worth $2400 USD is waiting for you! Moreover, the Early Bird phase offer is LIMITED so go register your team IMMEDIATELY!!',

                'start_date'=>date("Y-m-d 00:00:00"),
                'end_date'=>date("Y-m-d 17:00:00"),
                'is_deleted'=>false
            ],
            [
                'title'=> 'Lomba Fotografi Festival Pahlawan 2021',
                'address'=>'Bandung',
                'category'=>'Kompetisi',

                'Description'=>'Lomba tidak dipungut biaya pendaftaran dan semua peserta lomba akan mendapatkan sertifikat, lho!',

                'start_date'=>date("Y-m-d 00:00:00"),
                'end_date'=>date("Y-m-d 17:00:00"),
                'is_deleted'=>false
            ],
        ];

        foreach ($events as $_events){
            DB::table('users')->insert(
                array(
                    'name' =>  $_events['name'],
                    'address' => $_events['address'],
                    'category' => $_events['category'],
                    'start_date' => $_events['start_date'],
                    'end_date' => $_events['end_date'],
                    'description' => $_events['description'],
                    'is_deleted' => false,
                )
            );
        }
    }
}
