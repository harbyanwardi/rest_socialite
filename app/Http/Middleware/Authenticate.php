<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use App\Models\oauth_access_token;
use Carbon\Carbon;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {

        if (! $request->expectsJson()) {
           
            $msg = 'Token invalid , Please Relogin';

           
            return 'api/loginfalse/'.$msg;
        }
    }

    
}
