<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('email')->unique();
            $table->string('password');
            $table->string('token')->nullable();
            $table->timestamps();
        });

        // Insert some stuff
        DB::table('users')->insert(
            array(
                'email' => 'admin@gmail.com',
                'password' => Hash::make('password'),
                'created_at' => date("Y-m-d 00:00:00"),
                'updated_at' => date("Y-m-d 00:00:00"),
            )
        );
        DB::table('users')->insert(
            array(
                'email' => 'vendor@gmail.com',
                'password' => Hash::make('vendor'),
                'created_at' => date("Y-m-d 00:00:00"),
                'updated_at' => date("Y-m-d 00:00:00"),
            )
        );
        DB::table('users')->insert(
            array(
                'email' => 'users@gmail.com',
                'password' => Hash::make('users'),
                'created_at' => date("Y-m-d 00:00:00"),
                'updated_at' => date("Y-m-d 00:00:00"),
            )
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
