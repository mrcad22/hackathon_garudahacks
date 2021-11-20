<?php

/** @var Laravel\Lumen\Routing\Router $router */

$router->group(
    [
        'namespace' => 'MUser',
        'as' => 'mUser',
        'prefix' => 'user',
    ],
    function () use ($router) {
        // resources
        $router->get(
            '/',
            [
                'as' => 'index',
                'uses' => 'MUserController@index',
            ]
        );
        $router->post(
            '/',
            [
                'as' => 'store',
                'uses' => 'MUserController@store',
            ]
        );
        $router->put(
            '/{id}',
            [
                'as' => 'update',
                'uses' => 'MUserController@update',
            ]
        );
        $router->delete(
            '/{id}',
            [
                'as' => 'destroy',
                'uses' => 'MUserController@destroy',
            ]
        );
    }
);
