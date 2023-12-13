<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\User;
use Illuminate\Support\Facades\Hash;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class UserFactory extends Factory
{
    protected $model = User::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'employee_id' => fake()->randomNumber(6),
            'name' => fake()->name(),
            'gender' => fake()->randomElement(['male','female']),
            'email' =>fake()->unique()->safeEmail(),
            'password' => Hash::make('password'), // password
            'department_id' => fake()->randomElement(['PRD','WHS','ENG']),
            'title_id' => fake()->randomElement(['OPT','SPV','MGR']),
        ];
    }
}
