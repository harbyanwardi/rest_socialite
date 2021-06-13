<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Validator;
use Socialite;
use Hash;
use Str;

class UserController extends Controller
{
    public $successStatus = 200;

    public function login(Request $request){
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['token'] =  $user->createToken('nApp')->accessToken;
            return response()->json([
                    'statusCode' => 200,
                    'data'=>$success
                ], $this->successStatus);
        }
        else{
            return response()->json([
                'statusCode' => 401,
                'error'=>'Unauthorised'], 401);
        }
    }

     public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

   public function handleProviderCallback(Request $request, $provider)
    {
        try {
    
            $user = Socialite::driver($provider)->stateless()->user();
            // return response()->json([
            // 'statusCode' => 200,
            // 'data' => $user], 
            // $this->successStatus);
            if($provider == 'google') {
                $finduser = User::where('google_id', $user->id)->first();
            }
            elseif($provider == 'facebook') {
                $finduser = User::where('facebook_id', $user->id)->first();
            }
            
           
            if($finduser){
     
                $success['token'] =  $finduser->createToken('nApp')->accessToken;
                $success['name'] =  $finduser->name;

               return response()->json([
                    'statusCode' => 200,
                    'data'=>$success
                ], $this->successStatus);
            }else{
                if($provider == 'google') {
                    $newUser = User::create([
                        'name' => $user->name,
                        'email' => $user->email,
                        'google_id'=> $user->id,
                        
                    ]);
                }
                elseif($provider == 'facebook') {
                    $newUser = User::create([
                        'name' => $user->name,
                        'email' => $user->email,
                        'facebook_id'=> $user->id,
                        
                    ]);
                }
                
    
               
                $success['token'] =  $newUser->createToken('nApp')->accessToken;
                $success['name'] =  $newUser->name;

                return response()->json([
                    'statusCode' => 200,
                    'data'=>$success
                ], $this->successStatus);
            }
    
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('nApp')->accessToken;
        $success['name'] =  $user->name;

        return response()->json(['success'=>$success], $this->successStatus);
    }

    public function details(Request $request)
    {
        $user = Auth::user();
        return response()->json([
        	'statusCode' => 200,
        	'data' => $user], 
        	$this->successStatus);
    }
}
