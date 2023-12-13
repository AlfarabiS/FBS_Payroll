<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\JobTitle;

class JobTitleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        JobTitle::create([
            'title_id' => 'OPT',
            'title_name' => 'Operator',
        ]);

        JobTitle::create([
            'title_id' => 'SPV',
            'title_name' => 'Supervisor',
        ]);
        JobTitle::create([
            'title_id' => 'MGR',
            'title_name' => 'Manager',
        ]);
    }
}
